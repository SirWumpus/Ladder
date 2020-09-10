Ostermiller's Java Ladder
=========================

This is an updated version of Ostermiller's Ladder built against OpenJDK 14.  His last release, Ladder 1.3, was built against Java 1.5 and failed to run or compile with newer Java runtime releases.


Overview
--------

Ladder brings us back to the days of classic computer games.  Back when computer games were written without any fancy graphics.  Heck, they were written without any graphics at all!

Using only ASCII characters, ladder was an addictive game that was very popular for computers running the CP/M operating system.  Seeing the game, you might be very much reminded of Donkey Kong (nudge nudge).

Ladder was rewritten in Java by Stephen Ostermiller and can be played on most of today's computers.  This version includes all the original levels and several new ones.  It also comes with a level editor so that you can make your own.


Game Play Instructions
----------------------

You control the lad by using the arrow keys, jumping with the space-bar, and stop by pressing any other key.  But beware of the falling rocks called Der Rocks.  You can find and grasp the treasures (shown as $) and gold statues (shown as &) before the bonus time runs out.  You will receive the bonus time points that are left when you have finished the level.  A new lad will be awarded for every 10,000 points.  

Remember, there is more than one way to skin a cat. (chum)

Good luck lad.


Differences
-----------

This version of Ladder is very similar to the original, but there are a few differences.  The goal is to keep the original spirit and game play while making improvements.

Most of the controls for the lad are the same.  The arrow keys still move the lad around, the space bar still make him jump, and any other key will stop him.  Today's computers handle repeat key stokes differently than CP/M systems did.  If you hold down the a key there is usually a delay before the second key event is generated.  This means that holding down the space bar to keep jumping probably will not work quite like it should.  Holding down the space bar will cause the lad will jump once, then stop jumping for a second before continuing.  To execute two jumps in a row, the space bar needs to be tapped twice.

The original ladder kept a rather long buffer of keystrokes.  If you held down a key for long enough, eventually your computer would start beeping at you when this buffer filled up.  Furthermore, it would take a few seconds to process all of the keystrokes is the buffer, while you couldn't tell the lad to do anything else.  If you held down the space bar you would continue to jump for a while even after you released it.  I found this to be annoying, so in this version of ladder only one keystroke is buffered for later use.  Subsequent keystrokes will replace the keystroke in the buffer rather than overflowing the buffer and causing beeps.

If the lad is moving to the left or right, pressing the up arrow key will cause the lad to climb the next ladder  that it encounters.  This feature of the original game was not consistent with other forms of motion.  If you were falling and pressed left or right, you would still stop when you hit the ground.  If you were moving left or right and pressed down, the lad would immediately  stop rather than waiting to go down the next ladder that encountered.  Similarly, when going up ladders if left or right were pressed and the lad was next to a wall, the lad would stop.  If you were climbing a ladder and pressed left or right a moment to soon when you were at the level of the next platform, the lad would get stuck.  In this version, if the lad cannot perform an action at the given time, he doesn't do anything with the command until such a time as he can perform the action.  Some people have written me that they used the down arrow key to stop in the original, they will have to find some other key to use for stopping.

If the lad jumps and hits his head he no longer falls straight down and stops as he would have in the original.  The lad now continues in the direction that he was headed, but his jump is shortened.   This makes it possible to jump barrels even when there is a low ceiling.

Floorboards that disappear when the lad walks on them still work like they used to with one exception.  If the lad walks across a disappearing floor, the floor will disappear.  If he jumps across it the floor will remain intact.  In the original, if the lad stopped on a piece of disappearing floorboard, there would be no way to get off of it without it disappearing, even by jumping.  In this version the lad can jump off a disappearing floorboard and it will remain intact.


CP/M Ladder Authors
-------------------

Ladder was originally written for the CP/M operating system and the game came bundled with Kaypro computers. It is copyrighted by:

        Yahoo Software
        10970 Ashton Ave, Suite 312
        Los Angeles, CA


References
----------

Donkey Kong  
<https://en.wikipedia.org/wiki/Donkey_Kong_(video_game)>

Ostermiller's Java Ladder  
<https://ostermiller.org/ladder>

Turbo Pascal Ladder  
<https://github.com/mecparts/Ladder>

GoLang Ladder  
<https://github.com/SmallRoomLabs/ladder>

CP/M  
<https://en.wikipedia.org/wiki/CP/M>
