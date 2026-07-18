---
title: I became a vibecoder for a week
quote: (theres a reason it was only a week)
---
I have hated ai for a long time, but thanks to the 2 shitholes that are reddit and twitter (i refuse to call it x), I have seen so many "programmers" singing the praises of vibe coding (using ai for programming) that I thought I had to see what the hype was all about.
A few months ago now I decided I would forget about the ethics and try out vibe coding for at least a week.

## My vibing setup
First, I installed claude code, as it was the one people talked about the most on the slop apps, and my first shock came right after typing `claude-code` into the terminal. A paywall, $20/month to even use the thing, no option to use a free model, I remember thinking "People actually pay for this shit?" and to be honest I still think the same thing. 
Seeing the paywall I was ready to call this experiment a failure before it even started, but for some reason I continued, and found that opencode has a free plan, perfect.

## Actually vibecoding
The first thing I used opencode for was some refactoring of a project that I had recently started, a tui library in rust, I hadn't put a huge amount of time Into it yet but enough that having all the code in one file was an issue, so I prompted to agent to split main.rs into multiple files while maintaining the same functionality, and to its credit, that worked fine, although gave me less of an understanding of the codebase compared to if I had done it myself.

The problems really only started when it was actually writing code. Asking it to implement a certain function it would work for a bit, compile it a few times to test and make a half-decent function, however, when i added more functionality myself, and then tried to use the same agent session for debugging, i noticed the first *major* issue, opencode thought it was the only thing working on this code, and couldn't understand that I would change stuff, causing it to work off of false assumptions about the content of the code.

### How ai writes code
The next thing I noticed is the speed, it seemed to spend a long time on "thinking" before it started writing code, compared to how I code where I think about it a little bit beforehand, but mostly while writing the code, however once it was writing code it became a lot faster than me: all in all a fair bit faster than doing it myself, but not to an insane degree.

When I actually read the code it produced (which apparently true vibe coders don't do), despite being new to rust myself, I found that it used some bad practices: using `.unwrap()` on an easily recoverable error (causing the program to panic if there is an error), pattern matching when `if let` would suffice, and of course comments explaining simple things, and probably plenty more issues I didn't notice as a new rust developer.

### The thing tech bros never mention
Before any potential tech bro reads this and says "just use a better model lol", the third major problem, that no better model could ever solve, is that vibe-coding is kinda boring. You type `opencode` into the terminal, tell it what you want, then wait for a few minutes as it "thinks" and then writes code, reading its "thoughts" to keep yourself occupied while you wait, as someone who actually **enjoys** programming, this ripped all the fun out of it, because, well, I wasn't programming.

## The part that might make you hate me, OSS contribution
Ok ok, put the pitchforks down for a second, I felt bad doing this as well, but did what I could to make it less harmful - I contributed to a repo where the owner also frequently used ai, and I disclosed that the pr was almost entirely ai generated, leaving them with the choice to deny it if they wanted.

The repo in question was a browser home page that I was already using, and the feature that "I" added was configurable hotkeys to open favourited sites (eg. press y for youtube, g for github, etc).

Before this pr I thought that ai might not have been very good at using rust because of a smaller amount of training data available, and I thought that ai would be better suited for web development, however I was wrong. The things that make rust good for humans (catching more errors at compile time and good error messages) also help ai, when doing web development there is no compiler at all, let alone one with useful errors, so ai has no idea if an element is in the right place or not: this caused 5 or so "still in the wrong place" prompts and reminded me why im not a web developer.

### After the pr
I will admit that it was nice to be able to think of a feature you want, and have a "implement this feature" machine that prevents you from having to learn the devils language (javascript), there was little satisfaction once it was complete, sure the feature was nice to have, but it felt about as much like I had made it as if I had created an issue on github asking for the feature to be added (vibe coders, you are allowed to do this).

Using it for my own project in rust also felt like I hadn't achieved anything, and ultimately made me less familiar with my own codebase

## Conclusion
This week of vibe coding did make me understand more about why some people do it - they want to have something without the effort or skills to make it themselves. But the lack of satisfaction means that it will never replace programming, at least for me. Finally, vibe coding feels like "all or nothing", either you tell it to write the whole thing itself, or you don't use it - if you try to use it only in some places you and the ai will both have a worse understanding of the code, so I chose nothing, `yay -Rns opencode`.
