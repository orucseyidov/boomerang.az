<!-- Start content -->
<div class="content">
    <div class="container-fluid">
        <div class="page-title-box">
            <div class="row align-items-center">
                <div class="col-sm-6">
                    <h4 class="page-title"><?=$btitle ?></h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<?=base_url("gopanel") ?>">Əsas Panel</a></li>
                        <li class="breadcrumb-item"><a href="<?=base_url("gopanel/{$class}/manage") ?>"><?=$btitle ?></a></li>
                        <li class="breadcrumb-item active"><?=$bactive ?></li>
                    </ol>
                </div>
                <div class="col-sm-6">
                    <div class="float-right d-none d-md-block">
                        <div class="dropdown">
                            <a class="btn btn-outline-success waves-effect waves-light" href="<?=base_url("gopanel/{$class}/add?parent={$parent}") ?>">
                                <i class="fas fa-plus mr-2"></i> Əlavə et
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end row -->

<input 
id="datatableOptions" 
type="hidden"
exportColunm = "0,1,2" 
value=""
/>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body table-responsive">
                        <table class="table table-bordered dt-responsive table-center" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th><i class="fas fa-expand-arrows-alt"></i></th>
                                    <th>№</th>
                                    <th>Başlığ</th>
                                    <th>Alt Kateqoriya</th>
                                    <th>Şəkillər</th>
                                    <th>Status</th>
                                    <th>Əməliyyatlar</th>
                                </tr>
                            </thead>
                            <tbody id="sortable" class="sortableIcon" data-table="<?=$table ?>">
<?php
foreach ($manage as $key => $value): 
    $id         = $value['id'];
    $editlink   = base_url("{$app}/{$class}/edit/?id={$id}");
    $alt        = '?parent='.$value['id'];
    $gallery    = base_url("{$app}/gallery/manage/?parent={$id}&section={$table}&size=2000x2000");
?>
                                <tr id="ord-<?=$value['id']?>">
                                    <td class="sort-td"><i class="fas fa-arrows-alt-v"></i></td>
                                    <td><?=$counter++ ?></td>
                                    <td><?=$value['title_az'] ?></td>
                                    <td>
                                        <a class="btn btn-outline-success waves-effect waves-light" href="<?=$alt ?>">
                                            <i class="fas fa-list-ol mr-2"></i> 
                                            Alt Kateqoriyaları [ <?=$value['childs'] ?> ]
                                        </a>
                                    </td>
                                    <td>
                                        <a class="btn btn-outline-success waves-effect waves-light" href="<?=$gallery ?>">
                                            <i class="fas fa-images mr-2"></i> 
                                            Şəkillər [ <?=$value['images'] ?> ]
                                        </a>
                                    </td>
                                    <td>
                                    <input
                                      class         ="status"
                                      type          ="checkbox"
                                      data-size     ="small"
                                      data-toggle   ="toggle"
                                      data-on       ="Aktiv"
                                      data-off      ="Deaktiv"
                                      data-onstyle  ="success"
                                      data-offstyle ="danger"
                                      dataROW       ="status"
                                      dataID        ="<?=$value['id']; ?>"
                                      dataTable     ="<?=$table; ?>"
                                      <?php echo ($value['status'] == 1) ? "checked" : " " ; ?>
                                      >
                                    </td>
                                    <td>
                                        <div class="manage">
                                            <a class="btn btn-success" href="<?=$editlink?>" data-toggle="tooltip" data-placement="top" title="Məlumatı Yenilə" ><i class="fas fa-edit"></i></a>
                                            <a class="btn btn-danger delete" href="" unit_id="<?=$value['id']?>" table_name="<?=$table ?>" data-toggle="tooltip" data-placement="top" title="Məlumatı Sil" ><i class="fas fa-trash-alt"></i></a>
                                        </div>
                                    </td>
                                </tr>
<?php endforeach ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- container-fluid -->
</div>
<!-- content -->