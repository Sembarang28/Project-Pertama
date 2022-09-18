<!DOCTYPE html>
<head>
    <title>Tugas Besar</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
    <?php
        include_once ("connect.php");
        $game = mysqli_query($mysqli, "SELECT * FROM games");
    ?>
</head>
<body>
    <div class="p-5 bg-primary text-white text-center">
        <h1>Play Your Games</h1>
        <p>Play Has No Limits!</p> 
    </div>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="container-fluid">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="btn btn-dark" href="add.php">Add Games</a>
                </li>
        </div>
    </nav>

    <div class="container bg-light rounded">
        <div class="row">
            <?php
                while ($games = mysqli_fetch_array($game)){
                    
                    $date = date_create($games['Release_Date']);    
                    echo "<div class='col-sm-12 mt-5 rounded'>";
                        echo "<h2 class='align'>".$games['Title']."</h2>";
                        echo "<h5>Release Date, "; 
                        echo date_format($date,'F d, Y');
                        echo "</h5>";
                        echo "<img src=".$games['img']." class='rounded mx-auto d-block image' width='1000px'>";
                        echo "<table class='table mt-3'>
                                <tr>
                                    <td>
                                        Genre 
                                    </td>
                                    <td>
                                        : ".$games['Genre']."
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Developer 
                                    </td>
                                    <td>
                                        : ".$games['Developer']."
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Publisher 
                                    </td>
                                    <td>
                                        : ".$games['Publisher']."
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        File Size 
                                    </td>
                                    <td>
                                        : ".$games['File_Size']." GB
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Price 
                                    </td>
                                    <td>
                                        : Rp ".$games['Price']."
                                    </td>
                                </tr>
                                <tr>
                                    <td><a href='edit.php?id_games=".$games['id_games']."' class='btn btn-warning col-sm-3'>Edit</a></td>
                                </tr>
                                <tr>
                                    <td><a href='#' class='btn btn-danger col-sm-3'
                                    onclick='confirmation(`".$games['id_games']."`)'>Delete</a></td>
                                </tr>
                            </table>";
                        echo "<h6>About This Game</h6><div style='text-align: justify;'>".str_replace("\n", "",$games['Details'])."</div>";
                    echo "</div>";
                    echo "<table class='table'>
                            <tr>
                                <td><a href=".$games['Link']." class='btn btn-primary col-sm-1'>Buy</a></td>
                            </tr>
                        </table>";
                }
            ?> 
        </div>
    </div>

    <div class="p-3 bg-dark text-white text-center">
        <p class="align_text">Always Be Fun!</p>
    </div>

</body>
</html>

<script type="text/javascript">
    function confirmation (id_games) {
        if (confirm('Apakah anda yakin akan menghapus data game ini?')){
            window.location.href = 'delete.php?id_games='+id_games;
        }
    }
</script>