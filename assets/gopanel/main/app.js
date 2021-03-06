
/* Nofications Area */
toastr.options = {
  "closeButton": true,
  "debug": true,
  "newestOnTop": true,
  "progressBar": true,
  "positionClass": "toast-top-right",
  "preventDuplicates": true,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}

/*  Tagsinput */
$(document).ready(function() {
  $('.tags').tagsInput({
    width: 'auto'
  });
});

function bytesToSize(bytes,decimals) {
   if(bytes == 0) return '0 Bytes';
   var k = 1024,
       dm = decimals <= 0 ? 0 : decimals || 2,
       sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
       i = Math.floor(Math.log(bytes) / Math.log(k));
   return parseFloat((bytes / Math.pow(k, i)).toFixed(dm)) + ' ' + sizes[i];
}


function control_type(input){
  var val = input.val().toLowerCase(),
      regex = new RegExp("(.*?)\.(docx|doc|pdf|xml|bmp|ppt|xls|xlsx|zip|rar|jpeg|jpg|png|dwg|dwgx|pln|pla|dxf)$");

  if (!(regex.test(val))) {
      $(this).val('');
      return false;
  }
  else{
    return true;
  }
}

function clearForm(){
  $("input").val("");
  $('option').removeAttr("selected");
  // $('option:selected', this).remove();
}

   





function loader(show){
  if (show == true) {
    $(".loaddiv").css("display","block");
  }
  else{
    $(".loaddiv").css("display","none");
  }
}



$("body").on("click","#show-password",function(){
  $(this).toggleClass("fa-eye fa-eye-slash");
  var input = $($(this).attr("toggle"));
  if (input.attr("type") == "password") {
    input.attr("type", "text");
  } else {
    input.attr("type", "password");
  }
});


/* Password show function area */

$('body').on('submit', '#login', function(e){
  e.preventDefault();
  loader(true);
  var form = $("#login");
  $.ajax({
    type: "post",
    url:  'Auth/login_procces',
    data: form.serialize(),
    success : function(response){
      loader(false);
      var data = JSON.parse(response);
      if (data.status == 'success') {
        toastr["success"](data.msg);
        location.reload();
      }
      else{
        toastr["error"](data.msg);
      }
    },
    error : function(err){
      Swal.fire({
          title: 'Sistem X??tas??!',
          html: 'Sistem X??tas?? ba?? verdi z??hm??t olmasa sistem adminstratru il?? ??laq?? saxlay??n!',
          type: 'error'
      });
    }
  });
  return false;
});



// Status change function
$("body").on('change','.status',function(){
    var status  =  $(this).prop('checked');
    var table   = $(this).attr("dataTable");
    var dataid  = $(this).attr("dataID");
    var dataROW  = $(this).attr("dataROW");
    $.ajax({
      type: "post",
      url:  '/gopanel/process/status/',
      data: { id: dataid, status: status, table: table,dataROW:dataROW },
      success : function(response){
        var data = JSON.parse(response);
        Swal.fire({
            title:  data.title,
            html:   data.msg,
            type:   data.status
        });
      },
      error : function(err){
        Swal.fire({
            title: 'Sistem X??tas??!',
            html: 'Sistem X??tas?? ba?? verdi z??hm??t olmasa sistem adminstratru il?? ??laq?? saxlay??n!',
            type: 'error'
        });
      }
    });
});
// Status change function end

// delete function

$('body').on('click', '.delete', function(){
    var table = $(this).attr('table_name');
    var id = $(this).attr('unit_id');
    var that = $(this);
    Swal.fire({
        title: "Silinsin ?",
        text: "Silm??k ist??diyinizd??n ??minsiniz? Bu m??lumat geri qaytar??lmaya bil??r",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: '<i class="fas fa-check-circle"></i> B??li',
        cancelButtonText: '<i class="far fa-times-circle"></i> Xeyr',
        reverseButtons: true
    }).then((result) => {
        if (result.value) {
          $.post('/gopanel/process/delete/', {id: id, table: table}, function(data){
            if(data == 1){
              Swal.fire({
                  type:  "success",
                  title: "U??urlu ??m??liyyat", 
                  html:  "M??lumat u??urla silindi",  
                  confirmButtonText: '<i class="fas fa-check-circle"><i/> OK',
                }).then((value) => {
                  that.parent('div').parent('td').parent('tr').hide(300);
              });
            }
          });
        }
        else{
          
        }
    }); 

    return false;
  });
// delete function end


$("body").on("click",".icon-demo-content i",function(){
  var icon = this.className;
  icon = icon.replace("fab", "fa");
  $('input[name="icon"]').val(icon);
  $(".select_icon").html('Se??diyiniz ikon : <i class="'+this.className+'">');
  $("#iconSocial").modal("hide");
});


$(function(){
  $(".sortable").sortable();
  $(".sortable").disableSelection();
});


$(function(){
  $(".sortableIcon").sortable({
    handle: "td.sort-td",
    axis: "y"
  });
  // $(".sortable").disableSelection();
});


$("#sortable").on("sortupdate", function(event,ui){
  var data    = $(this).sortable("serialize");
  var table   = $(this).data("table");
  var ajaxurl = "/gopanel/process/sortable/" 
  $.post(ajaxurl,{data:data,table:table}, function(response){
    if (response === 0) {
      Swal.fire({
          title: 'Sistem X??tas??!',
          html: 'Sistem X??tas?? ba?? verdi z??hm??t olmasa sistem adminstratru il?? ??laq?? saxlay??n!',
          type: 'error'
      });
    }
    else{
      Swal.fire({
          title: 'U??urlu ??m??liyyat!',
          html: 'M??lumatlar u??urla d??yi??dirildi!',
          type: 'success'
      });
    }
  });
});



// Gallery js

var imageList = [];

function show_btn_delete(){
    var checkboxes = $('input:checkbox').filter(':checked').length;
    if (checkboxes > 0) {
        $("#deleteAll").addClass("showBtn");
    }
    else{
        $("#deleteAll").removeClass("showBtn");
        // $("#imageList").val("");
    }
}

 $(".checkAll").click(function () {
     $('input:checkbox').not(this).prop('checked', this.checked);
 });

$("body").on("change",".chekimage",function(e){
    show_btn_delete();
});

$("body").on("change",".checkAll",function(e){
    // e.preventDefault();
    show_btn_delete();      
});



$("body").on("click","#deleteAll",function(e){
    e.preventDefault();
    var delete_id = $(".chekimage").serialize();
    if (delete_id.length > 2) {
        Swal.fire({
        title: "Silinsin ?",
        text: "Se??il??nl??ri silm??k ist??diyinizd??n ??minsiniz? Bu m??lumat geri qaytar??lmaya bil??r",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: '<i class="fas fa-check-circle"></i> B??li',
        cancelButtonText: '<i class="far fa-times-circle"></i> Xeyr',
        reverseButtons: true
    }).then((result) => {
        if (result.value) {
            $.ajax({
              type: "post",
              url:  '/gopanel/gallery/deleteall/',
              data: $(".chekimage").serialize(),
              success : function(response){
                console.log(response)
                var data = JSON.parse(response);
                var d    = data.deleted;
                if (data.status != "") {
                  Swal.fire({
                    type:  data.status,
                    title: data.title, 
                    html:  data.msg,  
                    confirmButtonText: "Anlad??m", 
                  }).then((result) => {
                        d.forEach(function(entry) {
                            $("#img_"+entry).hide(350);
                        });
                  });
                }
              },
              error : function(err){
                  alert("X??ta Ba?? verdi");
              }
            });
        }
        else{
          
        }
    });
    }
    else{
        Swal.fire({
            type:  "error",
            title: "X??ta", 
            html:  "Sistem X??tas?? ba?? verdi z??hm??t olmasa yenid??n yoxlay??n",  
            confirmButtonText: "Anlad??m", 
          })
    }
});

$('body').on('click', '.deleteImg', function(){
    var table = $(this).attr('table_name');
    var id = $(this).attr('unit_id');
    var that = $(this);
    Swal.fire({
        title: "Silinsin ?",
        text: "Silm??k ist??diyinizd??n ??minsiniz? Bu m??lumat geri qaytar??lmaya bil??r",
        type: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: '<i class="fas fa-check-circle"></i> B??li',
        cancelButtonText: '<i class="far fa-times-circle"></i> Xeyr',
        reverseButtons: true
    }).then((result) => {
        if (result.value) {
          $.post('/gopanel/gallery/delete/', {id: id, table: table}, function(data){
            if(data > 1){
              Swal.fire({
                  type:  "success",
                  title: "U??urlu ??m??liyyat", 
                  html:  "M??lumat u??urla silindi",  
                  confirmButtonText: '<i class="fas fa-check-circle"><i/> OK',
                }).then((value) => {
                  $("#img_" + data).hide(300);
              });
            }
          });
        }
        else{
          
        }
    }); 

    return false;
  });
// delete function end




$("body").on("change",".parametr_types",function(e){
  var type = $(this).val();
  if (type == 2) {
    $(".type_2").show();
    
  }
  else{
    $(".type_2").hide();
  }
});


$("body").on("click",".color_panel_on",function(e){
    e.preventDefault();
    $(".input-group-append").show();
    $(".colorpicker_p").colorpicker({format:"hex"});
    return false;
});


$("body").on("click",".copy_product",function(e){
  e.preventDefault();
  var thiss = $(this);
  var id    = $(this).attr("unit_id");
  $.ajax({
    type: "post",
    url:  '/gopanel/product_translate/copy/',
    data: {id:id},
    success : function(response){
      var data = JSON.parse(response);
      if (data.status != "") {
        Swal.fire({
          type:  data.status,
          title: data.title, 
          html:  data.msg,  
          confirmButtonText: "Anlad??m", 
        }).then((result) => {
            thiss.parents("tbody").append(data.trasnlate);
        });
      }
    },
    error : function(err){
        alert("X??ta Ba?? verdi");
    }
  });
  return false;
});


$("body").on("change",".parametrs",function(e){
  e.preventDefault();
  var id    = $(this).val();
  var thiss = $(this);
  var div   = $(".parametr_values_div");
  var select  = $(".parametr_values");
  select.html("");
  div.hide();
  $.ajax({
    type: "post",
    url:  '/gopanel/product_parametr/get_parametr_values/',
    data: {id:id},
    success : function(response){
      var data = JSON.parse(response);
      if (data.status != "" && data.status == 'success') {
          // parametr_values
          var values  = data.parametrs;
          var options = '<option value="">Parametir Ba??l?????? se??in</option>';
          values.forEach(function(entry) {
              options += '<option value="'+entry.id+'">'+entry.title_az+'</option>';
          });
          select.html(options);
          div.show()
      }
      else{
        Swal.fire({
          type:  data.status,
          title: data.title, 
          html:  data.msg,  
          confirmButtonText: "Anlad??m", 
        });
      }
    },
    error : function(err){
        alert("X??ta Ba?? verdi");
    }
  });
  return false;
});



$("body").on("change",".banner_positons",function(){
  var position = $(this).val();
  if (position == 1 || position == 2) {
    $(".pimg").text("??l???? 750 x 610");
  }
  else if (position == 3 || position == 4) {
    $(".pimg").text("??l???? 250 x 460");
  }
});


$("body").on("change",".mobile",function(){
  var position = $(this).val();
  if (position == 1) {
    $(".imgnotfiy").text("??l???? 610 x 300");
    Swal.fire({
      title: 'M??lumatland??rma',
      html: 'Mobil ??????n ????kilin ??l????s?? <b>610 x 300</b> olmal??d??r',
      type: 'info'
    });

  }
  else{
    $(".imgnotfiy").text("??l???? 830 x 460");
    Swal.fire({
        title: 'M??lumatland??rma',
        html: 'Veb ??????n ????kilin ??l????s?? <b>830 x 460</b> olmal??d??r',
        type: 'info'
    });
  }
});


function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min + 1)) + min;
}


$("body").on("click",".get_parent",function(e){
  e.preventDefault();
  var parent    = $(this).attr("parent");
  if (parent > 0) {
      $.ajax({
      type: "post",
      url:  '/gopanel/parametr_products/get_product_values/',
      data: {parent:parent},
      success : function(response){
        var data = JSON.parse(response);
        if (data.status == 'success') {
          var product = data.product;
          for(var i in product) {
            var value = product[i];
            // if (i == 'slug') {
            //   value = value + '-' + getRandomInt(0, 999999999999);
            // }
             $("input[name='"+i+"']").val(value);
          }
        }
        
      },
      error : function(err){
          Swal.fire({
            type:  "error",
            title: "Sistem X??tas??", 
            html:  "Sistem x??tas?? ba?? verdi z??hm??t olmasa sayt administartsiyas?? il?? ??laq?? saxlay??n",  
            confirmButtonText: "Anlad??m", 
          });
      }
    });
  }
  else{
    Swal.fire({
      type:  "error",
      title: "Sistem X??tas??", 
      html:  "Sistem x??tas?? ba?? verdi z??hm??t olmasa sayt administartsiyas?? il?? ??laq?? saxlay??n",  
      confirmButtonText: "Anlad??m", 
    });
  }
  return false;
});
;
