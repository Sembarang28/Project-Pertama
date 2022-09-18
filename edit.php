<?php ob_start();?>
<!DOCTYPE html>
<head>
    <title>Add Games</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
    <?php
        include_once("connect.php");
        $id_games = $_GET['id_games'];
        $game = mysqli_query($mysqli, "SELECT * FROM games WHERE id_games = '$id_games'");
        while ($game_data = mysqli_fetch_array($game)){
            $title = $game_data['Title'];
            $genre = $game_data['Genre'];
            $developer = $game_data['Developer'];
            $publisher = $game_data['Publisher'];
            $release_date = $game_data['Release_Date'];
            $file_size = $game_data['File_Size'];
            $price = $game_data['Price'];
            $link = $game_data['Link'];
            $details = $game_data['Details'];
            $image = $game_data['img'];
        }
    ?>
    <div class="container-fluid p-5 bg-primary">
        <div class="col-md-12 text-center text-white">
            <h1>EDIT GAMES</h1>
        </div>
    </div>
    <div class="container-fluid p-2 bg-dark text-white text-center">
            <h5>Isi Data Berikut!</h5>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <form action="edit.php?id_games=<?php echo $id_games ?>" method="post" name="form1">
                    <table width="100%" class="table-bordered" cellpadding="10">
                        <tr>
                            <td>id games</td>
                            <td><input type="text" readonly="" class="form-control" name="id_games" value="<?php echo $id_games; ?>"></td>
                        </tr>
                        <tr>
                            <td>Title</td>
                            <td><input type="text" class="form-control" name="title" value="<?php echo $title; ?>"></td>
                        </tr>
                        <tr>
                            <td>Genre</td>
                            <td><input type="text" class="form-control" name="genre" value="<?php echo $genre; ?>"></td>
                        </tr>
                        <tr>
                            <td>Developer</td>
                            <td><input type="text" class="form-control" name="developer" value="<?php echo $developer; ?>"></td>
                        </tr>
                        <tr>
                            <td>Publisher</td>
                            <td><input type="text" class="form-control" name="publisher" value="<?php echo $publisher; ?>"></td>
                        </tr>
                        <tr>
                            <td>Release Date</td>
                            <td><input type="date" class="form-control" name="release_date" value="<?php echo $release_date; ?>"></td>
                        </tr>
                        <tr>
                            <td>File Size</td>
                            <td><input type="number" class="form-control" name="file_size" value="<?php echo $file_size; ?>"></td>
                        </tr>
                        <tr>
                            <td>Price</td>
                            <td><input type="number" class="form-control" name="price" value="<?php echo $price; ?>"></td>
                        </tr>
                        <tr>
                            <td>Link</td>
                            <td><input type="text" class="form-control" name="link" value="<?php echo $link; ?>"></td>
                        </tr>
                        <tr>
                            <td>Details</td>
                            <td><input type="text" class="form-control" name="details" value="<?php echo $details; ?>"></td>
                        </tr>
                        <tr>
                            <td>Image</td>
                            <td><input type="text" class="form-control" name="image" value="<?php echo $image; ?>"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" class="form-control btn btn-primary" name="Submit" value="Add"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

<?php 
    if (isset($_POST['Submit'])){
        $id_games = $_POST['id_games'];
        $title = $_POST['title'];
        $genre = $_POST['genre'];
        $developer = $_POST['developer'];
        $publisher = $_POST['publisher'];
        $release_date = $_POST['release_date'];
        $file_size = $_POST['file_size'];
        $price = $_POST['price'];
        $link = $_POST['link'];
        $details = $_POST['details'];
        $image = $_POST['image'];
        
        $result = mysqli_query($mysqli, "UPDATE games SET Title = '$title', Genre = '$genre', Developer = '$developer',
        Publisher = '$publisher', Release_Date = '$release_date', File_Size = '$file_size', price = '$price', Link = '$link',
        Details = '$details', img = '$image' WHERE id_games = '$id_games';");
        
        header("Location:index.php");
        ob_end_flush();
    }
?>