<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{$title}}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  </head>
  <body>
      @auth
      <nav class="navbar navbar-expand-lg bg-body-tertiary border">
        <div class="container-fluid">
          <a class="navbar-brand" href="/news">SiBeta</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarNav">
          
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="/news">Data News</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="/categories">Data Category</a>
              </li>
            </ul>

            <ul class="navbar-nav ms-auto">
                  <form action="{{ route('logout') }}" method="POST">
                      @csrf
                      @method('DELETE')
                      <button class="btn btn-light" type="submit">Log Out</button>
                  </form>
            </ul>
          </div>
        </div>
      </nav>
    @endauth

        @yield('content')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
  </body>
</html>