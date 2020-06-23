<?php $this->extend('base') ?>

<?php $this->section('content') ?>
    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <b><a class="navbar-brand" href="#">Automarket</a></b>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo route_to('users') ?>">usuários</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<?= route_to('report') ?>">consultas</a>
            </li>
            </ul>
        </div>
    </nav>

    <!-- content -->
    <section class='container mt-5'>

        <h2 style='font-family: Roboto-Bold'> Nossos carros </h2>
        
        <table class="table table-hover">
            <thead>
                <tr>
                <th scope="col">modelo</th>
                <th scope="col">ano</th>
                <th scope="col">cor</th>
                <th scope="col">preço</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($cars as $car) { ?>
                    <tr>
                    <td><?= $car['model'] ?></td>
                    <td><?= $car['manufacture_year'] ?></td>
                    <td><?= $car['color'] ?></td>
                    <td><?= $car['price'] ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

        <h2 style='font-family: Roboto-Bold'> Nossos carros seminovos </h2>
        
        <table class="table table-hover">
            <thead>
                <tr>
                <th scope="col">modelo</th>
                <th scope="col">ano</th>
                <th scope="col">cor</th>
                <th scope="col">preço</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($usedCars as $car) { ?>
                    <tr>
                    <td><?= $car['model'] ?></td>
                    <td><?= $car['manufacture_year'] ?></td>
                    <td><?= $car['color'] ?></td>
                    <td><?= $car['price'] ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

    </section>

<?php $this->endSection() ?>
