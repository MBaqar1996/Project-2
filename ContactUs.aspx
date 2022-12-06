<%@ Page Title="" Language="C#" MasterPageFile="~/JS.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="Div1" runat="server" style="margin-top:100px">
        <!-- map section -->

  <section class="map_section">
    <div id="map" class="h-100 w-100 ">
    </div>

      <div class="form_container ">
          <div class="row">
              <div class="col-md-8 col-sm-10 offset-md-4">
                  <form action="">
                      <div class="text-center">
                          <h3>Contact Us
                          </h3>
                      </div>
                      <div>
                          <input type="text" placeholder="Name" class="pt-3">
                      </div>
                      <div>
                          <input type=" text" placeholder="Pone Number">
                      </div>
                      <div>
                          <input type="email" placeholder="Email">
                      </div>
                      <div>
                          <input type="text" class="message-box" placeholder="Message">
                      </div>
                      <div class="d-flex justify-content-center">
                          <button>
                              SEND
                          </button>
                      </div>
                  </form>
              </div>
          </div>
      </div>
    </div>
  </section>


  <!-- end map section -->
    </div>
</asp:Content>

