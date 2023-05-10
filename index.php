<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Database Final Project</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <main>
      <div>
        <form id="loginform">
          <div>
            <label for="login">Please have the first digit of your IDs correspond to the following number:</label>
            <select id="login" name="login">
              <option value="1">1 - Josiah Cabanilla</option>
              <option value="2">2 - J Coyne</option>
              <option value="3">3 - Gianna Haynes</option>
              <option value="4">4 - Scott Krock</option>
              <option value="5">5 - Ari'i Marrello</option>
              <option value="6">6 - Chelsea Shipman</option>
              <option value="7">7 - Anthony Dedona</option>
              <option value="8" selected>8 - Guest</option>
            </select>
          </div>
        </form>
        <div id="insertforms">
          <form id="viewerform" name="viewerform" method="post" action="viewer.php">
            <h2>Add a New Viewer</h2>
            <div>
              <label for="vID">ID</label>
              <input type="number" id="vID" name="vID" min="1000" max="8999" step="1" required />
            </div>
            <div>
              <label for="fname">First Name</label>
              <input type="text" id="fname" name="fname" placeholder="Enter first name" required />
            </div>
            <div>
              <label for="lname">Last Name</label>
              <input type="text" id="lname" name="lname" placeholder="Enter last name" required />
            </div>
            <div>
              <label for="viewerfavemovie">Favorite Movie</label>
              <select id="viewerfavemovie" name="viewerfavemovie">
                <?php 
                  $con = mysqli_connect('localhost', 'root', '','blue');
                  $query = "SELECT MovieName FROM Movie";
                  $res = mysqli_query($con,$query);
                  while ($row = $res->fetch_assoc())
                  {
                    echo "<option value = '{$row['MovieName']}'";
                    echo ">{$row['MovieName']}</option>";
                  }
                ?>
              </select>
            </div>
            <div>
              <label for="viewerfaveactor">Favorite Actor</label>
              <select id="viewerfaveactor" name="viewerfaveactor">
                <?php 
                  $con = mysqli_connect('localhost', 'root', '','blue');
                  $query = "SELECT ActorID, ActornameFirst, ActornameLast FROM Actor";
                  $res = mysqli_query($con,$query);
                  while ($row = $res->fetch_assoc())
                  {
                    echo "<option value = '{$row['ActorID']}'";
                    echo ">{$row['ActornameFirst']} {$row['ActornameLast']}</option>";
                  }
                ?>
              </select>
            </div>
            <input type="submit" name="Submit" id="Submit" value="Submit" class="button">
          </form>
          <form id="movieform" name="movieform" method="post" action="movie.php">
            <h2>Add a New Movie</h2>
            <div>
              <label for="mID">ID</label>
              <input type="number" id="mID" name="mID" min="1000" max="8999" step="1" required />
            </div>
            <div>
              <label for="mtitle">Movie Title</label>
              <input type="text" id="mtitle" name="mtitle" placeholder="Title..." required />
            </div>
            <div>
              <label for="mgenre">Genre</label>
              <select id="mgenre" name="mgenre">
                <option value="Action">Action</option>
                <option value="Adventure">Adventure</option>
                <option value="Comedy">Comedy</option>
                <option value="Drama">Drama</option>
                <option value="Fantasy">Fantasy</option>
                <option value="Historical">Historical</option>
                <option value="Horror">Horror</option>
                <option value="Musical">Musical</option>
                <option value="Mystery">Mystery</option>
                <option value="Romance">Romance</option>
                <option value="Sci-Fi">Sci-Fi</option>
                <option value="Thriller">Thriller</option>
                <option value="Western">Western</option>
              </select>
            </div>
            <div class="personname">
              <div>
                <label for="dfname">Director First Name</label>
                <input type="text" id="dfname" name="dfname" placeholder="Director's first name" required />
              </div>
              <div>
                <label for="dlname">Director Last Name</label>
                <input type="text" id="dlname" name="dlname" placeholder="Director's last name" required />
              </div>
            </div>
            <div class="personname">
              <div>
                <label for="wfname">Writer First Name</label>
                <input type="text" id="wfname" name="wfname" placeholder="Writer's first name" required />
              </div>
              <div>
                <label for="wlname">Writer Last Name</label>
                <input type="text" id="wlname" name="wlname" placeholder="Writer's last name" required />
              </div>
            </div>
            <label for="releasedate">Release Date</label>
            <input type="date" id="releasedate" name="releasedate" required />
            <div>
              <label for="mlength">Length (in Minutes)</label>
              <input type="number" id="mlength" name="mlength" min="1" max="500" step="1" required />
            </div>
            <div>
              <label for="mrating">Rating</label>
              <select id="mrating" name="mrating">
                <option value="G">G</option>
                <option value="PG">PG</option>
                <option value="PG-13">PG-13</option>
                <option value="R">R</option>
                <option value="N/A">N/A</option>
              </select>
            </div>
            <div>
              <label for="mIMDB">Score on IMDB</label>
              <input type="number" id="mIMDB" name="mIMDB" min="0" max="10" step="0.1" required />
            </div>
            <input type="submit" name="Submit" id="Submit" value="Submit" class="button">
          </form>
          <div id="actorcharacter">
            <form id="actorform" name="actorform" method="post" action="actor.php">
              <h2>Add a New Actor</h2>
              <div>
                <label for="aID">ID</label>
                <input type="number" id="aID" name="aID" min="1000" max="8999" step="1" required />
              </div>
              <div>
                <label for="afname">First Name</label>
                <input type="text" id="afname" name="afname" placeholder="enter their first name" required />
              </div>
              <div>
                <label for="alname">Last Name</label>
                <input type="text" id="alname" name="alname" placeholder="enter their last name" required />
              </div>
              <div id="fileupload">
                <label for="aimage">Image Url</label>
                <input type="text" id="aimage" name="aimage" placeholder="link to an image on Wikipedia or IMDB" />
              </div>
              <input type="submit" name="Submit" id="Submit" value="Submit" class="button">
            </form>
            <form id="characterform" name="characterform" method="post" action="character.php">
              <h2>Add a New Character</h2>
              <div>
                <label for="cID">ID</label>
                <input type="number" id="cID" name="cID" min="1000" max="8999" step="1" required />
              </div>
              <div>
                <label for="cname">Character Name</label>
                <input type="text" id="cname" name="cname" placeholder="enter the character's name" required />
              </div>
              <div>
                <label for="cquote">Character Quote</label>
                <input type="text" id="cquote" name="cquote" placeholder="enter a quote from the character" />
              </div>
              <div>
                <label for="charmovie">Source Movie</label>
                <select id="charmovie" name="charmovie">
                  <?php 
                    $con = mysqli_connect('localhost', 'root', '','blue');
                    $query = "SELECT MovieID, MovieName FROM Movie";
                    $res = mysqli_query($con,$query);
                    while ($row = $res->fetch_assoc())
                    {
                      echo "<option value = '{$row['MovieID']}'";
                      echo ">{$row['MovieName']}</option>";
                    }
                  ?>
                </select>
              </div>
              <div>
                <label for="charactor">Acted By</label>
                <select id="charactor" name="charactor">
                  <?php 
                    $con = mysqli_connect('localhost', 'root', '','blue');
                    $query = "SELECT ActorID, ActornameFirst, ActornameLast FROM Actor";
                    $res = mysqli_query($con,$query);
                    while ($row = $res->fetch_assoc())
                    {
                      echo "<option value = '{$row['ActorID']}'";
                      echo ">{$row['ActornameFirst']} {$row['ActornameLast']}</option>";
                    }
                  ?>
                </select>
              </div>
              <input type="submit" name="Submit" id="Submit" value="Submit" class="button">
            </form>
          </div>
        </div>
        <div id="buttons">
          <form method="post">
            <input type="submit" name="highrating" value="Highest Rated Movies" class="button">
            <input type="submit" name="genrenum" value="Number of Movies per Genre" class="button">
            <input type="submit" name="favebutton" value="Viewer's Favorites" class="button">
          </form>
          <table id="resulttable">
            <tbody>
              <?php
                $con = mysqli_connect('localhost', 'root', '','blue');
                if(isset($_POST['highrating'])) {
                  $query = "SELECT `MovieName`, `IMDB`, `Rating` FROM Movie ORDER BY `IMDB` DESC;";
                  $res = mysqli_query($con,$query);
                  echo "<tr><th>Movie Name</th><th>IMDB Score</th><th>MPAA Rating</th></td>";
                  while ($row = $res->fetch_assoc())
                  {
                    echo "<tr><td>{$row['MovieName']}</td><td>{$row['IMDB']}</td><td>{$row['Rating']}</td></tr>";
                  }
                }
                if(isset($_POST['genrenum'])) {
                  $query = "SELECT Genre, COUNT(Genre) AS numPerGenre FROM Movie GROUP BY Genre ASC; ";
                  $res = mysqli_query($con,$query);
                  echo "<tr><th>Genre</th><th>Number of Movies</th></td>";
                  while ($row = $res->fetch_assoc())
                  {
                    echo "<tr><td>{$row['Genre']}</td><td>{$row['numPerGenre']}</td></tr>";
                  }
                }
                if(isset($_POST['favebutton'])) {
                  $query = 'SELECT CONCAT(UsernameFirst, " ", UsernameLast) AS Viewer, CONCAT(ActornameFirst, " ", ActornameLast) AS FavoriteActor, FavoriteMovie FROM Viewer, Actor WHERE Viewer.FavoriteActor = Actor.ActorID ORDER BY UsernameLast ASC;';
                  $res = mysqli_query($con,$query);
                  echo "<tr><th>Viewer</th><th>Favorite Actor</th><th>Favorite Movie</th></td>";
                  while ($row = $res->fetch_assoc())
                  {
                    echo "<tr><td>{$row['Viewer']}</td><td>{$row['FavoriteActor']}</td><td>{$row['FavoriteMovie']}</td></tr>";
                  }
                }
              ?>
          </tbody>
        </table>
        </div>
      </div>
    </main>
  </body>
</html>