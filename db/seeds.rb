# DELETE EXISTING JAR AND USER DATA
Mem.destroy_all
Jar.destroy_all
User.destroy_all
# 
# # SEED USERS
# andrea = User.create({username: "andrea72", name: "Andrea Anderson", email: "aanderson@gmail.com", password: "andrea123"})
# jimmy = User.create({username: "jimmy2991", name: "Jimmy Hendricks", email: "jhendricks@aol.com", password: "jimmy123"})
# bob = User.create({username: "bob0190", name: "Bob Feldman", email: "bfeldman@hotmail.com", password: "bob123"})
# jill = User.create({username: "jill282", name: "Jill Smith", email: "jsmith@gmail.com", password: "jill123"})
#
# # SEED JARS
# andrea.jars.create({name: "Our Daughter"})
# andrea.jars.create({name: "Our Son"})
# bob.jars.create({name: "Senior Class 2016"})
# jimmy.jars.create({name: "Jimmy and Fred's Wedding"})
#
# # SEED mems
# bob.mems.create({body:"John hooked up with Sarah behind the bleachers", date:"Sept 2015"})
# bob.mems.create({body:"Alice won the paintball tournament by shooting Joe in the arm while he was working at Taco Bell", date: "Nov 2015"})
# andrea.mems.create({body: "Son took his first step", date: "February 2, 2016"})
