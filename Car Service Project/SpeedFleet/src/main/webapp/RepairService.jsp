<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Rental</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background-color: white;
        }

        .logo a {
            font-size: 25px;
            color: black;
            text-decoration: none;
            font-weight: 500;
            margin-left: 3rem;
            margin-top: 2rem;
        }

        .repairSubMaindiv {
            width: 60%;
            margin: auto;
            margin-bottom: 5rem;
        }

        .repairHeading {
            margin-top: 1rem;
            font-size: 3rem;
            color: rgb(244, 44, 44);
            margin-bottom: 3rem;
        }

        .repairMaindiv {
            align-items: center;
            border-radius: 5px;
            font-size: 20px;
            line-height: 25px;
            margin: auto auto 1rem;
        }

        .repairHead {
            padding: 16px 16px 12px 18px;
            align-items: center;
            text-align: center;
            font-size: 1.5rem;
            font-weight: 600;
            margin: 1.5rem 0;
        }

        .repairHead span {
            padding-left: 15px;
        }

        .repairBody {
            border-top: 2px solid #76ce9b;
            width: 94%;
            margin: auto;
            border: 2px solid black;
            padding: 5px 15px;
            border-radius: 10px;
        }

        .repairBodydiv {
            display: flex;
            align-items: center;
            /* Vertically center content */
            width: 100%;
            padding-top: 10px;
        }

        .repair2Bodydiv {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 55%;
            padding: 10px 0;
        }

        .repairService {
            color: #7a7878;
        }

        .repairService span {
            font-size: 1.2rem;
            color: black;
        }

        .repairBottom {
            padding: 16px;
        }

.button {
	background-color: #127e40;
	border: #127e40;
	width: 100%;
	height: 40px;
	color: #fff;
	display: flex;
	text-align: center;
	justify-content: center;
	align-items: center;
	font-size: 20px;
	box-shadow: 0 3px 4px rgba(0, 0, 0, .25);
	cursor: pointer;
	border-radius: 30px;
}

.button:hover {
	background-color: #004820;
}

a {
	text-decoration: none;
}
    </style>
</head>

<body>
    <span class="logo"> <a href="Home1.jsp">SpeedFleet</a> </span>
    <div class="repairSubMaindiv">
        <center class="repairHeading">Car Repair Services</center>
        <hr>

        <!-- 1st repair service -->
        <div class="repairMaindiv">
            <div class="repairHead">
                <span>Engine Diagnostics</span>
            </div>
        </div>
        <div class="repairBody">
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Issue Check : </span>
                    </div>
                    <div class="repairDetails"> <span>Comprehensive diagnostics</span></div>
                </div>
            </div>
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Repair Estimate : </span>
                    </div>
                    <div class="repairDetails"> <span>Provided within 24 hours</span> </div>
                </div>
            </div>
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Service Type : </span>
                    </div>
                    <div class="repairDetails"> <span>Diagnostic</span> </div>
                </div>
            </div>
            <div class="repairBottom">
               <a class="button" href="CarRepair.jsp"> <span>Get Diagnostic</span>
				</a>
            </div>
        </div>

        <!-- 2nd repair service -->
        <div class="repairMaindiv">
            <div class="repairHead">
                <span>Brake Repair</span>
            </div>
        </div>
        <div class="repairBody">
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Issue Check : </span>
                    </div>
                    <div class="repairDetails"> <span>Brake inspection</span></div>
                </div>
            </div>
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Repair Estimate : </span>
                    </div>
                    <div class="repairDetails"> <span>Quote provided</span> </div>
                </div>
            </div>
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Service Type : </span>
                    </div>
                    <div class="repairDetails"> <span>Repair</span> </div>
                </div>
            </div>
            <div class="repairBottom">
                <a class="button" href="CarRepair.jsp"> <span>Get Diagnostic</span>
				</a>
            </div>
        </div>

        <!-- 3rd repair service -->
        <div class="repairMaindiv">
            <div class="repairHead">
                <span>Electrical System</span>
            </div>
        </div>
        <div class="repairBody">
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Issue Check : </span>
                    </div>
                    <div class="repairDetails"> <span>Electrical diagnostics</span></div>
                </div>
            </div>
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Repair Estimate : </span>
                    </div>
                    <div class="repairDetails"> <span>Quotation on request</span> </div>
                </div>
            </div>
            <div class="repairBodydiv">
                <div class="repair2Bodydiv">
                    <div class="repairService">
                        <span>Service Type : </span>
                    </div>
                    <div class="repairDetails"> <span>Diagnostic & Repair</span> </div>
                </div>
            </div>
            <div class="repairBottom">
                <a class="button" href="CarRepair.jsp"> <span>Get Diagnostic</span>
				</a>
            </div>
        </div>
    </div>
</body>
</body>

</html>