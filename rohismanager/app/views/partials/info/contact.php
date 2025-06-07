<div class="container">
	<div class="jumbotron text-center">
		<h3>Hubungi kami, ya! Kami siap membantu kamu...</h3>
	</div>
	<div style="margin:40px 0">
		<div class="row">
			<div class="col-sm-5">
				<div class="panel-body panel">
					<?php $this::display_page_errors(); ?>
					<h4>Bagikan info ke kami lewat email 😊</h4>
					<hr />
					<form method="post" action="<?php print_link("info/contact"); ?>">
						<div class="form-group">
							<input type="text" class="form-control" required id="name" name="nama" placeholder="Masukan Nama Anda *">
						</div>

						<div class="form-group">
							<input type="email" class="form-control" required id="email" name="email" placeholder="Masukan Email Anda *">
						</div>

						<div class="form-group">
							<textarea class="form-control" id="msg" name="msg" rows="4" required placeholder="Masukan Pesan Anda *"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Kirim</button>
					</form>

				</div>
			</div>

			<div class="col-sm-7">
				<div class="panel panel-body">
					<h4>Cara lain untuk menghubungi kami:</h4>
					<hr />

					<p>
						<b class="chead"><span class="material-icons">Lokasi</b><br />
						<p class="adr clearfix">
							<span class="adr-group">
								<span class="street-address">Jl. Cipinang Pulo No 19, RT:07 RW:14<br>
								<span class="postal-code">Jakarta 13410</span><br>
								<span class="country-name">Jatinegara, Jakarta Timur</span>
							</span>
						</p>
					</p>
					<!--<hr />-->
					<!--<p>-->
					<!--	<b class="chead"><span class="material-icons">contact_phone</span> Phone</b><br />-->
					<!--	<span class="editContent"> +6289636539320</span>-->
					<!--</p>-->
					<hr />

                <p>
  <b class="chead">
    <span class="material-icons">Email</span>
  </b><br />
  <a href="mailto:rohissmkn46jkt@gmail.com" class="editContent">
    <span>rohissmkn46jkt@gmail.com</span>
  </a><br />
</p>

				</div>
			</div>
		</div>
	</div>

</div>