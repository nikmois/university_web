<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-xl-10 d-flex align-items-center">
        <h1 class="logo mr-auto"><a href="index.html">Presento<span>.</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt=""></a>-->

        <nav class="nav-menu d-none d-lg-block">
          <ul>
<?php
$langTable=mysqli_query($link, "SELECT * FROM kta20v_languages ORDER BY listOrder");
//применяет SQL запрос к базе данных. создаем таблицу с копией информации из базы
while($langRow=mysqli_fetch_assoc($langTable)){
//выдергивает по одной строке из таблицы, по названию
  echo '<li><a href="'.$langRow['code'].'">'.$langRow['title'].'</a></li>';
//вставляет указанную информацию из строки в указанное место

}

?>
            <li class="active"><a href="#header">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#portfolio">Portfolio</a></li>
            <li><a href="#team">Team</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li class="drop-down"><a href="">Drop Down</a>
              <ul>
                <li><a href="#">Drop Down 1</a></li>
                <li class="drop-down"><a href="#">Deep Drop Down</a>
                  <ul>
                    <li><a href="#">Deep Drop Down 1</a></li>
                    <li><a href="#">Deep Drop Down 2</a></li>
                    <li><a href="#">Deep Drop Down 3</a></li>
                    <li><a href="#">Deep Drop Down 4</a></li>
                    <li><a href="#">Deep Drop Down 5</a></li>
                  </ul>
                </li>
                <li><a href="#">Drop Down 2</a></li>
                <li><a href="#">Drop Down 3</a></li>
                <li><a href="#">Drop Down 4</a></li>
              </ul>
            </li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </nav><!-- .nav-menu -->

        <a href="#about" class="get-started-btn scrollto">Get Started</a>
      </div>
    </div>

  </div>
</header><!-- End Header -->
