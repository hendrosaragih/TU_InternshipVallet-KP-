  <div class="container-contact100">
    <div class="wrap-contact100">
      <form class="contact100-form validate-form" action="<?php echo base_url('user/order_user'); ?>" method="post">

        <center>
          <span><img style="margin-bottom: 25px" src="https://vallet.id/wp-content/uploads/2019/04/cropped-Logo-Vallet-2.png"></span>
          <span class="contact100-form-title">Design Order</span>
        </center>

        <div class="wrap-input100 validate-input" data-validate="Nama harus di isi.">
          <span class="label-input100">Nama</span>
          <input class="input100" type="text" name="name" placeholder="Contoh : Wahyu hidayat R">
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input" data-validate="Email tidak valid.">
          <span class="label-input100">Email</span>
          <input class="input100" type="text" name="email" placeholder="contoh : vallet@gmail.com">
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100">
          <span class="label-input100">Nomor Telepon</span>
          <input class="input100" type="text" name="kontak_perusahaan" placeholder="08191234xxxx">
          <span class="focus-input100"></span>
        </div>

        <div class="form-group validate-input">
          <span class="label-input100">Jenis Desain</span>
          <!-- <input class="form-control" type="text" name="jenis_pesanan"> -->
          <div class="form-group">
            <select class="form-control" id="jenis_desain" name="jenis_pesanan" onchange="autofill()">
              <option value="Rp 90000,-">Banner Aplikasi</option>
              <option value="Rp 75.000,-">Brosur (2 Fold)</option>
              <option value="Rp 75.000,-">Brosur (3 Fold)</option>
              <option value="Rp 75.000,-">Buku Menu</option>
              <option value="Rp 120.000,-">Cover Buku</option>
              <option value="Rp 75.000,-">Cover Majalah</option>
              <option value="Rp 120.000,-">CV</option>
              <option value="Rp 50.000,-">Desain Agenda</option>
              <option value="Rp 50.000,-">Desain Amplop</option>
              <option value="Rp 75.000,-">Desain Artikel</option>
              <option value="Rp 50.000,-">Desain Brief</option>
              <option value="Rp 300.000,-">Desain Buku Tahunan</option>
              <option value="Rp 75.000,-">Desain Katalog</option>
              <option value="Rp 50.000,-">Desain Pembatas Buku </option>
              <option value="Rp 75.000,-">Desain Proposal</option>
              <option value="Rp 75.000,-">Flyer</option>
              <option value="Rp 150.000,-">Infografis</option>
              <option value="Rp 50.000,-">Invoice</option>
              <option value="Rp 150.000,-">Kalender</option>
              <option value="Rp 75.000,-">Kartu Nama</option>
              <option value="Rp 100.000,-">Kartu Resep</option>
              <option value="Rp 50.000,-">Kiriman FB</option>
              <option value="Rp 50.000,-">Kiriman IG</option>
              <option value="Rp 75.000,-">Kop Surat</option>
              <option value="Rp 75.000,-">Laporan Formal</option>
            </select>
          </div>
          <span class="focus-input100"></span>
        </div>


        <div class="wrap-input100">
          <span class="label-input100">Harga</span>
          <input class="input100" type="text" name="harga" id="harga">
          <span class="focus-input100"></span>
        </div>

        <div class="wrap-input100 validate-input" data-validate="Detail pesanan harus di isi.">
          <span class="label-input100">Detail Pesanan</span>
          <textarea class="input100" name="message" placeholder="Ketik detail pesanan disini..."></textarea>
          <input type='file' onchange="readURL(this)" required>
          <span class="focus-input100"></span>
        </div>

        <div class="form-group">
          <!-- <span class="label-input100"></span> -->
          <!-- <img id="image" src="#" alt="your image"> -->
        </div>


        <div class="container-contact100-form-btn">
          <div class="wrap-contact100-form-btn">
            <div class="contact100-form-bgbtn"></div>
            <button class="contact100-form-btn">
              <span>
                Order Now
                <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
              </span>
            </button>
          </div>
        </div>
      </form>
    </div>
  </div>

  <script>
    function popUpMenu() {

      Swal.fire({
        title: 'Berhasil',
        text: 'Data user telah berhasil tersimpan',
        confirmButtonText: 'Cool'
      })
    }

    function autofill() {
      var tes = document.getElementById("jenis_desain").value;
      document.getElementById("harga").value = tes;
    }
  </script>