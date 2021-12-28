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
                            <a class="btn btn-outline-success waves-effect waves-light" href="/gopanel/<?=$class ?>/add">
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
exportColunm = "0,1" 
value=""
/>

        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                            <thead>
                                <tr>
                                    <th>№</th>
                                    <th>Ad Soyad</th>
                                    <th>E-poçt</th>
                                    <th>Hesab Status</th>
                                    <th>Qeydiyyat Tarixi</th>
                                    <th>Əməliyyatlar</th>
                                </tr>
                            </thead>
                            <tbody>
<?php
foreach ($manage as $key => $value): 
    $editlink = base_url("gopanel/").$class."/edit/?id=".$value['id'];
?>
                                <tr>
                                    <td><?=$counter++ ?></td>
                                    <td><?=$value['fullname'] ?></td>
                                    <td><?=$value['email'] ?></td>
                                    <td>
                                        <?php 
                                            if ($value['status'] == 1) {
                                               echo'<span class="badge badge-primary badge-pill">Aktiv</span>';
                                            }
                                            else{
                                                echo'<span class="badge badge-danger badge-pill">Deaktiv</span>';
                                            }
                                        ?>
                                    </td>
                                    <td><?=$value['reg_date'] ?></td>
                                    <td>
                                        <div class="manage">
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