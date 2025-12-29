#import "@preview/modern-cv:0.9.0": *

// Hide broken FontAwesome icons if fonts are not installed
#show regex("[\u{f000}-\u{f8ff}]"): []

// Helper for SVG icons
#let icon(name, color: none) = {
  box(height: 1.1em, baseline: 20%, image("icons/" + name + ".svg"))
}

// Helper for skill bars using SVG icons
#let skill(name, level, icon-name: none) = {
  grid(
    columns: (120pt, 1fr),
    gutter: 10pt,
    align: (left, horizon),
    if icon-name != none { icon(icon-name) + " " + name } else { name },
    box(width: 100%, height: 0.5em, fill: gray.lighten(80%), radius: 2pt, {
      rect(width: level * 100%, height: 100%, fill: blue.darken(20%), radius: 2pt)
    })
  )
}

#set page(margin: (top: 0.8cm, bottom: 1.2cm, x: 1.5cm))

#show: resume.with(
  author: (
      firstname: "Emmanuel", 
      lastname: "Breton-Belz",
      email: "emmanuelbretonbelz@gmail.com", 
      phone: "+33 (0) 679122243",
      github: "radicelle",
      positions: (
        "Fullstack Web engineer",
        "Senior Software Engineer"
      )
  ),
  profile-picture: move(dx: 1.5em, dy: -1.5em, block(
    width: 60pt, 
    height: 60pt, 
    radius: 50%, 
    clip: true, 
    stroke: 1pt + blue.darken(20%), 
    image("assets/image.png", width: 100%, height: 100%, fit: "cover")
  )),
  date: datetime.today().display(),
  language: "en",
  colored-headers: true,
)

#show heading: set block(above: 0.4em, below: 0.2em)
#show line: none

#show heading.where(level: 1): it => [
  #block(
    fill: blue.darken(20%),
    width: 100%,
    inset: (x: 10pt, y: 4pt),
    radius: 3pt,
    text(fill: white, weight: "bold", size: 1.0em, tracking: 0.6pt, upper(it.body))
  )
]

#v(-2.1em, weak: false)
#rect(
  fill: gray.lighten(95%),
  stroke: (left: 3pt + blue.darken(20%)),
  inset: 6pt,
  width: 100%,
  [
    #set text(size: 0.9em, style: "italic")
    Senior Software Engineer with 8+ years of experience in Fullstack development (Java, Kotlin, Rust, Flutter). 
    Passionate about building robust web platforms and exploring AI/NLP integrations looking for new challenging opportinity. 
    Keen on tech and strong from Tenable experience. I Work on Radicelle on my spare time, focusing on efficient and safe web development.
  ]
)

#align(center)[
  #set text(size: 0.85em, fill: gray.darken(20%))
  #icon("gmail") #h(2pt) emmanuelbretonbelz\@gmail.com #h(15pt)
  #icon("github") #h(2pt) #link("https://github.com/radicelle")[radicelle] #h(15pt)
  📞 +33 (0) 679122243 #h(15pt)
  📍 Giberville - 14730
]

#v(0.9em)

#resume-entry(
  title: [Tenable Inc. — Senior Backend Software Engineer],
  location: [July 2022 -- Present],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Remote]],
  description: none
)

#resume-item[
  - Identity Vulnerability Management and Tenable One development.
  - Developed REST endpoints using Guice.
  - Built SQL-backed dashboards with data analysis on Snowflake.
  - Focused on endpoint securitization and optimization.
  - Implemented NLP features using Gemini calls.
]

#v(0.5em)
#rect(width: 100%, height: 0.2pt, fill: gray.lighten(50%), stroke: none)
#v(0.5em)

#resume-entry(
  title: [Radicelle — Founder & Full stack developer],
  location: [December 2020 -- Present],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Remote]],
  description: none
)

#resume-item[
  - Founded Radicelle a series of web platforms for "neo rural" agricultural distribution.
  - Developed Chronoxus (#link("https://radicelle.github.io/chronoxus/")[radicelle.github.io/chronoxus]), a time-management and calendar application built with the Dioxus 0.6.0 framework and Rust.
  - Reworked the main application using Flutter for multi-platform support.
  - Stack: Rust (Dioxus), Flutter, ReactJS (Material-UI), KMongo (Mongo Atlas), Ktor (REST APIs), KMP.
  - Currently building a web stack entirely in Rust for my personal projects
]

#v(0.5em)
#rect(width: 100%, height: 0.2pt, fill: gray.lighten(50%), stroke: none)
#v(0.5em)

#resume-entry(
  title: [Eurecia — Full stack Web developer],
  location: [October 2018 -- December 2020],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Toulouse]],
  description: none
)

#resume-item[
  - Maintained Java over Struts + JSP legacy eurecia.com platform code.
  - Developed new features using REST API with Java and Kotlin (including spec challenging).
  - Developed VueJS components calling REST APIs and bound them to the legacy JSP struts architecture.
  - Used Spring annotations and MariaDB (plain SQL and JPA) for production-grade implementation and optimization.
]

#v(0.5em)
#rect(width: 100%, height: 0.2pt, fill: gray.lighten(50%), stroke: none)
#v(0.5em)

#resume-entry(
  title: [Artal Technologies — Full stack Eclipse RCP Development],
  location: [July 2017 -- September 2018],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Toulouse]],
  description: none
)

#resume-item[
  - Software development for Airbus model simulation process: Creation of front-end components using Nebula Nattables and Sirius Plugin for instance.
  - Participation in the migration from CDO to Hibernate persistence framework.
  - Creation and optimization of JPA queries to retrieve data in back-end.
  - Strong knowledge in modular development.
]

#v(0.5em)
#rect(width: 100%, height: 0.2pt, fill: gray.lighten(50%), stroke: none)
#v(0.5em)

#resume-entry(
  title: [Bosch — Full stack Eclipse RCP Development],
  location: [November 2016 -- April 2017],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Abstatt]],
  description: none
)

#resume-item[
  - Software development for automotive controller management and design: Front-end using JFace wizards to retrieve users need and persistence using SAX/DOM.
  - Advanced version system of XSD schema using Eclipse built in features.
]

/*
#v(0.5em)
#rect(width: 100%, height: 0.2pt, fill: gray.lighten(50%), stroke: none)
#v(0.5em)

#resume-entry(
  title: [DIEM — Object detection],
  location: [May -- July 2015],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Salerno]],
  description: none
)

#resume-item[
  - Creation of object recognition using SURF feature detector with OpenCV.
  - Programming in C++, and dealing with image loading, processing, feature extraction and feature enhancement for research purposes.
]
#v(1em)
*/

#pagebreak()

= Scholar experience

#resume-entry(
  title: [UNISA — Vision cup],
  location: [June 2016],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Salerno]],
  description: none
)

#resume-item[
  - Competition for artificial vision course. Teams of three building software guiding Nao robot through a visually marked path and classify objects along the path. #link("https://github.com/manumanmax/Nao")[GitHub link]
]

#v(0.5em)
#rect(width: 100%, height: 0.2pt, fill: gray.lighten(50%), stroke: none)
#v(0.5em)

#resume-entry(
  title: [ENSICAEN - IUT — Website development],
  location: [2015],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Caen]],
  description: none
)

#resume-item[
  - Website development lab using J2EE.
  - Carpooling website development using HTML/PHP and MySQL database.
]

#v(1em)

= Education

#resume-entry(
  title: [UNISA Ingeneria — Master's degree in Computer sciences],
  location: [2015 -- 2017],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Salerno]],
  description: none
)

#v(0.5em)

#resume-entry(
  title: [ENSICAEN — Engineer diploma in Informatics, image],
  location: [2013 -- 2017],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Caen]],
  description: none
)

#v(0.5em)

#resume-entry(
  title: [IUT — Technical degree in Informatics, image],
  location: [2011 -- 2013],
  date: [#text(size: 1.1em, weight: "regular", fill: gray)[Caen]],
  description: none
)

#v(1em)

= Communication skills
#v(0.5em)
#skill("French (Native)", 1.0)
#skill("English (TOIEC 820, Fluent)", 0.9)
#skill("Italian (Fluent)", 0.85)
#skill("German (B1)", 0.4)

#v(1em)

= AI Skills
#v(0.5em)
#resume-item[
  - *VS Code Copilot*: Professional usage (prompts, agents, modes)
  - *Gemini*: Gemini and Gemini Gems
  - *NLP & Prompt Engineering*: Professional development of prompts in production at Tenable with Gemini for NLP
]

#v(1em)

// Helper for skill pills
#let tag(content, icon-name: none) = {
  box(
    rect(
      fill: blue.lighten(90%),
      stroke: 0.5pt + blue.darken(20%),
      radius: 10pt,
      inset: (x: 6pt, y: 3pt),
      text(size: 0.85em, fill: blue.darken(40%), weight: "medium", {
        if icon-name != none { icon(icon-name) + " " }
        content
      })
    )
  )
}

= Software skills
#v(0.5em)
#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    #skill("Kotlin / Java", 0.95, icon-name: "kotlin")
    #skill("Rust / Dioxus", 0.85, icon-name: "rust")
    #skill("Flutter / Dart", 0.8, icon-name: "flutter")
    #skill("VueJS / React", 0.75, icon-name: "vuedotjs")
  ],
  [
    #skill("MongoDB / SQL", 0.95, icon-name: "mongodb")
    #skill("Spring / Ktor", 0.85, icon-name: "spring")
    #skill("Git / CI/CD", 0.9, icon-name: "git")
    #skill("Python / PHP", 0.6, icon-name: "python")
  ]
)

#v(0.5em)
#block({
  let tags = (
    tag("Intellij", icon-name: "intellijidea"), tag("Snowflake", icon-name: "snowflake"), 
    tag("Jira", icon-name: "jira"), tag("JUnit"), tag("Typst"), tag("LaTeX"), 
    tag("OpenCV"), tag("DL4J"), tag("J2EE"), tag("C#"), tag("Matlab"), 
    tag("Jenkins", icon-name: "jenkins"), tag("Golang", icon-name: "go"), 
    tag("TensorFlow", icon-name: "tensorflow"), tag("NodeJS", icon-name: "nodedotjs"), 
    tag("Unity", icon-name: "unity"), tag("Docker", icon-name: "docker")
  )
  tags.join(h(4pt))
})

#v(1em)

= Hobbies
#v(0.5em)
#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 10pt,
  rect(fill: orange.lighten(90%), radius: 5pt, inset: 8pt, width: 100%)[
    📖 *Reading* \
    #text(size: 0.85em, fill: gray.darken(50%))[Medium digest, Deep learning]
  ],
  rect(fill: green.lighten(90%), radius: 5pt, inset: 8pt, width: 100%)[
    🔬 *Interests* \
    #text(size: 0.85em, fill: gray.darken(50%))[Sciences, Agriculture, Japanese culture]
  ],
  rect(fill: blue.lighten(90%), radius: 5pt, inset: 8pt, width: 100%)[
    🏃 *Sports* \
    #text(size: 0.85em, fill: gray.darken(50%))[Trail running, Cycling, Monofin swimming]
  ]
)
