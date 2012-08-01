#Introducing the Polyrex Search gem

The Polyrex Search gem is an experiment on how keywords can be stored and searched using a Polyrex document.

    require 'polyrex-search'

    ps = PolyrexSearch.new 'polyrex_search.xml'
    a = ps.search 'bubble time'

    #=> [["spacebubble.com", 2],["hubbabubba.com", 1]]

file: polyrex_search.xml
    <?xml version='1.0' encoding='UTF-8'?>
    <words>
      <summary>
        <recordx_type>polyrex</recordx_type><schema>words/key[word]/location[url]</schema></summary>
      <records>
        <key id='1'>
          <summary><word>bubble</word></summary>
          <records>
            <location id='2'><summary><url>spacebubble.com</url></summary><records></records></location>
            <location id='3'><summary><url>hubbabubba.com</url></summary><records></records></location>
          </records>
        </key>
        <key id='2'>
          <summary><word>time</word></summary>
          <records>
            <location id='2'><summary><url>spacebubble.com</url></summary><records></records></location>
          </records>
        </key>
      </records>
    </words>

