<?php 
$page_id = null;
$comp_model = new SharedController;
$current_page = $this->set_current_page_link();
?>
<div>
    <div  class="bg-light p-3 mb-3">
        <div class="container-fluid">
            <div class="row align-items-start">
                <div class="col-md-6 comp-grid">
                    <?php $modal_id = "modal-" . random_str(); ?>
                    <button data-toggle="modal" data-target="#<?php  echo $modal_id ?>"  class="btn btn-primary">
                        <i class="fa fa-sign-in "></i>                                  
                        Absen 
                    </button>
                    <div data-backdrop="true" id="<?php  echo $modal_id ?>" class="modal fade"  role="dialog" aria-labelledby="<?php  echo $modal_id ?>" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-body p-0 reset-grids">
                                    <div class=" ">
                                        <?php  
                                        $this->render_page("absensi_kegiatan/add"); 
                                        ?>
                                    </div>
                                </div>
                                <div style="top: 5px; right:5px; z-index: 999;" class="position-absolute">
                                    <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal">&times;</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 comp-grid">
                    <div class=""><?php
                        // Koneksi ke database
                        $pdo = new PDO('mysql:host=localhost;dbname=kqnxdjgg_rohismanager', 'kqnxdjgg_rootadmin', 'rootadmin123..'); // Gantilah 'password' dengan password yang sesuai
                        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        // Query untuk mengambil pengumuman
                        $query = "SELECT id_pengumuman, judul_pengumuman, tanggal_pengumuman, isi_pengumuman, nama_kegiatan 
                        FROM pengumuman 
                        ORDER BY tanggal_pengumuman DESC LIMIT 5";
                        $stmt = $pdo->query($query);
                        // HTML untuk menampilkan pengumuman dengan link
                        echo '<section style="background-color: #f4f4f4; padding: 50px 0; margin-bottom: 20px; border-radius: 10px;">';
                            echo '  <div style="text-align: center; margin-bottom: 30px;">';
                                echo '    <h1 style="font-size: 2.5em; margin-bottom: 20px; font-family: Arial, sans-serif;">Pengumuman Terbaru</h1>';
                                echo '    <p style="font-size: 1.2em; color: #555; font-family: Arial, sans-serif;">Lihat pengumuman terbaru yang akan datang</p>';
                            echo '  </div>';
                            // Menampilkan pengumuman dalam bentuk list
                            echo '  <div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap;">';
                                echo '    <div style="flex: 1 1 300px; background-color: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">';
                                    echo '      <h3 style="font-size: 1.8em; color: #333; margin-bottom: 20px; font-family: Arial, sans-serif;">Daftar Pengumuman</h3>';
                                    echo '      <ul style="list-style-type: none; padding-left: 0;">';
                                        // Loop untuk menampilkan pengumuman dengan link
                                        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                                        echo '        <li style="margin-bottom: 15px; font-size: 1.1em; color: #555; font-family: Arial, sans-serif;">';
                                            // Tautkan judul pengumuman, dan atur untuk menampilkan/menyembunyikan isi
                                            echo '          <a href="javascript:void(0);" onclick="toggleDescription(' . $row['id_pengumuman'] . ')" style="color: #072247; text-decoration: none; font-weight: bold;">' . $row['judul_pengumuman'] . '</a><br>';
                                                echo '          <span style="color: #888;">' . date('d M Y', strtotime($row['tanggal_pengumuman'])) . ' - ' . $row['nama_kegiatan'] . '</span>';
                                                // Tempatkan konten tersembunyi di bawah judul
                                                echo '          <div id="pengumuman-' . $row['id_pengumuman'] . '" style="display:none; margin-top: 10px; padding: 10px; background-color: #f9f9f9; border-radius: 5px; border: 1px solid #ddd; color: #333;">';
                                                    echo '            <p>' . $row['isi_pengumuman'] . '</p>';
                                                echo '          </div>';
                                            echo '        </li>';
                                            }
                                        echo '      </ul>';
                                    echo '    </div>';
                                echo '  </div>';
                            echo '</section>';
                            ?>
                            <script>
                                // JavaScript untuk menampilkan dan menyembunyikan detail pengumuman
                                function toggleDescription(id_pengumuman) {
                                var content = document.getElementById("pengumuman-" + id_pengumuman);
                                if (content.style.display === "none") {
                                content.style.display = "block"; // Menampilkan detail
                                } else {
                                content.style.display = "none"; // Menyembunyikan detail
                                }
                                }
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div  class="">
            <div class="container">
                <div class="row ">
                    <div class="col-md-6 comp-grid">
                        <div class="card card-body">
                            <?php 
                            $chartdata = $comp_model->piechart_kas();
                            ?>
                            <div>
                                <h4>Kas</h4>
                                <small class="text-muted"></small>
                            </div>
                            <hr />
                            <canvas id="piechart_kas"></canvas>
                            <script>
                                $(function (){
                                var chartData = {
                                labels : <?php echo json_encode($chartdata['labels']); ?>,
                                datasets : [
                                {
                                label: 'Statistik Kas',
                                backgroundColor:'rgba(0 , 0 , 160, 0.5)',
                                borderWidth:3,
                                data : <?php echo json_encode($chartdata['datasets'][0]); ?>,
                                }
                                ]
                                }
                                var ctx = document.getElementById('piechart_kas');
                                var chart = new Chart(ctx, {
                                type:'pie',
                                data: chartData,
                                options: {
                                responsive: true,
                                scales: {
                                yAxes: [{
                                ticks:{display: false},
                                gridLines:{display: false},
                                scaleLabel: {
                                display: true,
                                labelString: ""
                                }
                                }],
                                xAxes: [{
                                ticks:{display: false},
                                gridLines:{display: false},
                                scaleLabel: {
                                display: true,
                                labelString: ""
                                }
                                }],
                                },
                                }
                                ,
                                })});
                            </script>
                        </div>
                    </div>
                    <div class="col-md-6 comp-grid">
                        <div class="card card-body">
                            <?php 
                            $chartdata = $comp_model->piechart_inventaris();
                            ?>
                            <div>
                                <h4>Inventaris</h4>
                                <small class="text-muted"></small>
                            </div>
                            <hr />
                            <canvas id="piechart_inventaris"></canvas>
                            <script>
                                $(function (){
                                var chartData = {
                                labels : <?php echo json_encode($chartdata['labels']); ?>,
                                datasets : [
                                {
                                label: 'Data Inventaris',
                                backgroundColor:'rgba(0 , 0 , 160, 0.5)',
                                borderWidth:3,
                                data : <?php echo json_encode($chartdata['datasets'][0]); ?>,
                                }
                                ]
                                }
                                var ctx = document.getElementById('piechart_inventaris');
                                var chart = new Chart(ctx, {
                                type:'pie',
                                data: chartData,
                                options: {
                                responsive: true,
                                scales: {
                                yAxes: [{
                                ticks:{display: false},
                                gridLines:{display: false},
                                scaleLabel: {
                                display: true,
                                labelString: ""
                                }
                                }],
                                xAxes: [{
                                ticks:{display: false},
                                gridLines:{display: false},
                                scaleLabel: {
                                display: true,
                                labelString: ""
                                }
                                }],
                                },
                                }
                                ,
                                })});
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div  class="my-3">
            <div class="container">
                <div class="row lg-gutters">
                    <div class="col-sm-4 comp-grid">
                    </div>
                </div>
            </div>
        </div>
    </div>
