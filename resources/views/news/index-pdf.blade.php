<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data News - PDF</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        thead {
            display: table-header-group;
        }
        tbody {
            display: table-row-group;
        }
        tr {
            page-break-inside: avoid;
        }
    </style>
</head>
<body>
    <h3 style="text-align: center;">Laporan Data News</h3>
    <table>
        <thead>
            <tr>
                <th scope="col">No</th>
                <th scope="col">Title</th>
                <th scope="col">Content</th>
                <th scope="col">Tanggal Publish</th>
                <th scope="col">Category</th>
            </tr>
        </thead>
        <tbody>
            <?php $no = 1; ?>
            @foreach($news as $n)
            <tr>
                <td>{{$no}}</td>
                <td>{{$n->title}}</td>
                <td><a href="{{ route('guest.detail', $n->newsId) }}">Content</a></td> 
                <td>{{$n->created_at}}</td>  
                <td>{{$n->category->category_name ?? '-'}}</td>
            </tr>
            <?php $no++; ?>
            @endforeach
        </tbody>
    </table>
    <?php date_default_timezone_set('Asia/Jakarta'); ?>
        <p>{{ date('l, F j, Y \a\t H:i:s') }}</p>
    </body>
</html>
