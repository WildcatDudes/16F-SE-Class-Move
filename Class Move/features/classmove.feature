Feature: Class Move
	Scenario: Import File
		Given csv "Current Semester.csv"
#		Then student "First Name" is in the list
#		Then student "000817979" is in the list
#		Then student "000361136" is in the list
#		Then student "000922422" is in the list
#		Then student "000896976" is in the list
#		Then student "000860200" is in the list
#		Then student "000031123" is in the list
#		Then student "000750483" is in the list
#		Then student "000148897" is in the list
#		Then student "000133867" is in the list
#		Then student "000762449" is in the list
#		Then student "000217443" is in the list
#		Then student "000224410" is in the list
#		Then student "000789049" is in the list
#		Then student "000928434" is in the list
#		Then student "000725985" is in the list
#		Then student "000675095" is in the list
#		Then student "000675095" is in the list
#		Then student "000409443" is in the list
#		Then student "000093815" is in the list
#		Then student "000052305" is in the list
#		Then student "000456697" is in the list
#		Then student "000148056" is in the list
#		Then student "000798972" is in the list
#		Then student "000358448" is in the list
#		Then student "000652287" is in the list
#		Then student "000911162" is in the list
#		Then student "000361990" is in the list
#		Then student "000590529" is in the list
#		Then student "000171425" is in the list
#		Then student "000665831" is in the list
#		Then student "000768345" is in the list
#		Then student "000132577" is in the list
#		Then student "000395425" is in the list
#		Then student "000412579" is in the list
#		Then student "000412154" is in the list
#		Then student "000344189" is in the list
#		Then student "000849427" is in the list
#		Then student "000354438" is in the list
#		Then student "000019820" is in the list
#		Then student "000534577" is in the list
#		Then student "000988235" is in the list
#		Then student "000002245" is in the list
#		Then student "000505001" is in the list
#		Then student "000272781" is in the list
#		Then student "000576907" is in the list
#		Then student "000968890" is in the list
#		Then student "000610977" is in the list
#		Then student "000712718" is in the list
#		Then student "000768908" is in the list
#		Then class "ACCT324.1/14788" at time "900-1000" is available.
#		Then class "AGRB382.1/14084" at time "800-900" is available.
#		Then class "ANSC360.L3/14064" at time "900-1000" is available.
#		Then class "ART106.1/14534" at time "200-3000" is available.
#		Then class "ART361.1/14550" at time "900-1000" is available.
#		Then class "ART490.3/15348" at time "900-1000" is available.
#		Then class "BHEB472.1/14912" at time "1100-1200" is available.
#		Then class "BIBL103.1/14921" at time "900-1000" is available.
#		Then class "BIBL211.2/14942" at time "400-500" is available.
#		Then class "BIBL699.2/15212" at time "400-500" is available.
#		Then class "BIBM740.1/15178" at time "800-930" is available.
#		Then class "BMIS458.1/15029" at time "800-930" is available.
#		Then class "COMP235.1/14726" at time "1000-1100" is available.
#		Then class "COMP353.1/14728" at time "1000-1100" is available.
#		Then class "CONR640.1/15123" at time "900-1000" is available.
#		Then class "COMS211.8/14043" at time "900-1000" is available.
#		Then class "COMS343.2/14050" at time "100-200" is available.
#		Then class "COMS345.1/15159" at time "100-200" is available.
#		Then class "COMS440.J2/14058" at time "930-1100" is available.
#		Then class "COMS450.1/14059" at time "930-1100" is available.
#		Then class "COMS540.J1/15200" at time "900-1000" is available.
#		Then class "CONR610.Z1C/15312" at time "900-1000" is available.
#		Then class "DET440.1/15242" at time "900-1000" is available.
#		Then class "ECON260.W2/15252" at time "900-1000" is available.
#		Then "Martha Davis" can move to class "ACCT324.1/14788".
#		Then "Gladys Breeden" can move to class "ACCT324.1/14788".
#		Then "Glenda Harris" can move to class "ACCT324.1/14788".
#		Then "Ruth Bostick" can move to class "ACCT324.1/14788".
#		Then "Shirley Combee" can move to class "ACCT324.1/14788".
#		Then "Edward Strother" can move to class "AGRB382.1/14084".
#		Then "Francisca Hart" can move to class "AGRB382.1/14084".
#		Then "Sonia Peak" can move to class "AGRB382.1/14084".
#		Then "Teresa Durand" can move to class "ANSC360.L3/14064".
#		Then "Susan Vanscoy" can move to class "ART106.1/14534".
#		Then "Jeremy Santiago" can move to class "ART106.1/14534".
#		Then "Francisco Huppert" can move to class "ART106.1/14534".
#		Then "Randall Gill" can move to class "ART106.1/14534".
#		Then "Matthew Ferguson" can move to class "ART106.1/14534".
#		Then "Maurice Robertson" can move to class "ART361.1/14550".
#		Then "Ross Johnson" can move to class "ART361.1/14550".
#		Then "Archie Murray" can move to class "BHEB472.1/14912".
#		Then "Ralph Sams" can move to class "BIBL103.1/14921".
#		Then "Bertha Hart" can move to class "BIBL103.1/14921".
#		Then "Lee Thibodeaux" can move to class "BIBL103.1/14921".
#		Then "Eva Edwards" can move to class "BIBL103.1/14921".
#		Then "Mary Vasquez" can move to class "BIBL103.1/14921".
#		Then "Nicholas Stokes" can move to class "BIBL103.1/14921".
#		Then "Mark Quarles" can move to class "BIBL103.1/14921".
#		Then "Alana Wilson" can move to class "BIBL211.2/14942".
#		Then "James Mosley" can move to class "BIBL211.2/14942".
#		Then "Charles Foster" can move to class "BIBL211.2/14942".
#		Then "Molly Bell" can move to class "BIBL211.2/14942".
#		Then "Daniel Velazquez" can move to class "BIBL211.2/14942".
#		Then "Pamela Allen" can move to class "BIBL211.2/14942".
#		Then "Mary Duggan" can move to class "BIBL211.2/14942".
#		Then "Gene Taylor" can move to class "BIBL211.2/14942".
#		Then "Marjorie Erwin" can move to class "BIBL699.2/15212".
#		Then "Paul Smith" can move to class "BIBM740.1/15178".
#		Then "Joshua Henderson" can move to class "BMIS458.1/15029".
#		Then "Penny Austin" can move to class "BMIS458.1/15029".
#		Then "Pauline Holmes" can move to class "BMIS458.1/15029".
#		Then "Danielle Beltran" can move to class "COMP235.1/14726".
#		Then "Leon Gray" can move to class "COMP235.1/14726".
#		Then "James Miller" can move to class "COMP235.1/14726".
#		Then "Jenna Travis" can move to class "COMP235.1/14726".
#		Then "Liz Molina" can move to class "COMP235.1/14726".
#		Then "George Lanehart" can move to class "COMP235.1/14726".
#		Then "Mary Favreau" can move to class "COMP353.1/14728".
#		Then "Derrick Polcovich" can move to class "COMP353.1/14728".
#		Then "Richard Palmer" can move to class "COMP353.1/14728".
#		Then "James Sugg" can move to class "COMP353.1/14728".
#		Then "Dorethea Imperato" can move to class "COMP353.1/14728".
#		Then "Vickie Phillips" can move to class "COMP353.1/14728".
#		Then "Vicki Tackett" can move to class "COMP353.1/14728".
#		Then "George Vega" can move to class "CONR640.1/15123".
#		Then "Liza Foster" can move to class "COMS211.8/14043".
#		Then "Josephina Allison" can move to class "COMS211.8/14043".
#		Then "Albert Howell" can move to class "COMS211.8/14043".
#		Then "Marcella Gabbard" can move to class "COMS211.8/14043".
#		Then "Elizabeth Knoy" can move to class "COMS211.8/14043".
#		Then "Walter Cousins" can move to class "COMS211.8/14043".
#		Then "Joseph Rogers" can move to class "COMS211.8/14043".
#		Then "Richard Walker" can move to class "COMS211.8/14043".
#		Then "Rolland Coronado" can move to class "COMS211.8/14043".
#		Then "Gerry Catalan" can move to class "COMS343.2/14050".
#		Then "Kevin Mccollum" can move to class "COMS343.2/14050".
#		Then "Katherine Bennett" can move to class "COMS343.2/14050".
#		Then "Matthew Oman" can move to class "COMS345.1/15159".
#		Then "Amanda Maas" can move to class "COMS345.1/15159".
#		Then "Robert Lenton" can move to class "COMS345.1/15159".
#		Then "Elizabeth Franco" can move to class "COMS345.1/15159".
#		Then "John Carpenter" can move to class "COMS345.1/15159".
#		Then "Mamie Smith" can move to class "COMS345.1/15159".
#		Then "Robert Montes" can move to class "COMS345.1/15159".
#		Then "Blake Mack" can move to class "COMS345.1/15159".
#		Then "William Roth" can move to class "COMS440.J2/14058".
#		Then "Joan Kinney" can move to class "COMS450.1/14059".
#		Then "Doris Adami" can move to class "COMS450.1/14059".
#		Then "Thanh Vaca" can move to class "CONR610.Z1C/15312".
#		Then "Frances Krell" can move to class "CONR610.Z1C/15312".
#		Then "Olive Engle" can move to class "CONR610.Z1C/15312".
#		Then "Alda Lewis" can move to class "CONR610.Z1C/15312".
#		Then "Betty Helton" can move to class "ECON260.W2/15252".
#		Then "Beverly Thomas" can move to class "EDUC660.Z1A/15232".
#		Then "Frank Beattie" can move to class "EDUC660.Z1A/15232".
#		Then "Gladys Thompson" can move to class "ENGL106.2/14401".
#		Then "Michael Cisneros" can move to class "ENGL107.3/14407".
#		Then "John Hafele" can move to class "ENGL107.3/14407".
#		Then "George Gaitan" can move to class "ENGL107.3/14407".
#		Then "Terry Saiz" can move to class "ENGL107.3/14407".
#		Then "Ryan Ruesga" can move to class "ENGL112.8/14463".
#		Then "Martin Northrup" can move to class "ENGL112.8/14463".
#		Then "Christopher Mccloud" can move to class "ENGL112.8/14463".
#		Then "Melvin Jackson" can move to class "ENGL112.8/14463".
#		Then "Danielle Calderin" can move to class "ENGL112.11/14466".
#		Then "Albert Howell" can move to class "ENGL112.11/14466".
#		Then "Willa Buster" can move to class "ENGL112.11/14466".
#		Then "Marguerite Clark" can move to class "ENGL112.11/14466".
#		Then "Dorothy Hodge" can move to class "ENGL112.11/14466".
#		Then "Dorothy Sullivan" can move to class "ENGL112.13/14468".
#		Then "Alice Musich" can move to class "ENGL112.13/14468".
#		Then "Joseph Mangone" can move to class "ENGL112.13/14468".
#		Then "Ruth Johnson" can move to class "ENGL112.13/14468".
#		Then "Edward Marquez" can move to class "ENGL112.13/14468".
#		Then "Wayne Langford" can move to class "ENGL221.4/14481".
#		Then "Kevin Miller" can move to class "ENGL221.4/14481".
#		Then "Michael Mcfarland" can move to class "ENGL221.4/14481".
#		Then "Heidi Landry" can move to class "ENGL221.4/14481".
#		Then "Jennifer Bohman" can move to class "ENGL221.4/14481".
#		Then "Richard Thomas" can move to class "ENGL232.H2/15048".
#		Then "Kim Young" can move to class "ENGL232.H2/15048".
#		Then "Thomas Stanley" can move to class "ENGL328.1/14502".
#		Then "Cindy Grabau" can move to class "KINE420.1/14911".
#		Then "Benjamin Schmidt" can move to class "KINE460.1/14938".
#		Then "Randy Cornell" can move to class "KINE460.1/14938".
#		Then "Viola Jones" can move to class "KINE460.1/14938".
#		Then "Ron Reyna" can move to class "KINE460.1/14938".
#		Then "Susan Bennett" can move to class "KINE475.1/14935".
#		Then "Harold Maio" can move to class "KINE475.1/14935".
#		Then "Dennis Gorman" can move to class "KINE498.1/14947".
#		Then "Richard Greek" can move to class "KINE498.1/14947".
#		Then "Ruth Santiago" can move to class "KINE498.1/14947".
#		Then "Eldon Vaughn" can move to class "ENGL640.1/15119".
#		Then "Richard Simpson" can move to class "ENGL640.1/15119".
#		Then "Craig Turner" can move to class "ENVR458.1/14077".
#		Then "Deborah Briseno" can move to class "FAM455.1/15060".
#		Then "Ella Abbott" can move to class "FAM455.1/15060".
#		Then "Christian Utley" can move to class "FAM455.1/15060".
#		Then "Shirley Rios" can move to class "FAM455.1/15060".
#		Then "Dwana Nyland" can move to class "FAM455.1/15060".
#		Then "Nichole Jenkins" can move to class "FAM455.1/15060".
#		Then "Beatrice Mcdonald" can move to class "FAM455.1/15060".
#		Then "Catherine Zirkle" can move to class "FAM455.1/15060".
#		Then "Thomas Tafel" can move to class "FAM455.1/15060".
#		Then "David Broadus" can move to class "FIN440.1/15121".
#		Then "Mary Asante" can move to class "FIN440.1/15121".
#		Then "Douglas Donoho" can move to class "FIN440.1/15121".
#		Then "Helen Cranford" can move to class "GEOG235.1/14374".
#		Then "Julie Barette" can move to class "GEOG235.1/14374".
#		Then "Zachary Davenport" can move to class "GEOG235.1/14374".
#		Then "William Roth" can move to class "GEOG235.1/14374".
#		Then "David Whitaker" can move to class "GEOG235.1/14374".
#		Then "Charles Tillman" can move to class "GEOG235.1/14374".
#		Then "Adan Matthews" can move to class "GEOG235.1/14374".
#		Then "Karen Richardson" can move to class "GEOL111.1/14177".
#		Then "John Wisneski" can move to class "GEOL111.1/14177".
#		Then "Jessica Shepard" can move to class "GEOL111.1/14177".
#		Then "Colleen Tocco" can move to class "GEOL111.1/14177".
#		Then "Julissa Estimable" can move to class "GEOL111.1/14177".
#		Then "Ouida Embree" can move to class "GEOL111.1/14177".
#		Then "Woodrow Webster" can move to class "GEOL111.1/14177".
#		Then "Michelle Burns" can move to class "INTS217.S2/15191".
#		Then "Daniel Garrett" can move to class "IS322.3/14839".
#		Then "Margaret Prine" can move to class "IS322.3/14839".
#		Then "Gilbert Reno" can move to class "IS322.3/14839".
#		Then "Ruth Bostick" can move to class "IS322.3/14839".
#		Then "Margaret Daniels" can move to class "IS322.3/14839".
#		Then "Kyle Apel" can move to class "IS322.3/14839".
#		Then "Pauline Niss" can move to class "IS324.1/14804".
#		Then "Priscilla Morris" can move to class "IS324.1/14804".
#		Then "Claire Carkhuff" can move to class "IS324.1/14804".
#		Then "Elizabeth Cannon" can move to class "IS324.1/14804".
#		Then "Jeffrey Slack" can move to class "IS324.1/14804".
#		Then "Clyde Urias" can move to class "IS324.1/14804".
#		Then "Lucienne Martin" can move to class "IS324.1/14804".
#		Then "Marcus Tyler" can move to class "IS324.1/14804".
#		Then "Samantha Schuler" can move to class "IS324.1/14804".
#		Then "Jimmy Wooten" can move to class "IS324.1/14804".
#		Then "Jamie Bickham" can move to class "IS324.1/14804".
#		Then "Jon Johnson" can move to class "IT221.01M/15397".
#		Then "Joann Strang" can move to class "JMC321.L4/14582".
#		Then "Robert Phillips" can move to class "JMC321.L4/14582".
#		Then "Morris Chung" can move to class "JMC321.L4/14582".
#		Then "Diana Alward" can move to class "KINE241.1/14909".
#		Then "Daniel Bowen" can move to class "KINE241.1/14909".
#		Then "Casey Graham" can move to class "KINE241.1/14909".
#		Then "Alan Stamm" can move to class "KINE241.1/14909".
#		Then "Lana Fisher" can move to class "KINE241.1/14909".
#		Then "Helen Hooper" can move to class "KINE241.1/14909".
#		Then "Robert Doman" can move to class "KINE241.1/14909".
#		Then "Gabriel Chung" can move to class "MACC609.1/14753".
#		Then "Clyde Potter" can move to class "MACC609.1/14753".
#		Then "James Fowler" can move to class "MACC609.1/14753".
#		Then "Lydia Campbell" can move to class "MACC609.1/14753".
#		Then "Nancy Jones" can move to class "MACC609.1/14753".
#		Then "William Toyoshima" can move to class "MACC609.1/14753".
#		Then "Jennifer Parker" can move to class "MACC609.1/14753".
#		Then "Blanca Clark" can move to class "MACC609.1/14753".
#		Then "Gloria Johnson" can move to class "MACC609.1/14753".
#		Then "Richard Spina" can move to class "MATH124.2/14003".
#		Then "Edwin Fulk" can move to class "MATH124.2/14003".
#		Then "Nellie Wright" can move to class "MATH124.2/14003".
#		Then "Jeremy Long" can move to class "MATH124.2/14003".
#		Then "Naomi Haslam" can move to class "MATH124.2/14003".
#		Then "Alison Torrez" can move to class "MATH124.2/14003".
#		Then "Scott Francis" can move to class "PEAC228.1/15034".
#		Then "Tyrone Morgan" can move to class "PEAC228.1/15034".
#		Then "Donita Barnett" can move to class "PEAC228.1/15034".
#		Then "Richard Muniz" can move to class "PEAC228.1/15034".
#		Then "Patricia Natcher" can move to class "PEAC228.1/15034".
#		Then "Claudine Spaniel" can move to class "PEAC228.1/15034".
#		Then "Thomas Rembert" can move to class "PEAC240.2/15040".
#		Then "Dorothy Maness" can move to class "PEAC240.2/15040".
#		Then class "ACCT324.1/14788" can hold 2 "seniors".
#		Then class "ACCT324.1/14788" can hold 8 "juniors".
#		Then class "ACCT324.1/14788" can hold 8 "sophmores".
#		Then class "ACCT324.1/14788" can hold 2 "freshmen".
#		Then class "AGRB382.1/14084" can hold 7 "seniors".
#		Then class "AGRB382.1/14084" can hold 0 "juniors".
#		Then class "AGRB382.1/14084" can hold 0 "sophmores".
#		Then class "AGRB382.1/14084" can hold 4 "freshmen".
#		Then class "ANSC360.L3/14064" can hold 9 "seniors".
#		Then class "ANSC360.L3/14064" can hold 6 "juniors".
#		Then class "ANSC360.L3/14064" can hold 4 "sophmores".
#		Then class "ANSC360.L3/14064" can hold 3 "freshmen".
#		Then class "ART106.1/14534" can hold 1 "seniors".
#		Then class "ART106.1/14534" can hold 2 "juniors".
#		Then class "ART106.1/14534" can hold 8 "sophmores".
#		Then class "ART106.1/14534" can hold 8 "freshmen".
#		Then class "ART361.1/14550" can hold 7 "seniors".
#		Then class "ART361.1/14550" can hold 0 "juniors".
#		Then class "ART361.1/14550" can hold 9 "sophmores".
#		Then class "ART361.1/14550" can hold 1 "freshmen".
#		Then class "ART490.3/15348" can hold 7 "seniors".
#		Then class "ART490.3/15348" can hold 8 "juniors".
#		Then class "ART490.3/15348" can hold 4 "sophmores".
#		Then class "ART490.3/15348" can hold 3 "freshmen".
#		Then class "BHEB472.1/14912" can hold 2 "seniors".
#		Then class "BHEB472.1/14912" can hold 0 "juniors".
#		Then class "BHEB472.1/14912" can hold 6 "sophmores".
#		Then class "BHEB472.1/14912" can hold 4 "freshmen".
#		Then class "BIBL103.1/14921" can hold 1 "seniors".
#		Then class "BIBL103.1/14921" can hold 6 "juniors".
#		Then class "BIBL103.1/14921" can hold 7 "sophmores".
#		Then class "BIBL103.1/14921" can hold 7 "freshmen".
#		Then class "BIBL211.2/14942" can hold 2 "seniors".
#		Then class "BIBL211.2/14942" can hold 7 "juniors".
#		Then class "BIBL211.2/14942" can hold 5 "sophmores".
#		Then class "BIBL211.2/14942" can hold 5 "freshmen".
#		Then class "BIBL699.2/15212" can hold 0 "seniors".
#		Then class "BIBL699.2/15212" can hold 7 "juniors".
#		Then class "BIBL699.2/15212" can hold 8 "sophmores".
#		Then class "BIBL699.2/15212" can hold 3 "freshmen".
#		Then class "BIBM740.1/15178" can hold 1 "seniors".
#		Then class "BIBM740.1/15178" can hold 1 "juniors".
#		Then class "BIBM740.1/15178" can hold 4 "sophmores".
#		Then class "BIBM740.1/15178" can hold 8 "freshmen".
#		Then class "BMIS458.1/15029" can hold 7 "seniors".
#		Then class "BMIS458.1/15029" can hold 2 "juniors".
#		Then class "BMIS458.1/15029" can hold 2 "sophmores".
#		Then class "BMIS458.1/15029" can hold 8 "freshmen".
#		Then class "COMP235.1/14726" can hold 6 "seniors".
#		Then class "COMP235.1/14726" can hold 0 "juniors".
#		Then class "COMP235.1/14726" can hold 0 "sophmores".
#		Then class "COMP235.1/14726" can hold 3 "freshmen".
#		Then class "COMP353.1/14728" can hold 5 "seniors".
#		Then class "COMP353.1/14728" can hold 1 "juniors".
#		Then class "COMP353.1/14728" can hold 3 "sophmores".
#		Then class "COMP353.1/14728" can hold 4 "freshmen".
#		Then class "CONR640.1/15123" can hold 9 "seniors".
#		Then class "CONR640.1/15123" can hold 6 "juniors".
#		Then class "CONR640.1/15123" can hold 5 "sophmores".
#		Then class "CONR640.1/15123" can hold 5 "freshmen".
#		Then class "COMS211.8/14043" can hold 4 "seniors".
#		Then class "COMS211.8/14043" can hold 4 "juniors".
#		Then class "COMS211.8/14043" can hold 7 "sophmores".
#		Then class "COMS211.8/14043" can hold 5 "freshmen".
#		Then class "COMS343.2/14050" can hold 2 "seniors".
#		Then class "COMS343.2/14050" can hold 8 "juniors".
#		Then class "COMS343.2/14050" can hold 8 "sophmores".
#		Then class "COMS343.2/14050" can hold 0 "freshmen".
#		Then class "COMS345.1/15159" can hold 5 "seniors".
#		Then class "COMS345.1/15159" can hold 7 "juniors".
#		Then class "COMS345.1/15159" can hold 4 "sophmores".
#		Then class "COMS345.1/15159" can hold 4 "freshmen".
#		Then class "COMS440.J2/14058" can hold 6 "seniors".
#		Then class "COMS440.J2/14058" can hold 1 "juniors".
#		Then class "COMS440.J2/14058" can hold 8 "sophmores".
#		Then class "COMS440.J2/14058" can hold 9 "freshmen".
#		Then class "COMS450.1/14059" can hold 0 "seniors".
#		Then class "COMS450.1/14059" can hold 3 "juniors".
#		Then class "COMS450.1/14059" can hold 6 "sophmores".
#		Then class "COMS450.1/14059" can hold 1 "freshmen".
#		Then class "COMS540.J1/15200" can hold 3 "seniors".
#		Then class "COMS540.J1/15200" can hold 5 "juniors".
#		Then class "COMS540.J1/15200" can hold 4 "sophmores".
#		Then class "COMS540.J1/15200" can hold 8 "freshmen".
#		Then class "CONR610.Z1C/15312" can hold 3 "seniors".
#		Then class "CONR610.Z1C/15312" can hold 1 "juniors".
#		Then class "CONR610.Z1C/15312" can hold 1 "sophmores".
#		Then class "CONR610.Z1C/15312" can hold 1 "freshmen".
#		Then class "DET440.1/15242" can hold 7 "seniors".
#		Then class "DET440.1/15242" can hold 7 "juniors".
#		Then class "DET440.1/15242" can hold 1 "sophmores".
#		Then class "DET440.1/15242" can hold 0 "freshmen".
#		Then class "ECON260.W2/15252" can hold 6 "seniors".
#		Then class "ECON260.W2/15252" can hold 4 "juniors".
#		Then class "ECON260.W2/15252" can hold 9 "sophmores".
#		Then class "ECON260.W2/15252" can hold 3 "freshmen".