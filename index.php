<?php
include 'helper/api.php';
// error_reporting(0);

if (isset($_POST['cek'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $login = mysqli_query($conn, "select * from users where username='$username' and password='$password'");
    $result = mysqli_num_rows($login);
    if ($result > 0) {
        $user = mysqli_fetch_array($login);
        if ($user['role'] == 'admin') {
            session_start();
            $_SESSION['username_admin'] = $_POST['username'];
            echo "<script>document.location.href='admin/index.php?view=dashboard'</script>";
        }elseif ($user['role'] == 'user') {
            session_start();
            $_SESSION['username_user'] = $_POST['username'];
            echo "<script>document.location.href='user/index.php?view=dashboard'</script>";
        } else {
            $status_pesan = 'danger';
            $pesan = "Username atau password salah";
        }
    } else {
        $status_pesan = 'danger';
        $pesan = "Username atau password salah";
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Masuk</title>
    <link rel="icon" href="assets/img/logo.png" type="image/x-icon">

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/dist/css/adminlte.min.css">
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <!-- /.login-logo -->
        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <a href="#" class="h1"><b>Masuk</b></a>
            </div>
            <div class="card-body">
                <p class="login-box-msg">Silahkan masuk menggunakan username dan kata sandi.</p>

                <?php if (isset($pesan)) : ?>
                    <div class="bg-<?= $status_pesan ?>">
                        <p class="text-center p-3" style="border-radius:20px">
                            <?= $pesan ?>
                        </p>
                    </div>
                <?php endif; ?>

                <form action="" method="post">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" name="username" placeholder="Username" required>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" class="form-control" name="password" placeholder="Katasandi" id="password" required>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="showPassword">
                                <label for="showPassword">
                                    Perlihatkan kata sandi
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="social-auth-links text-center mt-2 mb-3">
                        <button type="submit" name="cek" class="btn btn-block btn-primary">
                            <i class="fas fa-edit me-2"></i>&nbsp;Masuk
                        </button>
                    </div>
                </form>

                <script>
                    document.getElementById('showPassword').addEventListener('change', function() {
                        var passwordField = document.getElementById('password');
                        if (this.checked) {
                            passwordField.type = 'text'; 
                        } else {
                            passwordField.type = 'password'; 
                        }
                    });
                </script>


                <!-- /.social-auth-links -->

                <!-- <p class="mb-0">
                    <a href="../register/index.php" class="text-center text-dark">Pengguna baru? <span class="text-primary"><strong>Daftar</strong></span></a>
                </p> -->
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->
    </div>
    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="assets/dist/js/adminlte.min.js"></script>
</body>

</html>

<script>
    var newURL = window.location.href.split('/')[0] + '';
    window.history.replaceState({}, document.title, newURL);
</script>
</body>

</html>