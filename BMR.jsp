<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome fsto The BMR Calculator</title>
</head>

<body>

<form name="calc" id="calc" method="get">
    <h2> Calculate Your BMR</h2>
    <h2> Calculate Your BMR&#127947;</h2>
    First Name: <input type="text" id ="fname" name="fname" required>
    <br/>
    Last Name: <input type="text" id ="lname" name="lname" required>
    <br/>
    Gender:  <input type="radio" id="male" name="gender" value="male" required>
             <label for="male">Male</label>
             <input type="radio" id="female" name="gender" value="female" required>
             <label for="female">Female</label>
    <br/>
    Age (in years): <input type="number" id="age" name="age" required>
    <br/>
    Height (in cm): <input type="number" id="height" name="height" required>
    <br/>
    Weight (in kg): <input type="number" id="weight" name="weight" required>
    <br/>

    <br/>
    <input id = "submit" type="submit" value="Calculate BMR">
</form>

<br/>
<br/>

<p id="-"></p>

<br/>
<br/>

<h1 id="fullName"></h1>
<p id="bmrCalc"></p>

<script>
    "use strict"

    let firstName, lastName, age, height, weight, BMR, gender;
    document.getElementById('calc').onsubmit = function (e) {

        e.preventDefault(); // stop submission

        if (document.getElementById('male').checked) {
            gender = "m";
        } else if (document.getElementById('female').checked) {
            gender = "f";
        }

        firstName = document.getElementById('fname').value;
        lastName = document.getElementById('lname').value;
        // gender = document.getElementById('gender').value;
        age = document.getElementById('age').value;
        height = document.getElementById('height').value;
        weight = document.getElementById('weight').value;

        // BMR Calculation
        // Men: BMR = 88.362 + (13.397 x weight in kg) + (4.799 x height in cm) – (5.677 x age in years)
        // Women: BMR = 447.593 + (9.247 x weight in kg) + (3.098 x height in cm) – (4.330 x age in years)
        if (gender == "m") {
            BMR = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
        } else if (gender == "f") {
            BMR = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);
        }


        document.getElementById("fullName").innerHTML = "Hello " + firstName + " " + lastName + " " + "&#128527;";
        document.getElementById("bmrCalc").innerHTML = "Your BMR is: " + BMR;
        document.getElementById("-").innerHTML = "---------------------------------------------"
        // return false;
    }

</script>

</body>
</html>