======================
Learning: 07/08/2014
======================

1) Question: 
---------------
Media=All vs Media=Screen
It seems like recently I have seen many more people starting to use media="all" vs media="screen" in their stylesheets.

My question is when should I use media="all" over media="screen" and vice versa?

Note: I am using HTML5 Doctype if that makes a difference.
	
Answer:
---------------

media="all"    // Used for all media type devices ( its default under html 5)
media="screen" // Used for computer screens(default value  for html 4.01)

Good read

7.3 Recognized media types
http://www.w3.org/TR/CSS2/media.html
Is there no difference between No media and media=“all” in css link?
http://stackoverflow.com/questions/6921573/is-there-no-difference-between-no-media-and-media-all-in-css-link

2) 
Question:
-------------
Confusion on about rem unit of font-size. 
In css-tricks website, I found this:
body { font-size: 12px; margin: 0; padding: 0;}
.one, .two {
  border: solid #666;
  border-width: 10px; border-width: 0.01rem;   /* 1vw */
  border-radius: 30px; border-radius: 0.03rem; /* 3vw */
  font-size: 20px; font-size: 0.02rem;         /* 2vw */
  padding: 20px; padding: 0.02rem;             /* 2vw */
}

Again, in this link, I found something else: http://snook.ca/archives/html_and_css/font-size-with-rem

body { font-size:62.5%; }
h1 { font-size: 2.4em; } /* =24px */
p  { font-size: 1.4em; } /* =14px */
li { font-size: 1.4em; } /* =14px? */
li li, li p /* etc */ { font-size: 1em; }

So, different links have different calculation between rem and px. So, which calculation we should follow?
