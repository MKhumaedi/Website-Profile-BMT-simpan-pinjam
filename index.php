<?php include 'header.php' ?>
	
    <body id="body">
	
		<!-- preloader -->
		<div id="preloader">
			<img src="frontend/img/preloader.gif" alt="Preloader">
		</div>
		<!-- end preloader -->
		
		<!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        	<div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel">Detail Produk</h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- 
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar-fixed-top navbar" style="min-height: 80px !important; background-color: #cf2616 !important">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-bars fa-2x"></i>
                    </button>
					<!-- /responsive nav button -->
					
					<!-- logo -->
                    <a class="navbar-brand" href="#body">
						<h1 id="logo">
							<img src="frontend/img/bmt_logo.png" class="img-circle" width="80" alt="BMT Mitra Khazanah">
						</h1>
					</a>
					<!-- /logo -->
                </div> 
                <a href="http://localhost/bmt/admin/" target="_blank" class="btn btn-success" style="margin-top: 9px; float: right;">Login</a>
				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li class="current"><a href="#body">Beranda</a></li>
                        <li><a href="#works">Profil</a></li>
                        <li><a href="#features">Layanan</a></li>                        
                        <li><a href="#team">Pengurus</a></li>
                        <li><a href="#gallery">Galeri</a></li> 
                    </ul>
                </nav>      



				<!-- /main nav -->
				
            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
        <!--
        Home Slider
        ==================================== -->
		
		<section id="slider">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">						
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					
					<!-- single slide -->
					<div class="item active" style="background-image: url(frontend/img/header.jpg);">
						<div class="carousel-caption">
							<div class="wow bounceInDown animated" style="border-radius: 5px; background-color: #cf2616">
							<p data-wow-duration="1000ms" class="wow bounceInDown animated">BMT NU Sejahtera - kETANGGUNGAN</p>
							
								<h2 data-wow-duration="700ms" data-wow-delay="500ms" class="wow bounceInDown animated">KSPPS <span>BMT NU SEJAHTERA</span></h2>
							</div>
						
							<ul class="social-links text-center">
								<li><a href=""><i class="fa fa-phone fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-instagram fa-lg"></i></a></li>
							</ul>
						</div>
					</div>
					<!-- end single slide -->
								
				</div>
				<!-- End Wrapper for slides -->				
			</div>
		</section>
		
        <!--
        End Home SliderEnd
        ==================================== -->
		
        <!--
        Our Works
        ==================================== -->
		
		<section id="works" class="works clearfix">
			<div class="container">
				<div class="row">				
					<div class="sec-title text-center">
						<h2>Profil</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>									
				</div>
			</div>
			
			<div class="project-wrapper">
				<div class="col-md-6">
					<div class="sec-title">
						<h3>Sejarah</h3><br>
						<?php
						$sql_profil = mysqli_query($con,"SELECT * FROM profil") or die (mysqli_error($con));
							while($data = mysqli_fetch_array($sql_profil)){
						?>
						<?php echo $data['sejarah'] ?>
						<?php } ?>
					</div>
				</div>

				<div class="col-md-6">
					<div class="sec-title">
						<h3>Visi & Misi</h3><br>
						<?php
						$sql_profil = mysqli_query($con,"SELECT * FROM profil") or die (mysqli_error($con));
							while($data = mysqli_fetch_array($sql_profil)){
						?>
						<?php echo $data['visi_misi'] ?>
						<?php } ?>
					</div>
				</div>							
			</div>		
		</section>
		
        <!--
        End Our Works
        ==================================== -->

        <!--
        Features
        ==================================== -->
		
		<section id="features" class="features">
			<div class="container">
				<div class="row">				
					<div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="500ms">
						<h2>Jenis Produk</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>
					<?php
					$sql_jenis_produk = mysqli_query($con,"SELECT * FROM jenis_produk") or die (mysqli_error($con));
							while($data = mysqli_fetch_array($sql_jenis_produk)){ 
					?>
					<!-- service item -->
					<div class="col-md-4 wow fadeInLeft" data-wow-duration="500ms">
						<div class="service-item">
							<div class="service-icon">
								<i class="fa fa-github fa-2x"></i>
							</div>
							
							<div class="service-desc">
								<h3><?php echo $data['jenis_produk'] ?></h3>
								<p><?php echo $data['desk_jenis'] ?></p>
							</div>
						</div>
					</div>
					<!-- end service item -->
					<?php } ?>
				</div>
				<hr>
				<div class="row">
					<div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="500ms">
						<h2>List Produk Anggota</h2>
					</div>
					<table class="table table-striped" id="Datatables">
						<thead>
							<tr>
								<th>No</th>
								<th>Nama Produk</th>
								<th>Jenis Produk</th>
								<th>Detail</th>
							</tr>							
						</thead>
						<tbody>
							<?php
							$no = 1;
							$sql_produk = mysqli_query($con,"SELECT * FROM produk_bmt a inner join jenis_produk b on a.id_jenis_produk = b.id_jenis_produk WHERE b.jenis_produk='Anggota' ORDER BY b.jenis_produk ASC") or die (mysqli_error($con));
								while($data = mysqli_fetch_array($sql_produk)){ 
							?>
							<tr>
								<td><?php echo $no++ ?></td>
								<td><?php echo $data['nama_produk'] ?></td>
								<td><?php echo $data['jenis_produk'] ?></td>
								<td><a href="#" class="edit-record btn btn-warning btn-sm" data-id="<?php echo $data['id_produk'] ?>">Detail</a></td>
							</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>
				<hr>
				<div class="row">
					<div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="500ms">
						<h2>List Produk Pembiayaan</h2>
					</div>
					<table class="table table-striped" id="Datatables2">
						<thead>
							<tr>
								<th>No</th>
								<th>Nama Produk</th>
								<th>Jenis Produk</th>
								<th>Detail</th>
							</tr>							
						</thead>
						<tbody>
							<?php
							$no = 1;
							$sql_produk = mysqli_query($con,"SELECT * FROM produk_bmt a inner join jenis_produk b on a.id_jenis_produk = b.id_jenis_produk WHERE b.jenis_produk='Pembiayaan' ORDER BY b.jenis_produk ASC") or die (mysqli_error($con));
								while($data = mysqli_fetch_array($sql_produk)){ 
							?>
							<tr>
								<td><?php echo $no++ ?></td>
								<td><?php echo $data['nama_produk'] ?></td>
								<td><?php echo $data['jenis_produk'] ?></td>
								<td><a href="#" class="edit-record btn btn-warning btn-sm" data-id="<?php echo $data['id_produk'] ?>">Detail</a></td>
							</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>

				<hr>
				<div class="row">
					<div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="500ms">
						<h2>List Produk Tabungan</h2>
					</div>
					<table class="table table-striped" id="Datatables2">
						<thead>
							<tr>
								<th>No</th>
								<th>Nama Produk</th>
								<th>Jenis Produk</th>
								<th>Detail</th>
							</tr>							
						</thead>
						<tbody>
							<?php
							$no = 1;
							$sql_produk = mysqli_query($con,"SELECT * FROM produk_bmt a inner join jenis_produk b on a.id_jenis_produk = b.id_jenis_produk WHERE b.jenis_produk='Tabungan' ORDER BY b.jenis_produk ASC") or die (mysqli_error($con));
								while($data = mysqli_fetch_array($sql_produk)){ 
							?>
							<tr>
								<td><?php echo $no++ ?></td>
								<td><?php echo $data['nama_produk'] ?></td>
								<td><?php echo $data['jenis_produk'] ?></td>
								<td><a href="#" class="edit-record btn btn-warning btn-sm" data-id="<?php echo $data['id_produk'] ?>">Detail</a></td>
							</tr>
							<?php } ?>
						</tbody>
					</table>
				</div>

			</div>
		</section>
		
        <!--
        End Features
        ==================================== -->		
        		
        <!--
        Meet Our Team
        ==================================== -->				
		<section id="team" class="team">
			<div class="container">
				<div class="row">
					<div class="sec-title text-center wow fadeInUp animated" data-wow-duration="700ms">
						<h2>Pengurus</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>				
					<div class="sec-sub-title text-center wow fadeInRight animated" data-wow-duration="500ms">
						<p>Berikut Pengurus Inti BMT NU SEJAHTERA</p>
					</div>
					<?php 					
					$sql_pengurus = mysqli_query($con,"SELECT * FROM pengurus") or die (mysqli_error($con));
							while($data = mysqli_fetch_array($sql_pengurus))
					 { ?>
					<!-- single member -->
					<figure class="team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" style="margin-bottom: 30px">
						<div class="member-thumb">
							<img src="admin/dashboard/pengurus/poto/<?php echo $data['poto_pengurus'];?>" alt="Team Member" class="img-responsive" style="border-radius: 6px; width: 272px; height: 303px;">								
					    </div>
						<h4><?php echo $data['nama_pengurus'] ?></h4>
						<span><?php echo $data['jabatan_pengurus'] ?></span>
					</figure>
					<!-- end single member -->
					<?php } ?>
				</div>
			</div>
		</section>		
				
		<!--<section id="facts" class="facts">
			<div class="parallax-overlay">
				<div class="container">
					<div class="row number-counters">
						
						<div class="sec-title text-center mb50 wow rubberBand animated" data-wow-duration="1000ms">
							<h2>Rekapitulasi Tahun 2018</h2>
							<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
						</div>
						
						
						<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms">
							<div class="counters-item">
								
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="300ms">
							<div class="counters-item">
								<i class="fa fa-users fa-3x"></i>
								<strong>2095</strong>
								<p>Anggota</p>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="600ms">
							<div class="counters-item">
								<i class="fa fa-rocket fa-3x"></i>
								<strong>484.464.443</strong>
								<p> Pembiayaan & Tabungan </p>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated" data-wow-duration="500ms" data-wow-delay="900ms">
							
						</div>			
					</div>
				</div>
			</div>
		</section>-->		
       
		<section id="gallery" class="works clearfix">
			<div class="container">
				<div class="row">				
					<div class="sec-title text-center">
						<h2>Galeri</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
					</div>					
				</div>
			</div>
			
			<div class="project-wrapper">
			<?php 
			$sql_gallery = mysqli_query($con,"SELECT * FROM gallery") or die (mysqli_error($con));
				while($data = mysqli_fetch_array($sql_gallery))
			 {
			?>
				<figure class="mix work-item branding">
					<img src="admin/dashboard/gallery/poto/<?php echo $data['foto_gallery'];?>" alt="" style="width: 400px; height: 300px;">
					<figcaption class="overlay">
						<a class="fancybox" rel="works" title="<?php echo $data['caption_gallery'];?>" href="admin/dashboard/gallery/poto/<?php echo $data['foto_gallery'];?>"><i class="fa fa-eye fa-lg"></i></a>
					
						<h4><?php echo $data['judul_gallery'];?></h4>
					</figcaption>
				</figure>
			<?php } ?>
			</div>
		</section>
<?php include 'footer.php' ?>
