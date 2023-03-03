<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Work & Sleep Settings</title>

<jsp:include page="StandardImports.jsp"/>

<script type="text/javascript">
	function validateAddActivity() {
		let day = document.getElementById("day").value;
		let timeHr = document.getElementById("timeHR").value;
		let timeMi = document.getElementById("timeMi").value;
		let type = document.getElementById("type").value;
		let durHr = document.getElementById("durHR").value;
		let durMi = document.getElementById("durMi").value;
		if (day == "Select") {
			DMessage = "A day is Required; ";
		}
		if (timeHr == "--" || timeMi == "--") {
			TMessage = "Enter a valid time; ";
		}
		if (type == "Select") {
			TyMessage = "A meal type is Required; ";
		}
		if (durHr == "--" || durMi == "--") {
			DrMessage = "Enter a valid duration; ";
		}
		if (DMessage != "" || TMessage != "" || TyMessage != "" || DrMessage != ""){
			alert(DMessage + TMessage + TyMessage + DrMessage);
			DMessage = "";
			TMessage = "";
			TyMessage = "";
			DrMessage = "";
			return false;
		}
	}
</script>

</head>
<body>
	<jsp:include page="nav-top.jsp"/>
	
	<h1>Work & Sleep Settings</h1>
	<br>
	<div class="container">
  		<div class="row">
  			<div class="col-sm-4">
  				<h3 >Add sleep to schedule</h3>
  				<br>
  				<form form method="POST" action="http://localhost:8080/Healthy-Life-Git/controller/addScheduleItem" onsubmit="return validateAddActivity()">
  					<table>
  						<tbody>
  							<tr class="loginRow">
								<td>Day of the Week</td>
								<td>
									<select id="day" name="day">
										<option>Select</option>
										<option>Monday</option>
										<option>Tuesday</option>
										<option>Wednesday</option>
										<option>Thursday</option>
										<option>Friday</option>
										<option>Saturday</option>
										<option>Sunday</option>
									</select>
								</td>
							</tr>
							<tr class="loginRow">
								<td>Time - HR:Min</td>
								<td>
									<select id="timeHR" name="timeHR">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
									</select>
								</td>
								<td>
									<select id="timeMi" name="timeMi">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
										<option>42</option>
										<option>43</option>
										<option>44</option>
										<option>45</option>
										<option>46</option>
										<option>47</option>
										<option>48</option>
										<option>49</option>
										<option>50</option>
										<option>51</option>
										<option>52</option>
										<option>53</option>
										<option>54</option>
										<option>55</option>
										<option>56</option>
										<option>57</option>
										<option>58</option>
										<option>59</option>
									</select>
								</td>
							</tr>
							<tr class="loginRow">
								<td>Duration - HR:Min</td>
								<td>
									<select id="durHR" name="durHR">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
									</select>
								</td>
								<td>
									<select id="durMi" name="durMi">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
										<option>42</option>
										<option>43</option>
										<option>44</option>
										<option>45</option>
										<option>46</option>
										<option>47</option>
										<option>48</option>
										<option>49</option>
										<option>50</option>
										<option>51</option>
										<option>52</option>
										<option>53</option>
										<option>54</option>
										<option>55</option>
										<option>56</option>
										<option>57</option>
										<option>58</option>
										<option>59</option>
									</select>
								</td>
							</tr>
						</tbody>
  					</table>
  					<br>
  					<p><input type="submit" value="Add"/></p>
  				</form>
  			</div>
  			
  			<div class="col-sm-8">
  				<h3>Meal Schedule</h3>
  				<p>When complete this section will display the users set meal schedule</p>
  			</div>
  		</div>
  	</div>
  	<br>
  	<div class="container">
  		<div class="row">
  			<div class="col-sm-4">
  				<H3>Add work to schedule</H3>
  				<br>
  				<form name="mealSch" action = "AddScheduleItemServlet" onsubmit="return validateAddActivity()" method = "post">
  					<table>
  						<tbody>
  							<tr class="loginRow">
								<td>Day of the Week</td>
								<td>
									<select id="day" name="day">
										<option>Select</option>
										<option>Monday</option>
										<option>Tuesday</option>
										<option>Wednesday</option>
										<option>Thursday</option>
										<option>Friday</option>
										<option>Saturday</option>
										<option>Sunday</option>
									</select>
								</td>
							</tr>
							<tr class="loginRow">
								<td>Time - HR:Min</td>
								<td>
									<select id="timeHR" name="timeHR">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
									</select>
								</td>
								<td>
									<select id="timeMi" name="timeMi">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
										<option>42</option>
										<option>43</option>
										<option>44</option>
										<option>45</option>
										<option>46</option>
										<option>47</option>
										<option>48</option>
										<option>49</option>
										<option>50</option>
										<option>51</option>
										<option>52</option>
										<option>53</option>
										<option>54</option>
										<option>55</option>
										<option>56</option>
										<option>57</option>
										<option>58</option>
										<option>59</option>
									</select>
								</td>
							</tr>
							<tr class="loginRow">
								<td>Location</td>
								<td>
									<select id="type" name="type">
										<option>Select</option>
										<option>From Home</option>
										<option>In Office</option>
									</select>
								</td>
							</tr>
							<tr class="loginRow">
								<td>Duration - HR:Min</td>
								<td>
									<select id="durHR" name="durHR">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
									</select>
								</td>
								<td>
									<select id="durMi" name="durMi">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
										<option>42</option>
										<option>43</option>
										<option>44</option>
										<option>45</option>
										<option>46</option>
										<option>47</option>
										<option>48</option>
										<option>49</option>
										<option>50</option>
										<option>51</option>
										<option>52</option>
										<option>53</option>
										<option>54</option>
										<option>55</option>
										<option>56</option>
										<option>57</option>
										<option>58</option>
										<option>59</option>
									</select>
								</td>
							</tr>
						</tbody>
  					</table>
  					<br>
  					<p><input type="submit" value="Add"/></p>
  				</form>
  			</div>
  			<div class="col-sm-4">
  				<h3>Location Settings - From Office</h3>
  				<br>
  				<form name="dietReq" action = "SetDietReqServlet" onsubmit="return validateForm()" method = "post">
  					<table>
  						<tbody>
  							<tr class="loginRow">
								<td>Gym Distance - HR:Min</td>
								<td>
									<select id="gyDiHR" name="gyDiHR">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
									</select>
								</td>
								<td>
									<select id="gyDiMi" name="gyDiMi">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
										<option>42</option>
										<option>43</option>
										<option>44</option>
										<option>45</option>
										<option>46</option>
										<option>47</option>
										<option>48</option>
										<option>49</option>
										<option>50</option>
										<option>51</option>
										<option>52</option>
										<option>53</option>
										<option>54</option>
										<option>55</option>
										<option>56</option>
										<option>57</option>
										<option>58</option>
										<option>59</option>
									</select>
								</td>
							</tr>
  							<tr class="loginRow">
								<td>Park Distance - HR:Min</td>
								<td>
									<select id="pkDiHR" name="pkDiHR">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
									</select>
								</td>
								<td>
									<select id="pkDiMi" name="pkDiMi">
										<option>--</option>
										<option>00</option>
										<option>01</option>
										<option>02</option>
										<option>03</option>
										<option>04</option>
										<option>05</option>
										<option>06</option>
										<option>07</option>
										<option>08</option>
										<option>09</option>
										<option>10</option>
										<option>11</option>
										<option>12</option>
										<option>13</option>
										<option>14</option>
										<option>15</option>
										<option>16</option>
										<option>17</option>
										<option>18</option>
										<option>19</option>
										<option>20</option>
										<option>21</option>
										<option>22</option>
										<option>23</option>
										<option>24</option>
										<option>25</option>
										<option>26</option>
										<option>27</option>
										<option>28</option>
										<option>29</option>
										<option>30</option>
										<option>31</option>
										<option>32</option>
										<option>33</option>
										<option>34</option>
										<option>35</option>
										<option>36</option>
										<option>37</option>
										<option>38</option>
										<option>39</option>
										<option>40</option>
										<option>41</option>
										<option>42</option>
										<option>43</option>
										<option>44</option>
										<option>45</option>
										<option>46</option>
										<option>47</option>
										<option>48</option>
										<option>49</option>
										<option>50</option>
										<option>51</option>
										<option>52</option>
										<option>53</option>
										<option>54</option>
										<option>55</option>
										<option>56</option>
										<option>57</option>
										<option>58</option>
										<option>59</option>
									</select>
								</td>
							</tr>
  						</tbody>
  					</table>
  					<p><input type="submit" value="Set"/></p>
  				</form>
  			</div>
  			<div class="col-sm-4">
  				<h3>Targets</h3>
  				<form method="POST" action="http://localhost:8080/Healthy-Life-Git/controller/addTarget" onsubmit="return validateDistances()">
  					<table>
  						<tbody>
  							<tr class="loginRow">	
								<td>TBD</td>
  							</tr>
  						</tbody>
  					</table>
  				<p><input type="submit" value="Set"/></p>
  				</form>
  			</div>
  		</div>
  	</div>
	
</body>
</html>