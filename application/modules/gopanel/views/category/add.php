<!-- Start content -->
<div class="content">
    <div class="container-fluid">
        <div class="page-title-box">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <h4 class="page-title"><?=$btitle ?></h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?=base_url("gopanel") ?>">Əsas Panel</a></li>
                        <li class="breadcrumb-item"><a href="<?=base_url("gopanel/{$class}/manage/?parent={$parent}") ?>"><?=$btitle ?></a></li>
                        <li class="breadcrumb-item active"><?=$bactive ?></li>
                    </ol>
                </div>
                <div class="col-sm-6">
                    <div class="float-right d-none d-md-block">
                        <div class="dropdown">
                            <a class="btn btn-outline-success waves-effect waves-light" href="<?=base_url("gopanel/{$class}/manage/?parent={$parent}") ?>">
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
                        <form action="<?=base_url("gopanel/{$class}/{$method}/?parent={$parent}") ?>" method="POST" enctype="multipart/form-data">
                            <div class="row">

                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Başlıq </label>
                                    <input type="text" name="title" class="form-control" required>
                                </div>

                               
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Ətraflı Məlumat </label>
                                    <textarea rows="5" class="form-control ckeditor" name="description" required></textarea>
                                </div>

                                
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Açar sözlər </label>
                                    <input type="text" name="keywords" class="form-control tags" required>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Şəkil </label>
                                    <small class="pull-right imgnotfiy">Ölçü 600 x 600</small>
                                    <input type="file" name="image" class="filestyle" data-buttonname="btn-secondary" data-buttonText="Şəkil Seçi" data-classIcon="fas fa-file-import" data-buttonBefore="false">
                                </div>

                                <div class="hidden-inputs">
                                    <input type="hidden" name="token" value="<?=$token ?>">
                                    <input type="hidden" name="parent" value="<?=$parent ?>">
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group mb-0">
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-primary waves-effect waves-light mr-1 ">
                                           <i class="fas fa-save"></i> Əlavə et
                                        </button>
                                        <button type="reset" class="btn btn-secondary waves-effect ">
                                           <i class="fas fa-times" ></i> Ləğv et
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