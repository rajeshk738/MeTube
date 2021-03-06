<?php
require_once("other/connection.php");
require_once("other/home.php");
?>


<form action="uploadProcessing.php" method="POST" enctype="multipart/form-data">

    <div class="mb-3">
        <?php
            if(isset($_GET["file_exist"])) {
                echo "<p style='color: Red'> File exists! Please upload again</p>";
            }
        ?>
        <label for="formFile" class="form-label">Upload media file</label>
        <input class="form-control" type="file" id="formFile" name = 'mediaFile' required>
    </div>

    <div class="form-floating">
        <label for="title">Title</label>
        <textarea class="form-control" name="title" rows = "1"  maxlength="50"
                  placeholder="Enter your title here..." id="title" required></textarea>
    </div>
    <br>
    <div class="form-floating">
        <label for="keywords">Keywords</label>
        <textarea class="form-control" name="keywords" placeholder="Enter keywords of the media file, each keyword separated by ','" id="keywords"></textarea>
    </div>
    <br>

    <label class="form-label" for="category">
        Select a category:
    </label>
    <div id = 'category'>

      <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Music" value="Music">
            <label class="form-check-label" for="Music">
                Music
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Fitness" value="Fitness">
            <label class="form-check-label" for="Fitness">
                Fitness
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="News" value="News">
            <label class="form-check-label" for="News">
                News
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Motivation" value="Motivation">
            <label class="form-check-label" for="Motivation">
                Motivation
            </label>
        </div>


        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Movies" value="Movies">
            <label class="form-check-label" for="Movies">
                Movies
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Travel" value="Travel">
            <label class="form-check-label" for="Travel">
                Travel
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="CarsAndBikes" value="CarsAndBikes">
            <label class="form-check-label" for="CarsAndBikes">
                Cars and Bikes
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Education" value="Education">
            <label class="form-check-label" for="Education">
                Education
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Animal" value="Animal">
            <label class="form-check-label" for="Animal">
                Animal
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Sports" value="Sports">
            <label class="form-check-label" for="Sports">
                Sports
            </label>
        </div>

        <div class="form-check">
            <input type="radio" class="form-check-input" name="category" id="Other" value="Other" checked>
            <label class="form-check-label" for="Other">
                Other
            </label>
        </div>

    </div>
    <br>
    <label class="form-label" for="visibility">
        Visibility:
    </label>
    <div id = 'visibility'>
        <div class="form-check">
            <input type="radio" class="form-check-input" name="visibility" id="Public" value="Public" checked>
            <label class="form-check-label" for="Public">
                Public
            </label>
        </div>
        <div class="form-check">
            <input type="radio" class="form-check-input" name="visibility" id="Friend" value="Friend">
            <label class="form-check-label" for="Friend">
                Friend
            </label>
        </div>
        <div class="form-check">
            <input type="radio" class="form-check-input" name="visibility" id="Family" value="Family">
            <label class="form-check-label" for="Family">
                Family
            </label>
        </div>
        <div class="form-check">
            <input type="radio" class="form-check-input" name="visibility" id="Favourite" value="Favourite">
            <label class="form-check-label" for="Favourite">
                Favourite
            </label>
        </div>
    </div>
    <br>
    <div class="form-floating">
        <label for="floatingTextarea">Description</label>
        <textarea class="form-control" cols = '6' rows = '6' name = 'description' placeholder="Enter file description here.." id="floatingTextarea" maxlength="200"></textarea>
    </div>
    <br>
    <button class="btn btn btn-primary" value="upload" name="upload" type="submit" />Upload</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button class="btn btn btn-secondary" onclick="location.href='index.php?page=Home';" type="button" >Cancel</button>

</form>
