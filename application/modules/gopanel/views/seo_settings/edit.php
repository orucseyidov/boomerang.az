<!-- Start content -->
<div class="content">
    <div class="container-fluid">
        <div class="page-title-box">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <h4 class="page-title"><?=$btitle ?></h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?=base_url("gopanel") ?>">Əsas Panel</a></li>
                        <li class="breadcrumb-item"><a href="<?=base_url("gopanel/".$class) ?>/manage"><?=$btitle ?></a></li>
                        <li class="breadcrumb-item active"><?=$bactive ?></li>
                    </ol>
                </div>
                <div class="col-sm-6">
                    <div class="float-right d-none d-md-block">
                        <div class="dropdown">
                            <a class="btn btn-outline-success waves-effect waves-light" href="/gopanel/<?=$class ?>/manage">
                                <i class="fas fa-list-ol mr-2"></i> Bütün Siyahı
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end row -->
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <form action="<?=$class."/".$method ?>?id=<?=$id ?>" method="POST" enctype="multipart/form-data">
                            <div class="row">

                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>Səhifə başlığı EN</label>
                                    <input type="text" name="title_en" class="form-control" value="<?=$values['title_en'] ?>" required>
                                </div>

                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>Səhifə başlığı RU</label>
                                    <input type="text" name="title_ru" class="form-control" value="<?=$values['title_ru'] ?>" required>
                                </div>


                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>SƏhifə haqqında <small>EN</small></label>
                                    <textarea class="form-control" rows="5" name="description_en" maxlength="300" placeholder="Səhifə haqqında məlumatmaksimum 300 simvol" ><?=$values['description_en'] ?></textarea>
                                </div> 

                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>SƏhifə haqqında <small>RU</small></label>
                                    <textarea class="form-control" rows="5" name="description_ru" maxlength="300" placeholder="Səhifə haqqında məlumatmaksimum 300 simvol" ><?=$values['description_ru'] ?></textarea>
                                </div>


                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>Açar sözlər <small>EN</small></label>
                                    <input type="text" name="keywords_en" class="form-control tags" value="<?=$values['keywords_en'] ?>" required>
                                </div>

                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>Açar sözlər <small>RU</small></label>
                                    <input type="text" name="keywords_ru" class="form-control tags" value="<?=$values['keywords_ru'] ?>" required>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Şəkil</label>
                                    <small class="pull-right imgnotfiy">Ölçü 1920 x 800</small>
                                    <input type="file" name="image" class="filestyle" data-buttonname="btn-secondary" data-buttonText="Şəkil Seçi" data-classIcon="fas fa-file-import" data-buttonBefore="false">
                                    <a class="imgarea" target="_blank" href="<?=$values['image'] ?>">
                                        <img style="max-width: 250px;" src="<?=base_url($values['image']) ?>">
                                    </a>
                                </div>

                                <div class="hidden-inputs">
                                    <input type="hidden" name="token" value="<?=$token ?>">
                                </div>
                                <div class="hidden-inputs">
                                    <input type="hidden" name="token" value="<?=$token ?>">
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group mb-0">
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-primary waves-effect waves-light mr-1 ">
                                           <i class="fas fa-refresh"></i> Yadda saxla
                                        </button>
                                        <button type="reset" class="btn btn-secondary waves-effect ">
                                           <i class="fas fa-times" ></i> Təmizlə
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- container-fluid -->
</div>
<!-- content -->
<?php $this->load->view("/social/icons"); ?>