<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <style>
 /* Navbar container */
.navbar {
  overflow: hidden;
  background-color:#333;
  font-family: Arial;

}

/* Links inside the navbar */
.navbar a {
  float: left;
  font-size: 16px;
  color: white;                        /*  navbar inside text */
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* The dropdown container */
.dropdown {
  float: left;
  overflow: hidden;
}

/* Dropdown button */
.dropdown .dropbtn {
  font-size: 16px; 
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: black/* inherit */ ;                /* dropdown buttons */
  font: inherit; /* Important for vertical align on mobile phones */
  margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: gray;                                          /* hover */
}

/* Dropdown content (hidden by default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color:#f9f9f9;
  /* min-width: 160px; */
  width: 100%; 
  left: 0;
  
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}


/* Links inside the dropdown */
.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
  
}

/* Add a grey background color to dropdown links on hover */
/* .dropdown-content a:hover {
  background-color: mistyrose /* #ddd */;
} */

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Mega Menu header, if needed */
.dropdown-content .header {
  background: mediumaquamarine;                           /* menu */
  padding: 16px;
  color: black;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  padding: 10px;
  background-color: #ccc;
  height: 250px;
}

/* Style links inside the columns */
.column a {
  float: none;
  color: black;
  padding: 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

/* Add a background color on hover */
.column a:hover {
  background-color: #ddd;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.topnav-right {
  float: right;
}
.header {
  padding: 15px;
  text-align: center;
  background: teal/* #1abc9c */;              /* welcome to online shopping */
  color: white;
  font-size: 15px;
}
	body, html {
    height: 100%;
    margin: 0;
}

.center{
margin: 0 auto;
}

.topnav {
    overflow: hidden;
    background-color:#333;
}

/* Style the links inside the navigation bar */
.topnav a {
    float: left;
    display: block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* Style the "active" element to highlight the current page */
.topnav a.active {
    background-color: #2196F3;
    color: white;
}

/* Style the search box inside the navigation bar */
.topnav input[type=text] {
    float: right;
    padding: 6px;
    border: none;
    margin-top: 8px;
    margin-right: 16px;
    font-size: 17px;
}

/* When the screen is less than 600px wide, stack the links and the search field vertically instead of horizontally */
@media screen and (max-width: 600px) {
    .topnav a, .topnav input[type=text] {
        float: none;
        display: block;
        text-align: left;
        width: 100%;
        margin: 0;
        padding: 14px;
    }
    .topnav input[type=text] {
        border: 1px solid #ccc;
    }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
 /*  margin: auto; */
  text-align: center;
  font-family: arial;
  position: absolute;
 float: left;
 padding: 0 20px 20px 0;
    top: 25%;
    left: 5%;
   /*  margin-left: -(X/2)px;
    margin-top: -(Y/2)px; */
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}


.card1 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
 /*  margin: auto; */
  text-align: center;
  font-family: arial;
  position: absolute;
 float: left;
 padding: 0 20px 20px 0;
    top: 25%;
    left: 35%;
   /*  margin-left: -(X/2)px;
    margin-top: -(Y/2)px; */
}

.price {
  color: grey;
  font-size: 22px;
}

.card1 button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card1 button:hover {
  opacity: 0.7;
}

.card2 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
 /*  margin: auto; */
  text-align: center;
  font-family: arial;
  position: absolute;
 float: left;
 padding: 0 20px 20px 0;
    top: 25%;
    left: 65%;
   /*  margin-left: -(X/2)px;
    margin-top: -(Y/2)px; */
}

.price {
  color: grey;
  font-size: 22px;
}

.card2 button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card2 button:hover {
  opacity: 0.7;
}
</style>
</head>


<body >

	<div class="header">
  <h1>Welcome to CAPSTORE</h1>
  
</div>
	<div class="navbar">
  <a href="#home">Home</a>

 <!--  <a href="#news">News</a> -->
  <div class="dropdown">
    <button class="dropbtn">Category 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <div class="header">
        <h2>Menu</h2>
      </div> 
      <div class="row">
        <div class="column">
          <h3>Electronics</h3>
          <a href="#">Mobiles</a>
          <a href="#">Ac</a>
          <a href="#">Tv</a>
        </div>
        <div class="column">
          <h3>Clothing</h3>
          <a href="#">Men</a>
          <a href="#">Women</a>
          <a href="#">Kids</a>
        </div>
        <div class="column">
          <h3>Furniture and Home</h3>
          <a href="#">Kitchen & Dining</a>
          <a href="#">Furniture</a>
          <a href="#">Decor</a>
        </div>
      </div>
    </div>
  </div>
  <a href="cart.jsp">Cart</a> 
  <a href="wishlist.jsp">Wishlist</a>
  
  <div class="dropdown">
    <button class="dropbtn">Sort 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
          <a href="#">Sort(A-Z)</a>
          <a href="#">Sort(Z-A)</a>
          <a href="#">Sort(Price: High to Low)</a>
          <a href="#">Sort (Price: Low to High)</a>
        </div>
        </div>
        
        
        <div class="card">
  <img src="D:\Users\bbathula\Desktop\Spring\download.jpg" alt="Denim Jeans" style="width:72%">
  <h1>Tailored Jeans</h1>
  <p class="price">Rs.1500</p>
  <p>Super slim and comfy Jeans for women</p>
  <p><button>Add to Cart</button></p>
</div>
        
     <div class="card1">
  <img src="D:\Users\bbathula\Desktop\Spring\sofa.jpg" alt="Sofas" style="width:100%">
  <h1>Comfy Sofa</h1>
  <p class="price">Rs.25,000</p>
  <p>Customized designer sofa</p>
  <p><button>Add to Cart</button></p>
</div> 

  <div class="card2">
  <img src="D:\Users\bbathula\Desktop\Spring\samsung.jpg" alt="Mobiles" style="width:52%">
  <h1>Samsung Galaxy Note 8</h1>
  <p class="price">Rs.49,000</p>
  <p>6.3-inch QHD+ Super AMOLED Infinity display</p>
  <p><button>Add to Cart</button></p>
</div> 

  <div class="topnav-right">
  <a href="login" >Login/SignUp</a>
  </div>
  <div class="topnav">
  <input type="text" placeholder="Search..">
</div>
</div>
</body>
</html>
