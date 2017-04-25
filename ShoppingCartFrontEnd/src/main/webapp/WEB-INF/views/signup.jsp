
<link href="${css}/signup.css" rel="stylesheet">

<div class="container" background-color: "aquamarine">


    <div class="row">
        <div class="col-xs-12 col-sm-12  col-md-4 col-md-offset-4 well well-sm"  style="background-color: aquamarine">
            <legend><a href="http://www.jquery2dotnet.com"><i class="glyphicon glyphicon-globe"></i></a> Sign Up Here!</legend>
            <form:form action="${contextRoot}/register" method="post" commandName="user">
            <div class="row">
                <div class="col-xs-6 col-md-6">
                
                    <form:input class="form-control" path="fname" placeholder="First Name" type="text"/><font color='red'><form:errors path="fname" /></font>
                </div>
                <div class="col-xs-6 col-md-6">
                    <form:input class="form-control" path="lname" name="lastname" placeholder="Last Name" type="text"  /><font color='red'><form:errors path="lname" /></font>
                </div>
            </div>
            <form:input class="form-control"   path="email" name="youremail" placeholder="Your Email" type="email" /><font color='red'><form:errors path="email" /></font>
              <form:input class="form-control" path="pw" name="password" placeholder="New Password" type="password" /><font color='red'><form:errors path="pw" /></font>
            <form:input class="form-control"   path="pno" name="reenteremail" placeholder=" Mobile Number" type="text" /><font color='red'><form:errors path="pno" /></font>
            <form:input class="form-control"   path="add1" name="reenteremail" placeholder="Address Line1" type="text" /><font color='red'><form:errors path="add1" /></font>
             <form:input class="form-control" path="add2" name="reenteremail" placeholder="Address Line2" type="text" /><font color='red'><form:errors path="add2" /></font>
             <form:input class="form-control" path="add3" name="reenteremail" placeholder="Address Line3" type="text" /><font color='red'><form:errors path="add3" /></font>
             <form:input class="form-control"  path="city" name="reenteremail" placeholder="City" type="text" /><font color='red'><form:errors path="city" /></font>
             <form:input class="form-control"  path="state" name="reenteremail" placeholder="State" type="text" /><font color='red'><form:errors path="state" /></font>
                <form:input class="form-control" path="pincode" name="reenteremail" placeholder="Pincode" type="text" />
          <!--   <label for="">
                Birth Date</label>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Month">Month</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Day">Day</option>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                        <option value="Year">Year</option>
                    </select>
                </div>
            </div>
            <label class="radio-inline">
                <input type="radio" name="sex" id="inlineCheckbox1" value="male" />
                Male
            </label>
            <label class="radio-inline">
                <input type="radio" name="sex" id="inlineCheckbox2" value="female" />
                Female
            </label> -->
            <br />
            <br />
            <button class="btn btn-lg btn-primary btn-block" type="submit">
                Sign up</button>
                Already have An Account?  <a href="${contextRoot}/login">Log In</a></li>
            </form:form>
        </div>
    </div>
    
    
</div>
