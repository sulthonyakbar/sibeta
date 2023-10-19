<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{$title}}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  <body>
      <nav class="navbar navbar-expand-lg bg-body-tertiary border">
        <div class="container-fluid">
          <a class="navbar-brand" href="/">SiBeta</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarNav">
          
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/">News</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="/" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/">All Categories</a></li>
                        @foreach($category as $c)
                            <li>
                                <a class="dropdown-item" href="/?category={{ $c->categoryId }}" 
                                    @if(isset($selectedCategory) && $selectedCategory == $c->categoryId) 
                                        style="font-weight: bold;" 
                                    @endif
                                >
                                    {{ $c->category_name }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </li>
            </ul>
          </div>
        </div>
      </nav>
        @yield('content')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>