# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[Booking, User, Enrollment, Classroom, Cohort, Course, Location, Period, Program, TeachingAssignment].each { |model| model.delete_all }

jason = User.create!(
  :firstname   =>  "Jason",
  :lastname  => "Banks",
  :email  => "j.banks@gmail.com",
  :password => "randomstring",
  :role  => "student"
)

gerry  = User.create!(
  :firstname   =>  "Gerry",
  :lastname  => "Mathe",
  :email  => "gerry@ga.com",
  :password => "randomstring",
  :role  => "instructor"
)

sri = User.create!(
  :firstname   =>  "Sri",
  :lastname  => "Mohan",
  :email  => "sri@mohan.com",
  :password => "randomstring",
  :role  => "student"
)

julien  = User.create!(
  :firstname   =>  "Julien",
  :lastname  => "Deslanges",
  :email  => "j@g.com",
  :password => "randomstring",
  :role  => "producer"
)

emma = User.create!(
  :firstname   =>  "Emma",
  :lastname  => "Walker",
  :email  => "e@walker.com",
  :password => "randomstring",
  :role  => "producer"
)

matt = User.create!(
  :firstname   =>  "Matt",
  :lastname  => "cynamon",
  :email  => "m.cyn@ga.com",
  :password => "randomstring",
  :role  => "rhead"
)

us1 = User.create!(
  :firstname   =>  "bob2",
  :lastname  => "bob",
  :email  => "bo2@ga.com",
  :password => "randomstring",
  :role  => "student"
)

us2 = User.create!(
  :firstname   =>  "bob1",
  :lastname  => "bob2",
  :email  => "bob2@ga.com",
  :password => "randomstring",
  :role  => "student"
)

us3 = User.create!(
  :firstname   =>  "bob4",
  :lastname  => "bob",
  :email  => "bo@ga.com",
  :password => "randomstring",
  :role  => "student"
)


SUPER = User.create!(
  :firstname   =>  "SADMIN",
  :lastname  => "SADMIN",
  :email  => "admin",
  :password => "randomstring",
  :role  => "admin"
)
London = Location.create!(
  :name => "London"
)
Atlanta = Location.create!(
  :name => "Atlanta"
)
Berlin = Location.create!(
  :name => "Berlin"
)
Boston = Location.create!(
  :name => "Boston"
)
HongKong = Location.create!(
  :name => "Hong Kong"
)
LA = Location.create!(
  :name => "LA"
)
Melbourne = Location.create!(
  :name => "Melbourne"
)
NewYork  = Location.create!(
  :name => "New York "
)
SanFran = Location.create!(
  :name => "San Fran"
)
Seattle = Location.create!(
  :name => "Seattle"
)
Sydney = Location.create!(
  :name => "Sydney"
)
Seattle = Location.create!(
  :name => "Seattle"
)
DC = Location.create!(
  :name => "DC"
)

DAY = Period.create!(
  :slot => "DAY"
  )


NIGHT = Period.create!(
  :slot => "NIGHT"
  )


WDI = Program.create!(
  :name => "WDI",
  :description => "OMG WDI IS SO COOL",
  :longname => "Web Development Intensive"
  )

UXI = Program.create!(
  :name => "UXI",
  :description => "OMG UXI IS SO COOL",
  :longname => "User Experience Intensive"
  )
BEWD = Program.create!(
  :name => "BEWD",
  :description => "This course introduces students to 
  web application programming which allows one to 
  create robust, back-end Rails applications that 
  communicate with both the front-end of a site, 
  and back-end data stores.",
  :longname => "Back End Web Developement"
  )
DS = Program.create!(
  :name => "DS",
  :description => "OMG DS IS SO COOL",
  :longname => "Data Science"
  )
FEWD = Program.create!(
  :name => "FEWD",
  :description => "OMG FEWD IS SO COOL",
  :longname => "Front End Web Development"
  )
SENG = Program.create!(
  :name => "SENG",
  :description => "OMG SENG IS SO COOL",
  :longname => "Software Enginnering"
  )
DM = Program.create!(
  :name => "DM",
  :description => "OMG DM IS SO COOL",
  :longname => "Digital Marketing"
  )
BFT = Program.create!(
  :name => "BFT",
  :description => "OMG BFT IS SO COOL",
  :longname => "Business Fundamentals and tatics"
  )
PM = Program.create!(
  :name => "PM",
  :description => "OMG PM IS SO COOL",
  :longname => "Product Management"
  )
UXE = Program.create!(
  :name => "UXE",
  :description => "OMG UXE IS SO COOL", 
  :longname => "User Experience"
  )
WKC = Program.create!(
  :name => "WKC",
  :description => "OMG WKC IS SO COOL",
  :longname => "Workshop and classes"
  )


course1 = Course.create!(
:location => London,
  :program => WDI,
  :producer => julien,
  :name => "WDI_LDN",
  :iteration => 5
  )

course2 = Course.create!(
:location => Atlanta,
  :program => UXI,
  :producer => emma,
  :name => "UXI_ATN",
  :iteration => 2
  )

course3 = Course.create!(
:location => London,
  :program => WDI,
  :producer => julien,
  :name => "WDI_LDN",
  :iteration => 6
  )


# put in cohorts
WDILDN5 = Cohort.create!(
  :course => course1,
  :name => "WDI_LDN_5",
  :start_date => Date.parse('31-03-2013'),
  :end_date => Date.parse('01-04-2013')
  )


WDILDN6 = Cohort.create!(
  :course=> course3,
  :name => "WDI_LDN_6",
  :start_date => Date.parse('20-04-2013'),
  :end_date => Date.parse('21-04-2013')
  )

UXELDN2 = Cohort.create!(
  :course => course2,
  :name => "UXE_LDN_2",
  :start_date => Date.parse('20-02-2014'),
  :end_date => Date.parse('21-02-2014')
  )



e1 = Enrollment.create!(
  :cohort => WDILDN5,
  :student => jason,
  :prework_done => true,
  :has_paid => true,
  :enrollment_date => Date.parse('01-10-2013')
  )

e2 = Enrollment.create!(
  :cohort => WDILDN6,
  :student => sri,
  :prework_done => false,
  :has_paid => true,
  :enrollment_date => Date.parse('22-01-2013')
  )

e3 = Enrollment.create!(
  :cohort => WDILDN5,
  :student => sri,
  :prework_done => true,
  :has_paid => true,
  :enrollment_date => Date.parse('21-03-2013')
  )

e4 = Enrollment.create!(
  :cohort => WDILDN6,
  :student => us2,
  :prework_done => true,
  :has_paid => true,
  :enrollment_date => Date.parse('21-03-2013')
  )

e5 = Enrollment.create!(
  :cohort => WDILDN6,
  :student_id => 8,
  :prework_done => true,
  :has_paid => true,
  :enrollment_date => Date.parse('21-03-2013')
  )

WDILDN5TA = TeachingAssignment.create!(
  :cohort  => WDILDN5,
  :instructor => gerry,
  :rate => 100000,
  :assign_date => Date.parse('01-02-2013')
  )

WDILDN6TA = TeachingAssignment.create!(
  :cohort  => WDILDN6,
  :instructor => gerry,
  :rate => 5000,
  :assign_date => Date.parse('22-01-2013')
  )




LondonClassroom2Day = Classroom.create!(
  :location => London,
  :size => 30,
  :facilities => "blah",
  :name => "rm2",
  :period => DAY

  )

AtlantaClassroom1Day = Classroom.create!(
  :location => Atlanta,
  :size => 25,
  :facilities => "blah",
  :name => "rm1",
  :period => DAY

  )


LondonClassroom2Night = Classroom.create!(
  :location => London,
  :size => 30,
  :facilities => "blah",
  :name => "rm2",
  :period => NIGHT

  )

LondonBooking = Booking.create!(
:cohort => WDILDN5,
:classroom => LondonClassroom2Day,
 :period => DAY


  )









