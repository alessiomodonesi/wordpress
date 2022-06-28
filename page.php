<?php include('php/connection.php'); get_header(); get_footer(); ?>

<div class="container-fluid"><br />
    <h1 class="title text-center" id="titolo"></h1>
    <input type="hidden" id="title" value="<?php echo get_the_title(); ?>"><hr />
    <div class="row">
        <div class="btnAdd">
            <a href="#!" data-id="" data-bs-toggle="modal" data-bs-target="#addUserModal" class="btn btn-outline-success btn-sm" id="addBtn"></a>
        </div>
    </div>
    <div class="row">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-10 offset-md-1">
                    <table id="table" class="table">
                        <thead>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="editUserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modifica</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="close"></button>
            </div>
            <div class="modal-body">
                <form id="updateUser">
                    <input type="hidden" name="id" id="id" value="">
                    <input type="hidden" name="trid" id="trid" value="">
                    <!-- guarda createInputModals.js -->
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Chiudi</button>
            </div>
        </div>
    </div>
</div>

<!-- Add user Modal -->
<div class="modal fade" id="addUserModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Aggiungi</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="close"></button>
            </div>

            <div class="modal-body">
                <form id="addUser" action="">
                    <!-- guarda createInputModals.js -->
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">Chiudi</button>
            </div>
        </div>
    </div>
</div>