<%@ Page Title="" Language="C#" MasterPageFile="~/JS.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="Div1" runat="server" style="margin-top:100px">
         <section class="about_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="img-box">
            <img src="images/about.png" alt="" />
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <h2 class="custom_heading">
              About Our Pets
              <span>
                Clinic
              </span>
            </h2>
            <p>
              Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
              industry's standard dummy text ever since theLorem Ipsum is simply dummy text of the printing and
              typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the
            </p>
            <div>
              <a href="">
                About More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
 <!-- service section -->
  <section class="service_section layout_padding">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-6 offset-md-2">
          <h2 class="custom_heading">
            Our <span>Services</span>
          </h2>
          <div class="container layout_padding2">
            <div class="row">
              <div class="col-md-4">
                <div class="img_box">
                  <img src="images/s-1.png" alt="">
                </div>
                <div class="detail_box">
                  <h6>
                    Pet Care
                  </h6>
                  <p>
                    onsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                    enim ad minim veniam, quis nostrud exe
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="img_box">
                  <img src="images/s-2.png" alt="">
                </div>
                <div class="detail_box">
                  <h6>
                    Pet Hotel
                  </h6>
                  <p>
                    onsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                    enim ad minim veniam, quis nostrud exe
                  </p>
                </div>
              </div>
              <div class="col-md-4">
                <div class="img_box">
                  <img src="images/s-3.png" alt="">
                </div>
                <div class="detail_box">
                  <h6>
                    Emergency
                  </h6>
                  <p>
                    onsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                    enim ad minim veniam, quis nostrud exe
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div>
            <a href="">
              Read More
            </a>
          </div>
        </div>
        <div class="col-md-4">
          <img src="images/tool.png" alt="" class="w-100">
        </div>
      </div>
    </div>
  </section>

  <!-- end service section -->
         <!-- gallery section -->
  <section class="gallery-section layout_padding">
    <div class="container">
      <h2>
        Our Gallery
      </h2>
    </div>
    <div class="container ">
      <div class="img_box box-1">
        <img src="images/g-1.png" alt="">
      </div>
      <div class="img_box box-2">
        <img src="images/g-2.png" alt="">
      </div>
      <div class="img_box box-3">
        <img src="images/g-3.png" alt="">
      </div>
      <div class="img_box box-4">
        <img src="images/g-4.png" alt="">
      </div>
      <div class="img_box box-5">
        <img src="images/g-5.png" alt="">
      </div>
    </div>
  </section>
  <!-- end gallery section -->

         <!-- buy section -->

  <section class="buy_section layout_padding">
    <div class="container">
      <h2>
        You Can Buy Pet From Our Clinic
      </h2>
      <p>
        consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
        veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
      </p>
      <div class="d-flex justify-content-center">
        <a href="">
          Buy Now
        </a>
      </div>
    </div>
  </section>

  <!-- end buy section -->
    </div>
</asp:Content>

