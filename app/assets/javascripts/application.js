// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap
//= require turbolinks
//= require_tree .

// $(function() {
//     $('body').removeClass('fade-out');
// });


/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function toggle() {
  document.getElementById("myDropdown").classList.toggle("show");
}

function toggle2() {
  document.getElementById("myDropdown2").classList.toggle("show");
}

function toggle3() {
  document.getElementById("myDropdown3").classList.toggle("show");
}


function appear() {
    if (document.getElementById('mySelect').value == "Bobby")
    {
    document.getElementById("spidernum").style.visibility = "visible";
    document.getElementById("hulknum").style.visibility = "hidden";
    document.getElementById("detnum").style.visibility = "hidden";


  }
    else if (document.getElementById('mySelect').value == "Shelby")
  {
    document.getElementById("hulknum").style.visibility = "visible";
    document.getElementById("spidernum").style.visibility = "hidden";
    document.getElementById("detnum").style.visibility = "hidden";

  }
  else if (document.getElementById('mySelect').value == "Zach")
{
  document.getElementById("hulknum").style.visibility = "hidden";
  document.getElementById("spidernum").style.visibility = "hidden";
  document.getElementById("detnum").style.visibility = "visible";

}
}


function issueChooser(){
  var min = 1;
  var max = 5;
  var para = document.createElement("select");
for (var i = min; i<=max; i++){
  var opt = document.createElement('option');
  opt.value = i;
  opt.innerHTML = i;
  para.appendChild(opt);
}
if (document.getElementById('mySelect').value == "Bobby")
{
  var element = document.getElementById("newthing");
  element.appendChild(para);
}
}











function appear2() {
    if (document.getElementById('spidernum').value == "Bobby")
    {
    document.getElementById("hoop").value = 6;
  }
  else if (document.getElementById('spidernum').value == "Shelby")
  {
      document.getElementById("hoop").value = 7;
  }
  else if (document.getElementById('spidernum').value == "Zach")
  {
      document.getElementById("hoop").value = 8;
  }
  else if (document.getElementById('spidernum').value == "Zach2")
  {
      document.getElementById("hoop").value = 9;
  }
  else if (document.getElementById('spidernum').value == "Zach3")
  {
      document.getElementById("hoop").value = 10;
  }
}

function appear22() {
    if (document.getElementById('hulknum').value == "Bobby")
    {
    document.getElementById("hoop").value = 1;
  }
  else if (document.getElementById('hulknum').value == "Shelby")
  {
      document.getElementById("hoop").value = 2;
  }
  else if (document.getElementById('hulknum').value == "Zach")
  {
      document.getElementById("hoop").value = 3;
  }
  else if (document.getElementById('hulknum').value == "Zach2")
  {
      document.getElementById("hoop").value = 4;
  }
  else if (document.getElementById('hulknum').value == "Zach3")
  {
      document.getElementById("hoop").value = 5;
  }
}

function appear222() {
    if (document.getElementById('detnum').value == "Bobby")
    {
    document.getElementById("hoop").value = 11;
  }
  else if (document.getElementById('detnum').value == "Shelby")
  {
      document.getElementById("hoop").value = 12;
  }
  else if (document.getElementById('detnum').value == "Zach")
  {
      document.getElementById("hoop").value = 13;
  }
  else if (document.getElementById('detnum').value == "Zach2")
  {
      document.getElementById("hoop").value = 14;
  }
  else if (document.getElementById('detnum').value == "Zach3")
  {
      document.getElementById("hoop").value = 15;
  }
}


function appear3() {
    if (document.getElementById('mySelect2').value == "Bobby")
    {
    document.getElementById("spidernum2").style.visibility = "visible";
    document.getElementById("hulknum2").style.visibility = "hidden";
    document.getElementById("detnum2").style.visibility = "hidden";


  }
    else if (document.getElementById('mySelect2').value == "Shelby")
  {
    document.getElementById("hulknum2").style.visibility = "visible";
    document.getElementById("spidernum2").style.visibility = "hidden";
    document.getElementById("detnum2").style.visibility = "hidden";

  }
  else if (document.getElementById('mySelect2').value == "Zach")
{
  document.getElementById("hulknum2").style.visibility = "hidden";
  document.getElementById("spidernum2").style.visibility = "hidden";
  document.getElementById("detnum2").style.visibility = "visible";

}

}

function appear4() {
    if (document.getElementById('spidernum2').value == "Bobby")
    {
    document.getElementById("hoop2").value = 6;
  }
  else if (document.getElementById('spidernum2').value == "Shelby")
  {
      document.getElementById("hoop2").value = 7;
  }
  else if (document.getElementById('spidernum2').value == "Zach")
  {
      document.getElementById("hoop2").value = 8;
  }
  else if (document.getElementById('spidernum2').value == "Zach2")
  {
      document.getElementById("hoop2").value = 9;
  }
  else if (document.getElementById('spidernum2').value == "Zach3")
  {
      document.getElementById("hoop2").value = 10;
  }
}

function appear5() {
    if (document.getElementById('hulknum2').value == "Bobby")
    {
    document.getElementById("hoop2").value = 1;
  }
  else if (document.getElementById('hulknum2').value == "Shelby")
  {
      document.getElementById("hoop2").value = 2;
  }
  else if (document.getElementById('hulknum2').value == "Zach")
  {
      document.getElementById("hoop2").value = 3;
  }
  else if (document.getElementById('hulknum2').value == "Zach2")
  {
      document.getElementById("hoop2").value = 4;
  }
  else if (document.getElementById('hulknum2').value == "Zach3")
  {
      document.getElementById("hoop2").value = 5;
  }
}


function appear12() {
    if (document.getElementById('detnum2').value == "Bobby")
    {
    document.getElementById("hoop2").value = 11;
  }
  else if (document.getElementById('detnum2').value == "Shelby")
  {
      document.getElementById("hoop2").value = 12;
  }
  else if (document.getElementById('detnum2').value == "Zach")
  {
      document.getElementById("hoop2").value = 13;
  }
  else if (document.getElementById('detnum2').value == "Zach2")
  {
      document.getElementById("hoop2").value = 14;
  }
  else if (document.getElementById('detnum2').value == "Zach3")
  {
      document.getElementById("hoop2").value = 15;
  }
}




function listPlusCovers(){
  document.getElementById("list_plus_covers").style.visibility = "visible";
}

function justCovers(){
  document.getElementById("wantcomics_just_covers").style.visibility = "visible";
}
