<!-- Start content -->
<div class="content">
    <div class="container-fluid">
        <div class="page-title-box">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <h4 class="page-title"><?=$btitle ?></h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?=base_url($app) ?>">Əsas Panel</a></li>
                        <li class="breadcrumb-item">
                            <a href="<?=base_url("{$app}/{$class}/manage") ?>">
                                <?=$btitle ?>
                            </a>
                        </li>
                        <li class="breadcrumb-item active"><?=$bactive ?></li>
                    </ol>
                </div>
                <div class="col-sm-6">
                    <div class="float-right d-none d-md-block">
                        <div class="dropdown">
                            <a class="btn btn-outline-success waves-effect waves-light" href="<?=base_url("{$app}/{$class}/manage") ?>">
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
                        <form action="<?=base_url("{$app}/{$class}/{$method}/?id={$id}") ?>" method="POST" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-4 col-sm-12 col-xs-12 form-group">
                                    <label>Başlıq [AZ]</label>
                                    <input type="text" name="name_az" class="form-control" value="<?=$values['name_az'] ?>" required>
                                </div>
                                <div class="col-md-4 col-sm-12 col-xs-12 form-group">
                                    <label>Başlıq [EN]</label>
                                    <input type="text" name="name_en" class="form-control" value="<?=$values['name_en'] ?>" required>
                                </div>
                                <div class="col-md-4 col-sm-12 col-xs-12 form-group">
                                    <label>Başlıq [RU]</label>
                                    <input type="text" name="name_ru" class="form-control" value="<?=$values['name_ru'] ?>" required>
                                </div>

                               
                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>Slug</label>
                                    <input type="text" name="slug" value="<?=$values['slug'] ?>" class="form-control">
                                </div>

                                <div class="col-md-6 col-sm-12 col-xs-12 form-group">
                                    <label>
                                        Status 
                                        <small><?=$values['status'] == 1 ? 'Hal hazırda aktivdir' : 'Hal hazırda deaktivdir' ?></small> 
                                    </label>
                                    <select class="form-control" name="status">
                                        <option value="1" <?=s($values['status'],1) ?> >Aktiv</option>
                                        <option value="0" <?=s($values['status'],0) ?> >Deaktiv</option>
                                    </select>
                                </div>

                                <div class="hidden-inputs">
                                    <input type="hidden" name="token" value="<?=$token ?>">
                                </div>
                                <div class="col-md-12"><hr></div>
                                <div class="col-md-12 col-sm-12 col-xs-12 form-group mb-0">
                                    <div class="pull-right">
                                        <button type="submit" class="btn btn-primary waves-effect waves-light mr-1 ">
                                           <i class="fas fa-save"></i> Yadda saxla
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