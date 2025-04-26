<?php 
$page_id = null;
$comp_model = new SharedController;
$current_page = $this->set_current_page_link();
?>
<div>
    <div  class="">
        <div class="">
            <div class="row ">
                <div class="col-sm-12 comp-grid">
                    <div class=""><?php
                        require_once 'config.php'; // <<< WAJIB pakai require_once
                        try {
                        $pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME, DB_USERNAME, DB_PASSWORD);
                        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                        } catch (PDOException $e) {
                        die('Database connection failed: ' . $e->getMessage());
                        }
                        // Tentukan jumlah pengumuman yang ditampilkan
                        $items_per_page = 4; // Menampilkan 4 pengumuman terbaru
                        // Query untuk mengambil 4 pengumuman terbaru
                        $query = "
                        SELECT id_pengumuman, judul_pengumuman, tanggal_pengumuman, isi_pengumuman, nama_kegiatan 
                        FROM pengumuman
                        ORDER BY tanggal_pengumuman DESC
                        LIMIT 4"; // Mengambil hanya 4 pengumuman terbaru
                        // Execute query untuk mengambil pengumuman
                        $stmt = $pdo->query($query);
                        // HTML untuk menampilkan pengumuman tanpa pagination
                        echo '<section style="background-color: #ffffff; padding: 50px 0; margin-bottom: 20px; border-radius: 10px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">';
                            echo '  <div style="text-align: center; margin-bottom: 30px;">';
                                echo '    <h1 style="font-size: 2.5em; margin-bottom: 20px; font-family: Arial, sans-serif;">Informasi Kegiatan Terbaru</h1>';
                                echo '    <p style="font-size: 1.2em; color: #555; font-family: Arial, sans-serif;">Pengumuman resmi seputar kegiatan Rohis terkini.</p>';
                            echo '  </div>';
                            echo '  <div style="display: flex; justify-content: center; gap: 20px; flex-wrap: wrap;">';
                                echo '    <div style="flex: 1 1 300px; background-color: #ffffff; padding: 20px; border-radius: 10px; box-shadow: 0 4px 6px rgba(0,0,0,0.1); border: 1px solid #ddd;">';
                                    echo '      <h3 style="font-size: 1.8em; color: #333; margin-bottom: 20px; font-family: Arial, sans-serif;">Daftar Pengumuman</h3>';
                                    echo '      <ul style="list-style-type: none; padding-left: 0;">';
                                        // Loop untuk menampilkan pengumuman
                                        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                                        echo '        <li style="margin-bottom: 15px; font-size: 1.1em; color: #555; font-family: Arial, sans-serif;">';
                                            // Tautkan judul pengumuman
                                            echo '          <a href="javascript:void(0);" style="color: #072247; text-decoration: none; font-weight: bold;">' . $row['judul_pengumuman'] . '</a><br>';
                                                echo '          <span style="color: #888;">' . date('d M Y', strtotime($row['tanggal_pengumuman'])) . ' - ' . $row['nama_kegiatan'] . '</span>';
                                                // Tampilkan konten langsung tanpa menyembunyikan
                                                echo '          <div style="margin-top: 10px; padding: 10px; background-color: #f9f9f9; border-radius: 5px; border: 1px solid #ddd; color: #333;">';
                                                    echo '            <p>' . $row['isi_pengumuman'] . '</p>';
                                                echo '          </div>';
                                            echo '        </li>';
                                            }
                                        echo '      </ul>';
                                    echo '    </div>';
                                echo '  </div>';
                            echo '</section>';
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
