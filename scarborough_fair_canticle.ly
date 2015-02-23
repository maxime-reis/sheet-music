% license : GNU GPL v3
% author  : Maxime REIS
% email   : maxime@ponteilla.net
% date    : Feb. 23, 2015
% summary : Three voices transcription of Paul Simon & Art Garfunkel's version
%  of the traditional folk song 'Scarborough Fair'.
% detail  : From the 1981 live at Central Park's version of the song, the
%  counterverses from Paul Simon's 'The Side of a Hill' have been added, as in
%  'Scarborough Fair/Canticle' from the album 'Parsley, Sage, Rosemary and
%  Thyme' released in 1966.

\version "2.16.2"

\include "english.ly"

\header
{
    title = "Scarborough Fair Canticle"
    composer="Paul Simon & Art Garfunkel"
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%                         LYRICS                         %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% VERSES %%%

lyrics_verse_one = \lyricmode
{
    Are you go -- ing to Scar -- bor -- ough Fair?
    Pars -- ley, sage, rose -- mar -- y and thyme
    Re -- mem -- ber me to one who lives there
    She once was a true love of mine.__
}

lyrics_verse_two = \lyricmode
{
    Tell her to make me a cam -- bric shirt
    Pars -- ley, sage, rose -- mar -- y and thyme
    Wi -- thout no seams nor nee -- dle -- work
    Then she'll be a true love of mine.
}

lyrics_verse_three = \lyricmode
{
    Tell her to find me an a -- cre of land
    Pars -- ley, sage, rose -- mar -- y and thyme
    Be -- tween the salt wa -- ter and the sea strand
    Then she'll be a true love of mine.
}

lyrics_verse_four = \lyricmode
{
    Tell her to reap it in a si -- ckle of lea -- ther
    Pars -- ley, sage, rose -- mar -- y and thyme
    And to ga -- ther it all in a bunch of hea -- ther
    Then she'll be a true love of mine.
}


%%% COUNTER VERSES %%%

lyrics_counter_verse_two = \lyricmode
{
    On the side of a hill in the deep fo -- rest green
    Tra -- cing a spa -- rrow on snow -- cres -- ted ground
    Blan -- kets and bed -- clothes a child of the moun -- tains
    Sleeps u -- na -- ware of the cla -- ri -- on call
}

lyrics_counter_verse_three = \lyricmode
{
    On the side of a hill a sprin -- kling of leaves
    Washed is the ground with so ma -- ny tears
    A sol -- dier cleans and po -- li -- shes a gun
}

lyrics_counter_verse_four = \lyricmode
{
    War be -- llows, bla -- zing in scar -- let bat -- ta -- lions
    Ge -- ne -- rals or -- der their sol -- diers to kill
    And to fight for a cause they've long a -- go for -- got -- ten
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%                      GUITAR PARTS                      %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% COMMON GUITAR MUSICAL PARTS %%%

g_intro_and_outro_part =
{
    a,8     e'      g       fs      d'      g       |
    d8\5    e'      g       fs      d'      g       |
    c8      b       g4              b,              |
}

g_main_riff =
{
    a,8     e'      g       fs      d'      g       |
    a,8     e'      a       e       b       a       |
}

g_verse_middle =
{
    a,8     e'      g       fs      d'      g       |
    a,8     e'      a       e       b       a       |
    <g, b>8 g       d       <e c'>  <d  b>4         |
    a,8     e'      g       fs      d'      g       |

    a,8     e'      a       e       b       a       |
    c8      e'      g       e       c'      g       |
    a,8     e'      a       e       b       a       |
    <c e'>8 g       <d fs'> a       <d d'>  a       |

    a,8     e'      g       fs      d'      g       |
    a,8     e'      a       e       b       a       |
    a,8     e'      g       fs      d'      g       |
    a,8     e'      a       e       b       a       |

    a,8     e'      a       e       a,      b,      |
    c8      e'      g       e       c'      g       |
    <c e'>8 g       <b, d'> g       <a, c'> g       |
    <g, b>8 g       d       g       <e c'>  <d b>   |

    <e c'>4         <d b>           <g, g>          | 
    a,8     e'      a       e       e'      c'      |
    <g, b>8 g       d       g       <e c'>4         |
    <d b>4    <d b>16 <e c'> <d b>8  <b, g>4        |
}

g_outro =
{
    \harmonicsOn
   <a, a'>2.
    \harmonicsOff
}


%%% INTRO %%%
guitar_intro = 
{
    \time 3/4

    \g_intro_and_outro_part
    \g_main_riff
    \g_main_riff
}


%%% VERSES %%%

guitar_main_verses = 
{
    \time 3/4

    \g_verse_middle
    \g_main_riff
    \g_main_riff
}

guitar_last_verse_and_outro =
{
    \time 3/4

    \g_verse_middle
    \g_intro_and_outro_part
}


%%% GUITAR LAYOUT %%%

guitar_intro_staff = \new TabStaff
\with
{
    instrumentName = "Guitar"
    midiInstrument = "acoustic guitar (nylon)"
}
{
    \override Stem #'transparent = ##t
    \override Beam #'transparent = ##t
    \guitar_intro
}

guitar_main_verses_staff = \new TabStaff
\with
{
    instrumentName = "Guitar"
    midiInstrument = "acoustic guitar (nylon)"
}
{
    \override Stem #'transparent = ##t
    \override Beam #'transparent = ##t
    \guitar_main_verses
}

guitar_last_verse_and_outro_staff = \new TabStaff
\with
{
    instrumentName = "Guitar"
    midiInstrument = "acoustic guitar (nylon)"
}
{
    \override Stem #'transparent = ##t
    \override Beam #'transparent = ##t
    \guitar_last_verse_and_outro
    \g_outro
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%                       VOICE ONE                        %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% FIRST VOICE MUSICAL BLOCKS %%%

v_one_parsley_sage =
{
    R2.                                             |
    r4              b'4             d''4            |
    e''2                            d''4            |
    b'4             cs''4           a'4             |
}

v_one_parsley_sage_variant =
{
    R2.                                             |
    r4              g''4            fs''4           |
    e''2                            d''4            |
    d''4            e''4            e''4            |
}

v_one_love_of_mine =
#(define-music-function
    (parser location note)
    (ly:music?)
#{
    R2.                                             |
    e'2                             b'4             |
    a'2                             g'4             |
    fs'4            e'4             $note           |

    e'2.                     ~                      |
    e'2.                     ~                      |
    e'2.                                            |
    R2.                                             |
#})


%%% FIRST VERSE %%%

voice_one_verse_one =
{
    \time 3/4
    \key e \minor

    e'2                             e'4             |
    b'8     b'2                         b'8         |
    fs'4.                   g'8     fs'4            |
    e'2.                                            |

    \v_one_parsley_sage

    b'2.                   ~                        |
    b'2.                   ~                        |
    b'2.                                            |
    r2                              e''4            |

    e''2                            e''4            |
    d''2                            b'4             |
    b'4             a'4             g'4             |
    fs'8  ( d'8  ~  d'2 )                           |

    \v_one_love_of_mine d'4
}


%%% SECOND VERSE %%%

voice_one_verse_two =
{
    \time 3/4
    \key e \minor

    e'8     e'4.                    e'4             |
    b'4             b'4             b'4             |
    fs'4          ( g'4 )           fs'4            |
    e'2.                                            |

    \v_one_parsley_sage

    b'2.                   ~                        |
    b'2.                   ~                        |
    b'2.                                            |
    r2                              e''8    e''8 ~  |

    e''2                            e''4            |
    d''2                            b'4             |
    b'4           ( a'4 )           g'4             |
    fs'8  ( d'8  ~  d'2 )                           |

    \v_one_love_of_mine fs'4
}


%%% THIRD VERSE %%%

voice_one_verse_three =
{
    \time 3/4
    \key e \minor

    e'8     e'4.                    e'4             |
    b'4             a'4             g'4             |
    fs'4            g'4             fs'4            |
    e'2.                                            |

    \v_one_parsley_sage

    b'2.                                            
  ( a'2.                                            
    g'2. )                                          |
    r2                              e''4            |

    e''4            e''4            e''4            |
    d''2                            b'4             |
    b'4             a'4             g'4             |
    fs'8  ( d'8~    d'2 )                           |

    \v_one_love_of_mine fs'4
}


%%% FOURTH VERSE %%%

voice_one_verse_four =
{
    \time 3/4
    \key e \minor

    e'8     e'4.                    e'4             |
    b'8     b'4.                    b'8     b'8     |
    fs'8    g'4.                    fs'4            |
    e'8     e'8  ~  e'2                             |

    \v_one_parsley_sage_variant

    fs''2.                   ~                      |
    fs''2.                   ~                      |
    fs''2.                                          |
    r2                              e''8    e''8    |

    e''4            e''4            e''4            |
    d''2                            b'8     b'8     |
    b'4           ( a'4 )           g'4             |
    a'8     fs'8  ~ fs'2                            |

    \v_one_love_of_mine fs'4
}


%%% FIFTH VERSE %%%

voice_one_verse_five =
{
    \time 3/4
    \key e \minor

    e'2                             e'4             |
    b'8     b'2                         b'8         |
    fs'4.                   g'8     fs'4            |
    e'2.                                            |

    \v_one_parsley_sage_variant

    fs''2.                 ~                        |
    fs''2.                 ~                        |
    fs''2.                                          |
    r2                              e''4            |

    e''2                            e''4            |
    d''2                            b'4             |
    b'4           ( a'4 )           g'4             |
    a'4             fs'2                            |

    \v_one_love_of_mine d'4
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%                       VOICE TWO                        %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% SECOND VOICE MUSICAL BLOCKS %%%

v_two_love_of_mine =
#(define-music-function
    (parser location note)
    (ly:music?)
#{
    R2.                                             |
    e'2                             g'4             |
    fs'2                            e'4             |
    d'4             e'4             d'4             |

    e'2.                     ~                      |
    e'2.                     ~                      |
    e'2.                                            |
    R2.                                             |
#})


%%% NO FIRST VERSE %%%


%%% SECOND VERSE %%%

voice_two_verse_two =
{
    \time 3/4
    \key e \minor

    e'8     e'4.                    e'4             |
    e'4             e'4             e'4             |
    d'4           ( e'4 )           d'4             |
    e'2.                                            |

    R2.                                             |
    r4              g'4             a'4             |
    a'4           ( g'4 )           g'4             |
    g'4             a'4             a'4             |

    b'2.~                                           |
    b'2.~                                           |
    b'2.                                            |
    r2                              g'8     g'8  ~  |

    g'2                             g'8   ( a'8 )   |
    b'2                             a'4             |
    g'4           ( fs'4 )          e'4             |
    d'2.                                            |

    \v_two_love_of_mine e'2.
}


%%% THIRD VERSE %%%

voice_two_verse_three =
{
    \time 3/4
    \key e \minor

    e'8     e'4.                    e'4             |
    e'4             e'4             e'4             |
    d'4             e'4             d'4             |
    e'2.                                            |

    R2.                                             |
    r4              g'4             a'4             |
    a'4           ( g'4 )           g'4             |
    g'4             a'4             a'4             |

    b'2.
  ( a'2.
    g'2. )                                          |
    r2                              g'4             |

    g'4             g'4             g'8   ( a'8 )   |
    b'2                             a'4             |
    g'4             fs'4            e'4             |
    fs'8  ( d'8 ) ~ d'2                             |

    \v_two_love_of_mine e'2.
}


%%% FOURTH VERSE %%%

voice_two_verse_four =
{
    \time 3/4
    \key e \minor

    e'8     e'4.                    e'4             |
    e'8     e'4.                    e'8     e'8     |
    d'8     d'4.                    d'4             |
    d'8     e'8  ~  e'2                             |

    R2.                                             |
    r4              b'4             d''4            |
    b'2                             b'4             |
    b'4             cs''4           a'4             |

    b'2.~                                           |
    b'2.~                                           |
    b'2.                                            |
    r2                              g'8     g'8     |

    g'4             g'4             g'8   ( a'8 )   |
    b'2                             a'4             |
    g'8     g'8   ( fs'4 )          e'4             |
    fs'8    d'8  ~  d'2                             |

    R2.                                             |
    e'2                             g'4             |
    fs'2                            e'4             |
    d'4             e'4             d'4             |

    b2.~                                            |
    b2.                      ~                      |
    b2.                                             |
    R2.                                             |
}


%%% FIFTH VERSE %%%

voice_two_verse_five =
{
    \time 3/4
    \key e \minor

    e'2                             e'4             |
    e'8     e'2                             e'8     |
    d'4.                     d'8    d'4             |
    e'2.                                            |

    R2.                                             |
    r4              b'4             d''4            |
    b'2                             b'4             |
    b'4             cs''4           a'4             |

    b'2.~                                           |
    b'2.~                                           |
    b'2.                                            |
    r2                              g'4             |

    g'2                             g'8   ( a'8 )   |
    b'2                             a'4             |
    g'4           ( fs'4 )        e'4               |
    fs'4            d'2                             |

    \v_one_love_of_mine d'4
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%                      VOICE THREE                       %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% NO FIRST VERSE %%%


%%% SECOND VERSE %%%

counter_voice_verse_two = 
{
    \time 3/4
    \key e \minor

    R2.                                             |
    r2                              d'8     d'8     |
    d'4             e'4             fs'4            |
    g'4             fs'4            e'4             |
    
    fs'4            e'4             d'4             |
    b4              r2                              |
    R2.                                             |
    R2.                                             |

    d''4            e''4            cs''4           |
    cs''4            b'4              cs''4         |
    d''4             cs''4            a'4           |
    b'4              r2                             |

    R2.                                             |
    R2.                                             |
    a4              d'4             e'4             |
    fs'4            fs'4            e'4             |

    fs'4            e'4             d'4             |
    e'4             b4              r4              |
    R2.                                             |
    R2.                                             |

    e'4             fs'4            g'4             |
    a'4             g'4             fs'4            |
    g'4             fs'4            d'4             |
    e'4             r2                              |    
}


%%% THIRD VERSE %%%

counter_voice_verse_three = 
{
    \time 3/4
    \key e \minor

    R2.                                             |
    r2                              d'4             |
    d'4             e'4             fs'4            |
    g'4             fs'4            e'4             |

    fs'4            e'4             d'4             |
    b4              r2                              |
    R2.                                             |
    R2.                                             |

    d''4            e''4            cs''4           |
    cs''4         ( b'4 )           cs''4           |
    d''4            cs''4           a'4             |
    b'4             r2                              |

    R2.                                             |
    R2.                                             |
    a4              a4              a4              |
    d'2                             a4              |

    d'4.                    a8      d'8     a8      |
    b4              r2                              |
    R2.                                             |
    R2.                                             |

    R2.                                             |
    R2.                                             |
    R2.                                             |
    R2.                                             |
}


%%% FOURTH VERSE %%%

counter_voice_verse_four = 
{
    \time 3/4
    \key e \minor

    R2.                                             |
    R2.                                             |
    d'4             e'4             fs'4            |
    g'4             fs'4            e'4             |

    fs'4            e'4             d'4             |
    e'4             b4              r4              |
    R2.                                             |
    R2.                                             |

    d''8    d''8    d''2                            |
    e''4            e''4            e''4            |
    fs''4           fs''4           fs''4           |
    e''4            r2                              |

    R2.                                             |
    r2                              d''8    d''8    |
    d''4            b'4             g'4             |
    a'2                             a4              |            

    d'8     e'8     fs'4            g'4             |
    fs'4            e'4             r4              |
    R2.                                             |
    R2.                                             |

    R2.                                             |
    R2.                                             |
    R2.                                             |
    R2.                                             |
}


%%% NO FIFTH VERSE %%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%                         SCORES                         %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%% INTRO ~ (Guitar only) %%%

\markup { "Capo on 7th fret." }
\score
{
<<
    \guitar_intro_staff
>>
    \header { piece = "INTRO" }
}


%%% FIRST VERSE ~ (Guitar and voice one) %%%

\score
{
<<
    \guitar_main_verses_staff

    \new Staff \with { instrumentName = "Voice one" }
        \new Voice = "voice_one" \voice_one_verse_one
        \new Lyrics \lyricsto "voice_one" \lyrics_verse_one
>>
    \header { piece = "VERSE 1" }
}


%%% SECOND VERSE ~ (Guitar and all three voices) %%%

\score
{
<<
    \guitar_main_verses_staff

    \new Staff \with { instrumentName = "Voice one" }
        \new Voice = "voice_one" \voice_one_verse_two
        \new Lyrics \lyricsto "voice_one" \lyrics_verse_two

    \new Staff \with { instrumentName = "Voice two" }
        \new Voice = "voice_two" \voice_two_verse_two
        \new Lyrics \lyricsto "voice_two" \lyrics_verse_two

    \new Staff \with { instrumentName = "Voice three" }
        \new Voice = "counter_voice" \counter_voice_verse_two
        \new Lyrics \lyricsto "counter_voice" \lyrics_counter_verse_two
>>
    \header { piece = "VERSE 2" }
}


%%% THIRD VERSE ~ (Guitar and all three voices) %%%

\score
{
<<
    \guitar_main_verses_staff

    \new Staff \with { instrumentName = "Voice one" }
        \new Voice = "voice_one" \voice_one_verse_three
        \new Lyrics \lyricsto "voice_one" \lyrics_verse_three

    \new Staff \with { instrumentName = "Voice two" }
        \new Voice = "voice_two" \voice_two_verse_three
        \new Lyrics \lyricsto "voice_two" \lyrics_verse_three

    \new Staff \with { instrumentName = "Voice three" }
        \new Voice = "counter_voice" \counter_voice_verse_three
        \new Lyrics \lyricsto "counter_voice" \lyrics_counter_verse_three
>>
    \header { piece = "VERSE 3" }
}


%%% FOURTH VERSE ~ (Guitar and all three voices) %%%

\score
{
<<
    \guitar_main_verses_staff

    \new Staff \with { instrumentName = "Voice one" }
        \new Voice = "voice_one" \voice_one_verse_four
        \new Lyrics \lyricsto "voice_one" \lyrics_verse_four

    \new Staff \with { instrumentName = "Voice two" }
        \new Voice = "voice_two" \voice_two_verse_four
        \new Lyrics \lyricsto "voice_two" \lyrics_verse_four

    \new Staff \with { instrumentName = "Voice three" }
        \new Voice = "counter_voice" \counter_voice_verse_four
        \new Lyrics \lyricsto "counter_voice" \lyrics_counter_verse_four
>>
    \header { piece = "VERSE 4" }
}


%%% FIFTH VERSE ~ (Guitar, voices one and two) %%%

\score
{
<<
    \guitar_last_verse_and_outro_staff

    \new Staff \with { instrumentName = "Voice one" }
        \new Voice = "voice_one" \voice_one_verse_five
        \new Lyrics \lyricsto "voice_one" \lyrics_verse_one

    \new Staff \with { instrumentName = "Voice two" }
        \new Voice = "voice_two" \voice_two_verse_five
        \new Lyrics \lyricsto "voice_two" \lyrics_verse_one
>>
    \header { piece = "VERSE 5" }
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%                          MIDI                          %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\score
{
<<
    %%% GUITAR %%%
    \new TabStaff
        \with
        {
            instrumentName = "Guitar"
            midiInstrument = "acoustic guitar (nylon)"
        }
    {
        \override Stem #'transparent = ##t
        \override Beam #'transparent = ##t
        \transpose c g % Capo 7th fret
        {
            \guitar_intro
            \unfoldRepeats \repeat volta 4 \guitar_main_verses
            \guitar_last_verse_and_outro
        }
    }

    %%% VOICE ONE %%%
    \new Staff \with { midiInstrument = "acoustic grand" }
    {
        \new Voice = "voice_one"
        {
            R2. * 7     % INTRO
            \voice_one_verse_one
            \voice_one_verse_two
            \voice_one_verse_three
            \voice_one_verse_four
            \voice_one_verse_five
        }
    }

    %%% VOICE TWO %%%
    \new Staff \with { midiInstrument = "acoustic grand" }
    {
        \new Voice = "voice_two"
        {
            R2. * 7     % INTRO
            R2. * 24    % No first verse
            \voice_two_verse_two
            \voice_two_verse_three
            \voice_two_verse_four
            \voice_two_verse_five
        }
    }

    %%% VOICE THREE %%%
    \new Staff \with { midiInstrument = "acoustic grand" }
    {
        \new Voice = "counter_voice"
        {
            R2. * 7     % INTRO
            R2. * 24    % No first verse
            \counter_voice_verse_two
            \counter_voice_verse_three
            \counter_voice_verse_four
        }
    }
>>
    \midi
    {
        \tempo 2 = 70
    }
}
