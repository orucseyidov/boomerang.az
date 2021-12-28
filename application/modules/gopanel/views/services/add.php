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
                            <a class="btn btn-outline-success waves-effect waves-light" href="/gopanel/<?=$table ?>/manage">
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
                        <form action="" method="POST" enctype="multipart/form-data">
                            <div class="row">

                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Kategoriya</label>
                                    <select class="form-control" name="category">
                                        <?php foreach ($category as $key => $value): ?>
                                            <option value="<?=$value['id'] ?>">
                                                <?=$value['title'] ?>
                                            </option>
                                        <?php endforeach ?>
                                    </select>
                                </div>

                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>Başlıq EN</label>
                                    <input type="text" name="title_en" class="form-control" required>
                                </div>

                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>Başlıq RU</label>
                                    <input type="text" name="title_ru" class="form-control" required>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Ətraflı Məlumat EN</label>
                                    <textarea class="form-control ckeditor" name="description_en" required></textarea>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Ətraflı Məlumat RU</label>
                                    <textarea class="form-control ckeditor" name="description_ru" required></textarea>
                                </div>


                                <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                    <label>Şəkil </label>
                                    <small class="pull-right imgnotfiy">Ölçü 200 x 140</small>
                                    <input type="file" name="image" class="filestyle" data-buttonname="btn-secondary" data-buttonText="Şəkil Seçi" data-classIcon="fas fa-file-import" data-buttonBefore="false">
                                </div>

                                <div class="hidden-inputs">
                                    <input type="hidden" name="token" value="<?=$token ?>">
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