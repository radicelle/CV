#import "@preview/modern-cv:0.9.0": *

#show regex("[\u{f000}-\u{f8ff}]"): []
#show "radicelle": [🔗 radicelle]

#show: resume.with(
  author: (
      firstname: "Emmanuel", 
      lastname: "Breton-Belz",
      email: "✉️ emmanuelbretonbelz@gmail.com", 
      phone: "📞 +33 (0) 679122243",
      github: "radicelle",
      address: "📍 13 rue du maréchal ferrant, 14730 -- Giberville",
      positions: (
        "Fullstack Web engineer",
        "Senior Software Engineer"
      )
  ),
  profile-picture: none,
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
)

#show heading: set block(above: 1.8em, below: 1.2em)
#show heading: it => [
  #it
  #v(-0.6em)
  #line(length: 100%, stroke: 0.5pt + gray)
]

= Work experience


#resume-entry(
  title: "Eurecia",
  location: "Castanet-Tolosan",
  date: "August 2018 -- August 2020",
  description: "Full stack web (Java) development (mainly backend)"
)

#resume-item[
  - Software development for Airbus model simulation process: Creation of front-end components using Nebula Nattables and Sirius Plugin for instance.
  - Participation in the migration from CDO to Hibernate persistence framework.
  - Creation and optimization of JPA queries to retrieve data in back-end.
  - Strong knowledge in modular development.
]

#v(0.5em)

#resume-entry(
  title: "Artal Technologies",
  location: "Toulouse",
  date: "July 2017 -- Present",
  description: "Full stack Eclipse RCP Development"
)

#resume-item[
  - Software development for Airbus model simulation process: Creation of front-end components using Nebula Nattables and Sirius Plugin for instance.
  - Participation in the migration from CDO to Hibernate persistence framework.
  - Creation and optimization of JPA queries to retrieve data in back-end.
  - Strong knowledge in modular development.
]

#v(0.5em)

#resume-entry(
  title: "Bosch",
  location: "Abstatt",
  date: "November 2016 -- April 2017",
  description: "Full stack Eclipse RCP Development"
)

#resume-item[
  - Software development for automotive controller management and design: Front-end using JFace wizards to retrieve users need and persistence using SAX/DOM.
  - Advanced version system of XSD schema using Eclipse built in features.
]

#v(0.5em)

#resume-entry(
  title: "DIEM",
  location: "Salerno",
  date: "May -- July 2015",
  description: "Object detection"
)

#resume-item[
  - Creation of object recognition using SURF feature detector with OpenCV.
  - Programming in C++, and dealing with image loading, processing, feature extraction and feature enhancement for research purposes.
]

= Scholar experience

#resume-entry(
  title: "UNISA",
  location: "Salerno",
  date: "June 2016",
  description: "Vision cup"
)

#resume-item[
  - Competition for artificial vision course. Teams of three building software guiding Nao robot through a visually marked path and classify objects along the path.
]

#resume-entry(
  title: "ENSICAEN - IUT",
  location: "Caen",
  date: "2015",
  description: "Website development"
)

#resume-item[
  - Website development lab using J2EE.
  - Carpooling website development using HTML/PHP and MySQL database.
]

#v(0.8em)

= Education

#resume-entry(
  title: "UNISA Ingeneria",
  location: "Salerno",
  date: "2015 -- 2017",
  description: "Master's degree in Computer sciences"
)

#v(0.4em)

#resume-entry(
  title: "ENSICAEN",
  location: "Caen",
  date: "2013 -- 2017",
  description: "Engineer diploma in Informatics, image"
)

#v(0.4em)

#resume-entry(
  title: "IUT",
  location: "Caen",
  date: "2011 -- 2013",
  description: "Technical degree in Informatics, image"
)

= Communication skills

#resume-item[
  - *French*: Native speaker
  - *English*: 820 points TOIEC, fluent
  - *Italian*: Fluent
]

#v(0.8em)

= Software skills

#resume-item[
  - *Professional*: Java 8, Eclipse RCP3, Kotlin, SQL, JUnit
  - *Good level*: C++/C, Oracle, git, subversion, Jira, TypeScript (ReactJs)
  - *Intermediate*: Python, Rust, 
  - *Basic level*: NodeJS, React.js, Unity
]

#v(0.8em)

= Hobbies

#resume-item[
  - *Reading*: J2EE development tutorial by Sopra, Deep learning: A practitioner approach
  - *Interests*: Nutrition, neuro-science, body kinetic, permaculture
  - *Sports*: Triathlon, trail, handball
]
