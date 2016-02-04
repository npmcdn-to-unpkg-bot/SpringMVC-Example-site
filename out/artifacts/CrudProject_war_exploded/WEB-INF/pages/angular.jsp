<!DOCTYPE html>
<html ng-app="">
<head>  <!-- www.techstrikers.com -->
    <title>My first AngularJS code</title>
    <script SRC="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js">
    </script>

</head>
<body bgcolor="#bnde45">
<fieldset>
    <legend>AngularJS Merge Function</legend>
    <script>

        var sourceObj1 = {'name': 'Jimi', 'address': 'Tashkent'};
        var sourceObj2 = {'address': '12-13/A12', 'zip': '21333'};
        var myDest = {};
        angular.merge(myDest, sourceObj1, sourceObj2);

        console.log(myDest.name);
        console.log("</br>");
        console.log(myDest.address);
        console.log("</br>");
        console.log(myDest.zip);

    </script>
</fieldset>
</body>
</html>