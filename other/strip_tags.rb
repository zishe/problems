text = '<transcript>
<text start="1" dur="5">
We choose to go to the moon in this decade and do the other things,
</text>
<text start="6" dur="5">
not because they are easy, but because they are hard.
</text>
<text start="11" dur="1">(John F. Kennedy 1962)</text>
<text start="37" dur="4">
We had an expansive run in the &#39;60s and &#39;70s.
</text>
<text start="42" dur="2">You might have thought,</text>
<text start="44" dur="1">as I did then,</text>
<text start="45" dur="4">
that our species would be on Mars before the century was over.
</text>
<text start="50" dur="3">But instead, we&#39;ve pulled inward.</text>
<text start="54" dur="1">Robots aside,</text>
<text start="56" dur="3">
we&#39;ve backed off from the planets and the stars.
</text>
<text start="60" dur="2">I keep asking myself:</text>
<text start="62" dur="4">Is it a failure of nerve or a sign of maturity?</text>
<text start="67" dur="4">
Maybe it&#39;s the most we could reasonably have expected.
</text>
<text start="71" dur="3">
In a way, it&#39;s amazing that it was possible at all:
</text>
<text start="75" dur="4">
We sent a dozen humans on week-long excursions to the Moon,
</text>
<text start="79" dur="3">missions that returned a wealth of data,</text>
<text start="82" dur="3">but nothing of short-term, everyday,</text>
<text start="85" dur="4">bread-on-the-table practical value,</text>
<text start="89" dur="1">or at least not much.</text>
<text start="91" dur="3">They lifted the human spirit, though.</text>
<text start="94" dur="3">
They enlightened us about our place in the Universe.
</text>
<text start="98" dur="3">
A highly visible program affecting our view of ourselves
</text>
<text start="101" dur="4">
might clarify the fragility of our planetary environment
</text>
<text start="105" dur="2">and the common peril</text>
<text start="107" dur="2">and responsibility</text>
<text start="109" dur="3">of all the nations and peoples of Earth.</text>
<text start="113" dur="3">There&#39;s something more.</text>
<text start="116" dur="3">Spaceflight speaks to something deep inside us</text>
<text start="120" dur="3">many of us, if not all.</text>
<text start="123" dur="4">
A scientific colleague tells me about a recent trip to the New Guinea highlands
</text>
<text start="127" dur="2">where she visited a stone age culture</text>
<text start="129" dur="4">hardly contacted by Western civilization.</text>
<text start="133" dur="3">They were ignorant of wristwatches,</text>
<text start="136" dur="3">soft drinks, and frozen food.</text>
<text start="139" dur="3">But they knew about Apollo 11.</text>
<text start="142" dur="3">They knew that humans had walked on the Moon.</text>
<text start="145" dur="3">They knew the names of Armstrong</text>
<text start="148" dur="1">and Aldrin</text>
<text start="149" dur="1">and Collins.</text>
<text start="151" dur="5">
They wanted to know who was visiting the Moon these days.
</text>
<text start="157" dur="3">Projects that are future-oriented,</text>
<text start="160" dur="2">that, despite their political difficulties,</text>
<text start="162" dur="4">can be completed only in some distant decade</text>
<text start="166" dur="2">are continuing reminders</text>
<text start="168" dur="2">that there will be a future.</text>
<text start="171" dur="2">Winning a foothold on other worlds</text>
<text start="173" dur="3">whispers in our ears</text>
<text start="176" dur="3">that we&#39;re more than Picts</text>
<text start="179" dur="2">or Serbs</text>
<text start="181" dur="2">or Tongans.</text>
<text start="183" dur="3">We&#39;re humans.</text>
<text start="186" dur="6">
In meantime people everywhere hunger to understand.
</text>
<text start="192" dur="3">The idea that we&#39;ve now understood something</text>
<text start="195" dur="2">never grasped by anybody</text>
<text start="197" dur="3">who ever lived before.</text>
<text start="200" dur="2">that exhilaration,</text>
<text start="202" dur="3">especially intense for the scientists involved,</text>
<text start="205" dur="2">but perceptible to nearly everybody</text>
<text start="207" dur="2">propagates through the society,</text>
<text start="209" dur="2">bounces off walls,</text>
<text start="211" dur="2">and comes back at us.</text>
<text start="213" dur="3">
It encourages us to address problems in other fields
</text>
<text start="216" dur="3">that have also never before been solved.</text>
<text start="219" dur="3">
It increases the general sense of optimism in the society.
</text>
<text start="223" dur="3">It gives currency to critical thinking of the</text>
<text start="226" dur="2">sort urgently needed</text>
<text start="228" dur="4">
if we are to solve hitherto intractable social issues.
</text>
<text start="233" dur="4">It helps stimulate a new generation of scientists.</text>
<text start="237" dur="2">The more science in the media,</text>
<text start="239" dur="2">especially if methods are described,</text>
<text start="241" dur="2">as well as conclusions and implications</text>
<text start="243" dur="3">the healthier, I believe, the society is.</text>
<text start="248" dur="2">There&#39;s plenty of housework</text>
<text start="250" dur="2">to be done here on Earth,</text>
<text start="252" dur="4">and our commitment to it must be steadfast.</text>
<text start="257" dur="2">But we&#39;re the kind of species</text>
<text start="259" dur="2">that needs a frontier</text>
<text start="261" dur="4">for fundamental biological reasons.</text>
<text start="265" dur="3">Every time humanity stretches itself</text>
<text start="268" dur="3">it receives a jolt of productive vitality</text>
<text start="271" dur="2">that can carry it for centuries.</text>
<text start="276" dur="3">Yuri Romanenko,</text>
<text start="279" dur="2">on returning to Earth</text>
<text start="281" dur="3">
after what was then the longest space flight in history, said
</text>
<text start="284" dur="4">&quot;The Cosmos is a magnet...</text>
<text start="288" dur="2">Once you&#39;ve been there,</text>
<text start="290" dur="2">all you can think of</text>
<text start="292" dur="2">is how to get back.&quot;</text>
<text start="331" dur="2">
Worldwide military budget vs. Worldwide space budget
</text>
</transcript>'

puts text.gsub(/<.*?>/, '').split("\n").map(&:strip).join(' ').gsub('&#39;', '\'')
