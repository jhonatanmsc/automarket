<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Automarket | Usuários</title>
	<meta name="description" content="The small framework with powerful features">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" type="image/png" href="/favicon.ico"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
    <!-- STYLES -->
    <style>
        @font-face {
            font-family: "Roboto";
            src: url("Roboto/Roboto-Regular.ttf");
            font-family: "Roboto-Bold";
            src: url("Roboto/Roboto-Bold.ttf");
        }
    </style>
</head>
<body>

    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <b><a class="navbar-brand" href="#">Automarket</a></b>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="<?= route_to('home') ?>">Home</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">usuários <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= route_to('report') ?>">consultas</a>
            </li>
            </ul>
        </div>
    </nav>

    <!-- content -->
    <section class='container mt-5'>

        <h2 style='font-family: Roboto-Bold'> Nossos vendedores </h2>
        
        <table class="table table-hover">
            <thead>
                <tr>
                <th scope="col">nome de usuário</th>
                <th scope="col">email</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($salesmen as $user) { ?>
                    <tr>
                    <td><?= $user['username'] ?></td>
                    <td><?= $user['email'] ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

        <h2 style='font-family: Roboto-Bold'> Nossos Clientes </h2>
        
        <table class="table table-hover">
            <thead>
                <tr>
                <th scope="col">nome de usuário</th>
                <th scope="col">email</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($costumers as $user) { ?>
                    <tr>
                    <td><?= $user['username'] ?></td>
                    <td><?= $user['email'] ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

    </section>

    <!-- scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <!-- my custom scripts -->
    <script>
        $(document).ready(function() {
            $('.table').DataTable();
        } );
    </script>
</body>
</html>
