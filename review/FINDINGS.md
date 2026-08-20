# Review findings — Petra worship-team runbook

**Date:** 2026-08-20  
**Scope:** The published runbook on `main` (foundation through quick-reference, including Playbook, templates, and contributing notes). Not a code/diff review.  
**Audience for this review:** authors and pastoral adopters. Findings are written so a **pastor** can decide what is policy-grade and a **lay volunteer** can tell what would actually confuse them on a Tuesday night.

## Verdict

Petra is already a serious ministry document, not a blog. The north star (“encourage the congregation to sing”), the split of **what** (Song Selector) from **how** (Worship Lead), rehearsal-as-production, named owners, and the *Our Congregation* fill-in page are the right architecture. A professional pastor can treat large parts of it as real policy.

It is not yet equally usable as a **volunteer operating manual**. Role names collide with common church speech; several “musts” have no clock, no example, or no physical time in which to do them; local blanks still live in more than one place; and a church could adopt the skeleton with safety and licensing still unfilled. The remaining work is mostly tightening, not reinventing.

---

## How to read this file

| Severity | Means |
|---|---|
| **Critical** | The page as written cannot be followed, or a gap could cause harm / legal exposure. |
| **High** | Pastors and volunteers will apply Petra differently, or two pages disagree. |
| **Medium** | Clarity, completeness, or tone that will cause weekly friction. |
| **Low** | Worth fixing when the page is open; not blocking adoption. |

Each finding names **who it hurts** (pastor, volunteer, or both) and a **concrete fix**. Page paths are relative to the repo root.

---

## What this runbook already does well

1. **One sentence actually governs the system.** Mission, values, Playbook, role success lines, and tech philosophy all test a Sunday by whether the **room** sings. A volunteer can judge a set without reading the whole tree; a pastor can use the same sentence in an elders’ meeting.

2. **Mundane framework / artistic freedom is consistently applied.** Call times, stands vs confidence monitors, attendance, and patches are treated as settled runway — not as spirituality. That matches the study’s claim without turning the study into law.

3. **The *Freedom in Form* study is unusually careful.** It refuses to allegory-ize Jacob’s staff into “the worship system,” refuses to make the team a Levitical priesthood, and separates pastoral doctrine from operational policy. That is pastor-grade teaching.

4. **Authority is named, not implied.** Pastor → Director → team leads, with a decision table, combined-hat honesty, and an exception path, is enough to adopt as ministry policy rather than tribal custom.

5. **Practice vs rehearsal vs pre-service is (almost) disciplined.** Personal practice, group rehearsal, and Sunday confirmation are distinct. “Present” vs “ready to rehearse” vs “service-ready” is a gift to lay volunteers.

6. **Confidence monitors vs house vs stream is unusually clear.** `05-tech/lyrics-and-stage-displays.md` names synonyms and says house screens are *not* the same thing. Stands have a humane exception path, including accessibility without drama.

7. ***Our Congregation* is the right local-data design** — one sheet, each row pointing at the page that consumes it, with secrets kept out of git.

8. **Care language is pastorally adult.** Rest is not disloyalty; the team is not a counseling center; church protection policy beats worship preference; assessment is “not American Idol.” Incident order (people, then the moment, then one channel) is correct.

9. **The Playbook and the four handouts are the right on-ramps** in concept: pastors get a framework sheet; musicians, tech, and Song Selector get a pointer sheet that defers to the skeleton.

---

## Critical

### C1. The default midweek clock cannot do what the rehearsal bar requires

**Where:** `03-rehearsal/midweek-rehearsal-runbook.md` (Default timeline) vs `03-rehearsal/rehearsal-standards.md` policy §9 and “What ‘rehearsed enough’ means.”

**What’s wrong:** In a 90-minute block, devotion + last-service review consume the first 25 minutes after downbeat. A **full set run is stamped at T+1:20 and notes at T+1:25** — five minutes for a sequential run. Working every song *and every transition* is squeezed into ~55 minutes that also include warm-up. The runbook hedges (“or partial if time”); the standards treat a sequential run, rehearsed transitions, and congregational-reachability checks as the bar.

**Who it hurts:** Both. Volunteers will blow the clock, skip transitions, or skip the run — then still tick an end-state list that claims the set was rehearsed. A pastor will see a policy that is not physically true.

**Fix:** Publish a clock that fits a real set, or label the table as a **90-minute minimum** and say: scale the work block, never the run. Example for 90 minutes: tech open T−15; ready T+0; 5 min frame; 5 min review; 5 min warm-up; **45 min work**; **20 min full run**; 10 min notes/prayer/strike. Add a worked example: “4 songs + 3 transitions in 90 minutes.” If the church only has 90 minutes including strike, cut the review to two bullets or move it to chat.

---

### C2. Protection and emergency channels can stay blank while people serve — including near minors

**Where:** `08-culture-care/safety-and-protection.md`; `11-reference/links.md` (`Church protection policy: **[TBD]**`, facility plan TBD); `10-templates/our-congregation.md` (same links as blanks); `04-service/incidents-and-contingencies.md` (“follow church emergency plan”); `07-onboarding/joining-the-team.md` and `10-templates/onboarding-checklist.md` (background check **if required**).

**What’s wrong:** Petra correctly refuses to own the church’s master protection text. It then leaves volunteers with “official channels” and a live **[TBD]**. Nothing says **do not serve until this is filled**. A church can clone the repo, schedule a student on vocals, and have no designated-reporter name, no policy in hand, and no emergency-plan link. The safety page also does not say: do not investigate, do not confront the accused, do not promise a child secrecy, do not put details in the band chat or this repo.

**Who it hurts:** Both — this is the one documentation gap that can cause real harm and legal exposure. Volunteers will either freeze or invent a process.

**Fix:**

- In `safety-and-protection.md`: “Do not serve until the Director has given you the church protection policy and the name/number of the designated reporter. That name lives in *Our Congregation*, not in this skeleton.”
- Replace `links.md` TBD with a pointer: “If *Our Congregation* is blank, this church has not finished adopting Petra.”
- Add **worship-ministry defaults** unless church policy is stricter: two adults in closed rooms; no private DMs with minors (copy a parent/lead); no unsupervised rides; IEM/wardrobe help in open space; stream/photos follow church release policy. If minors serve, background check and protection training are **blocking**.
- Banner on `10-templates/incident-log.md`: facts only; no names of minors; protection matters never go in the repo.

---

## High

### H1. Three pages disagree on who actually “fixes” the set

**Where:** `PLAYBOOK.md` habit 4 (“the Song Selector **fixes** the set”); `01-roles/song-selector.md` (“publish the **fixed** set”); `00-foundation/scope-and-authority.md` and `12-quick-reference/pastor-overview.md` (Song Selector **proposes**, Director **decides**); Song Selector quick reference (“you propose, they decide”).

**What’s wrong:** Playbook language makes the Selector the decider. The RACI table does not. After a tense series-planning meeting, both parties can quote Petra. It is also unclear whether the Director signs every week, reviews on a cadence, or only overturns.

**Who it hurts:** Pastor — unenforceable policy. Volunteer Selector — does not know if a published set can be touched.

**Fix:** One sentence everywhere, then pick a default:

> Song Selector publishes the proposed set by the weekly deadline. It is **fixed** when the Director (or named designee) confirms — including a standing “silence means confirmed by [time]” rule. After that, only a named exception changes titles.

Update Playbook habit 4 to match. Do not leave “fixes” and “decides” as two different verbs for the same act.

---

### H2. “Worship Lead,” “worship leader,” and “platform lead” are three jobs sharing two names

**Where:** `00-foundation/definitions.md` (Director / Worship Lead, plus *earlier drafts* notes); `01-roles/worship-lead.md` (owns **how** it is played); `01-roles/vocalist.md` (“watch **the leader**,” “Worship Lead/lead”); `04-service/service-run-of-show.md` (“Worship Lead / **platform lead**”); media checklist and lyrics SOP (“eyes on platform lead”); mission/values (“worship leaders” in the generic sense).

**What’s wrong:** In common evangelical speech, **worship leader** is the person on the mic. In Petra, **Worship Lead** is the old MD (keys, forms, charts, rehearsal). **Director** is the old “Worship Lead” / worship pastor. **Platform lead** is used operationally and never defined. Many churches will have a keys-playing Worship Lead who is *not* the person who talks, prays, or sings lead. Vocalists are told to watch “the leader” with no definition. Definitions still teach three extinct names (*earlier drafts called this…*), which almost blesses the confusion.

**Who it hurts:** This is the #1 volunteer comprehension failure. It is also the #1 pastor adoption failure (“your Worship Lead isn’t our worship leader”).

**Fix:**

- Current-state table only in Definitions. Move rename archaeology to `CHANGELOG.md`. One line: “Older chats may say MD or Worship Lead for other seats; current names are here.”
- Add a **hat**, not necessarily a new office: **Platform lead** — the person scheduled to address the congregation and to whom the band/media look during the set. May be the Director, the Worship Lead, or a vocalist. One paragraph: who cues the band, who speaks, who may leave the plan, who listens to the pastor.
- Point Vocalist, Media, and run-of-show at that hat. Stop writing “the leader.”
- Optional but wise: a one-line industry translation on the pastor overview (“Director ≈ worship pastor; Worship Lead ≈ music director / MD; Platform lead ≈ person on the mic”).

---

### H3. Song-selection bans are pastor-defendable in spirit, not volunteer-applicable as written

**Where:** `06-music-library/song-selection-policy.md` §§2–3 and Exceptions; `10-templates/setlist-worksheet.md`; `10-templates/annual-song-repertoire.md`; Song Selector and pastor quick references.

**What’s wrong:** The six criteria are a strong pastoral framework. A lay Song Selector cannot apply them without worked pass/fail songs.

- **“Generic love song”** is undefined. Weekly arguments (*How He Loves*, *Reckless Love*, *Good Good Father*, *Oh How I Love Jesus*) will be won by whoever is louder.
- **First-person-God** is illustrated only as “I, the Lord, say…”. The real weekly work is gray: Scripture choruses (*Be Still and Know*), God-voice hymn stanzas (*How Firm a Foundation* vv. 2–5), *I Am the Bread of Life*, priestly blessing (*The Blessing*). The policy allows God-speech **read** as Scripture with the speaker identified, but never shows a **sung** quotation that is allowed vs impersonation that is not.
- Exceptions: the Director may grant one-service exceptions **except** those two bans. `scope-and-authority.md` says the **pastor has final say**. A pastor who wants a classic God-voice hymn has no written path; the Selector is told the Director cannot allow it.
- **Singability** has no operational test (range, octave, syncopation, untrained alto on row 12).
- **Corporate-worship intent** vs a popular recording the room already sings is undefined.

**Who it hurts:** Volunteer Selector will either over-ban the hymn tradition or wave everything through. A pastor cannot defend the policy in an elders’ meeting without borderline cases.

**Fix:** Add a short “Selector examples” table (labeled illustrations, not a banned-artists list):

| Allowed | Fail | Why |
|---|---|---|
| Human response: “Lord, I need you” | Lyric that only works if every singer shares a private crisis | Ownership |
| Song that names Father/Son/gospel in the lyric | Lyric indistinguishable from a romance song until the leader explains it | Confession |
| Congregational hymn that *quotes* God after a spoken “Hear the word of the Lord” *(if the church allows this)* | Set piece where the room sings continuously *as* God with no speaker cue | Voice |
| — | A non-Christian pop song as a congregational worship number | Secular |

Add 2–3 **local** “we allow / we don’t” rows in `our-congregation.md` so the church owns the gray, not Petra. Soften the exception clause: the Director may not quietly **normalize** those bans; **pastor/elders may authorize a documented exception** (e.g. a Scripture chorus). Give singability a crude test: “Can an untrained voice on row 12 sing the melody in the published key without a soloist’s range?”

---

### H4. The 50-title ceiling: “used in 12 months” vs “active titles”

**Where:** `06-music-library/song-selection-policy.md` §1; `10-templates/annual-song-repertoire.md` (“up to 50 **active** titles”); “before adding title 51, retire or defer another title.”

**What’s wrong:** Policy counts **distinct titles the congregation sang in a rolling 12 months**. Rest/Archive songs used 11 months ago still occupy a slot. The register says “active.” “Retire or defer” sounds like it frees a slot *today*; the window is retrospective. Christmas/Easter carols count (the policy says so) and will surprise a pastor who thought 50 was only the weekly radio diet.

**Who it hurts:** Both. The ceiling becomes theater the first time someone “rests” a song to add a new one.

**Fix:** One sentence in both places: “Every title **sung by the congregation in the trailing 12 months** counts, including Rest/Archive if they were used. Stage is not the counter.” To add a title while at 50, a previous title must **age out of the window** (or the Director/pastor must record a policy change). Note explicitly that Christmas and Holy Week titles count, so the weekly core will be smaller than 50.

---

### H5. Titles freeze; keys and charts have no clock

**Where:** Playbook (“one plan, published early”); `01-roles/song-selector.md` (titles deadline); `06-music-library/charts-keys-tempos.md` (“publish key **early enough**”); `10-templates/our-congregation.md` (only “Set fixed by”); setlist worksheet (Key / BPM / Form on the Selector sheet).

**What’s wrong:** Song Selector has a weekly deadline. Worship Lead’s keys, forms, and charts — the thing a guitarist actually practices — have **no SLA**. The setlist worksheet invites the Selector to invent keys. The Playbook’s “one plan” over-claims.

**Who it hurts:** A volunteer who serves twice a month cannot practice in the right key if titles drop Tuesday and charts drop the night before rehearsal. Vocalists cannot flag range. Media cannot match forms.

**Fix:** Two local fields everywhere clocks live: **Titles fixed by** (Song Selector) and **Keys/forms/charts published by** (Worship Lead) — e.g. titles 5–7 days before rehearsal, charts ≥48 hours before ready-to-rehearse. On the worksheet, mark Key/BPM/Form as Worship Lead columns. State that rehearsal may *amend* keys after that freeze.

---

### H6. “Say so up front” can be read as permission to skip rehearsal

**Where:** `PLAYBOOK.md` habit 2; `03-rehearsal/rehearsal-standards.md`; `02-scheduling/availability-and-swaps.md` (“If you can do Sunday but **not** the prior rehearsal, say so up front”).

**What’s wrong:** The rule is **no prior rehearsal → default do not serve**, exceptions **granted**. The availability bullet reads like a permitted path if you disclosed the constraint when you joined.

**Who it hurts:** The first conflict a volunteer will have is a sick child on Wednesday, or a standing “I work Wednesday nights.” They will believe disclosure was permission.

**Fix:** “If you cannot attend the prior rehearsal, **do not accept the slot** unless a lead has **already granted** a named exception (cover, simplify, or release). Disclosure is not permission.” Add “exception granted by ___” on the rehearsal agenda and swap form.

---

### H7. Freeze time is a Playbook habit that vanishes where people actually work

**Where:** `PLAYBOOK.md`; `03-rehearsal/pre-service-rehearsal.md` (fill-in + paragraph); absent from `00-foundation/definitions.md`, `11-reference/glossary.md`, `04-service/service-run-of-show.md`, `10-templates/service-plan.md`, and every `05-tech/` checklist. A **second** freeze (monitor mixes after the final run) lives on the monitor charter and musician handout.

**What’s wrong:** “Call time” still means “ready to work” in Definitions, while newer pages split present / ready / service-ready. Freeze has no default relative to doors, no talkback owner, and no checklist line. A volunteer FOH who only opens `foh-checklist.md` will keep patching until doors.

**Who it hurts:** Twice-a-month players hear three times and do not know which one they will be corrected for. Freeze with no owner is unenforceable.

**Fix:** Pick one vocabulary: **Present / Ready / Service-ready / Freeze**. Treat “call time” as an alias for Ready. Define freeze in Definitions. Put it on the service plan, run-of-show, and every tech pre/service checklist. Example: “Freeze = doors, or T−10, announced on talkback by Worship Lead or Tech Lead.” Distinguish **service freeze** from **monitor freeze after the final run**.

---

### H8. Church-specific clocks still live in three places after *Our Congregation* was created

**Where:** `10-templates/our-congregation.md` (the intended single sheet); `03-rehearsal/midweek-rehearsal-runbook.md` and `pre-service-rehearsal.md` (underscore blanks); `01-roles/song-selector.md` (set-fix blank in a **Must** list); `02-scheduling/scheduling-policy.md` (`**[TBD: e.g. 2–4 weeks]**` etc.); `06-music-library/charts-keys-tempos.md`; `11-reference/tools-and-systems.md`; `11-reference/links.md`; musician QR (more blanks).

**What’s wrong:** The changelog moved open questions into *Our Congregation*. Live policy pages still have TBD and their own underscores. The first Director who fills only one sheet recreates tribal knowledge. A copied Petra site ships with unfilled **musts**. Safety TBD is C2; this finding is the rest of the dual-source problem.

**Who it hurts:** Both. Call time and CCLI number are the mundane Petra exists to settle.

**Fix:** Live pages: “Times, tools, and license numbers: see *Our Congregation*. Do not leave a second copy here.” Keep `[TBD: e.g. …]` only as an example *inside* that template, not on binding policy pages. Musician/tech QR: “Copy the times from *Our Congregation*.” At the top of *Our Congregation* or the Playbook, label two lists: **Petra defaults (change in the open)** — 50-title ceiling, rehearsal-required, confidence-not-stands, six criteria, God-voice / secular bans — vs **you must fill before the first Sunday**.

---

### H9. Licensing is cautious and too thin to stay clean

**Where:** `06-music-library/licensing-ccli.md`; gap in `06-music-library/tracks-and-playback.md`; CCLI blanks in tools / *Our Congregation*.

**What’s wrong:** The page is correctly labeled “operational awareness, not legal advice,” and the public-GitHub lyrics warning is excellent. “We have CCLI” is still easy to over-read. Coverage varies by country and product, but a volunteer Director needs **named buckets** to fill in, not a restatement of law:

- Congregational **reproduction** (project/print lyrics) vs **streaming/posting** the service vs **charts/SongSelect** vs **rehearsal audio** shared with the team vs **master/multitracks on the stream**.
- Reporting is a must with **no who / when / tool**.
- Not every title is in the catalog; originals need writer splits (mentioned, not captured on the new-song gate).
- Walk-in secular recordings are a different rights problem than the worship set — and the song policy explicitly parks walk-in as a separate decision.

**Who it hurts:** Pastor (false assurance). Volunteer media (lyrics on a public deck). This is not legal advice; it is an operating hole.

**Fix:** A fill-in checklist on *Our Congregation* + a short procedure on the licensing page: license products held (Y/N each), reporting owner and cadence, legal chart source, how rehearsal audio is shared, “confirm new titles are in the licensed catalog before Trial,” display rules if the church streams. One line on tracks: **playing tracks in the room is not the same as sending master recordings out on a stream.** Point to current CCLI (or local equivalent) summaries rather than encoding coverage as Petra law.

---

### H10. Incidents: right principles, missing procedures — especially medical and power

**Where:** `04-service/incidents-and-contingencies.md`; `10-templates/incident-log.md` (exists, not linked from the SOP); “follow **power-on SOP**” (no such page); monitor checklist “if **IEM failure policy** says so” (no such policy); FOH/lighting/strike “park per SOP.”

**What’s wrong:** This is the page people open while something is on fire. Several actions point at documents that are not in the repo. Medical is “stop **if needed**” with no rule, no EMS, no “mute open mics,” no AED pointer. Volunteers will keep playing through a collapse. “Communicate once on a known channel” never names the channel. Pastor-mic death is P1 in purchase-and-repair but not a row here.

**Who it hurts:** Both. “If needed” is how platforms keep making sound over a medical emergency.

**Fix:** Link the incident log. For medical: “Unresponsive / seizure / suspected cardiac / uncontrolled bleeding → **stop music, mute open mics, lights up, ushers/medical, EMS**; do not crowd. Any lead who sees it may call the stop.” Name the day-of channel (already SMS/call in communication norms). Replace “power-on SOP” and “IEM failure policy” with three-line **defaults** here or in `05-tech/` (wait for UPS; do not hot-plug amps; spare pack then wedge mix X; tell Worship Lead once). Annual 10-minute “where is AED / exits / who calls emergency services” at a rehearsal. Add rows: pastor mic, howl-round, click in the house, fire alarm.

---

### H11. “Defaults over doctrine” will be read as practice outranking theology

**Where:** `CONTRIBUTING.md` Principles, item 3.

**What’s wrong:** The following sentence is about not inventing theory in a how-to. The heading, in a Christian runbook, says the opposite of what `00-foundation` and the song policy require.

**Who it hurts:** A pastor will (rightly) reject the principle as written. A volunteer contributor will think theology is out of scope for song/policy edits.

**Fix:** Rename: **“Defaults over preference debates.”** Add: “Doctrine is owned by pastors; Petra must not contradict it. This principle means: document the working default instead of arguing taste on the page.”

---

### H12. Foundation folder presents a teaching draft as non-negotiable; new volunteers hit the hardest page first

**Where:** `00-foundation/README.md` (“what will not be compromised”); `00-foundation/freedom-in-form-study.md` Purpose (“teaching draft, not a doctrinal statement or an operating policy”); study discusses MT vs LXX, unpointed Hebrew.

**What’s wrong:** The folder frames every page as binding. The study explicitly is not. A first-time vocalist opening Foundation gets a seminary handout. Onboarding checklist asks only for mission + values; `07-onboarding/first-30-days.md` says “read foundation,” which includes the study.

**Who it hurts:** Volunteer — intimidated or bored. Pastor — cannot tell what is citable in a scheduling argument.

**Fix:** Split the foundation index: **Binding** (Mission, Values, Scope, Definitions) vs **Teaching** (Freedom in Form). One line on the study: “Not policy. Do not cite this page to win a scheduling argument.” New-to-the-team path: Mission (short) + Values; skip the study until a team night. Align first-30-days with the onboarding checklist.

---

### H13. Quick-reference sheets are denser than a two-page handout, and they drift from source policy

**Where:** `12-quick-reference/README.md` (“stay at two printed pages; cut before you overflow”); `musician-quick-reference.md`; `tech-quick-reference.md`; `handout.css` (`font-size: 9.3pt`). Specific drifts: tech QR says rehearsal exceptions are granted by **Tech Lead only** (source: Director, Worship Lead, **or** Tech Lead); musician QR omits Tech Lead on <24 h phones; Song Selector QR “never for the **two rules above**” does not match the two rows immediately above (the 50-title ceiling sits first).

**What’s wrong:** These are condensed runbooks, not handouts. 9.3 pt on a church copier is not accessible to many lay teammates (including older volunteers). README forbids policy that lives only on the handout; several owner lines already disagree with the source.

**Who it hurts:** Pastors think the team was trained. Volunteers did not read it, or they learned a narrower rule.

**Fix:** Page 1 = why + five non-negotiables + week clock + who to call. Page 2 = *your* role’s short checks + four failures. Quote owners the same way as the source. Name the two song exclusions **in words**, not “above.” Raise print size even if that forces more cutting. Copy clocks from *Our Congregation*, not a third blank.

---

### H14. “Qualified” is required everywhere and defined nowhere; assessments are not written down

**Where:** Scheduling policy §4; `02-scheduling/availability-and-swaps.md`; `10-templates/swap-request.md`; `07-onboarding/auditions-and-assessments.md`; `07-onboarding/shadow-and-training.md` (“solo qualified”); onboarding checklist has no assessment outcome.

**What’s wrong:** Volunteers **own finding a qualified replacement**. Heart posture for auditions is excellent (“not American Idol”). Criteria are “typically evaluate,” including “attitude under notes,” with no rubric, no written result, no second set of ears, no “not this season” note the candidate can take home. “Scheduler/lead” is not a role in the Playbook.

**Who it hurts:** Undocumented “attitude” looks like a clique. A pastor cannot defend a decline. A guitarist will text another guitarist for an FOH slot.

**Fix:** One sentence: “Qualified = listed for that role on the active roster (or signed off by the domain lead); the prior-rehearsal rule still applies.” Add `10-templates/assessment-notes.md`: date, role, what was asked, result (provisional / shadow more / not this season), who decided, what was told to the candidate. Require two listeners when possible. “Solo qualified” = shadow steps complete + named lead initials on the onboarding checklist. Name the swap confirmer (Director or domain lead), not “scheduler.”

---

### H15. Checklists assume a full crew; combined-role reality has no boot order

**Where:** `05-tech/tech-overview.md` (combined roles OK); no combined-role order of operations; no stage checklist in `05-tech/` (stage lives only as a charter); tech QR covers Stage.

**What’s wrong:** The common church is one person wearing FOH + monitors + media. They get five PDFs and no “do this first.” Lyrics-up / PA-not-on is a real failure mode.

**Who it hurts:** Volunteer FOH/lights without a production degree — Petra’s stated dual audience.

**Fix:** A “one-tech / two-hat” order: power → show file → wireless/batteries → line check → house + confidence up → spare vocal path → freeze. Add a short Stage spine to `05-tech/` or fold it into FOH. Five-line “minimum viable Sunday” per role in plain language **above** the expert checklist (FOH: pastor mic works, lead vocal clear at the back, freeze; lights: people visible, no strobe, prayer is not a concert, know blackout and restore).

---

### H16. No volunteer “start here” on the home page; scheduling folders are leader indexes

**Where:** `README.md` (routing table by topic, not by person); `02-scheduling/README.md`, `03-rehearsal/README.md`, `04-service/README.md`; the actual player loop lives in `PLAYBOOK.md` + musician/tech handouts.

**What’s wrong:** A guitarist who opens Scheduling gets Director policy and TBDs. There is no “this week” strip. First-time logistics (where to park, who to text if the building is locked, what to wear) are missing from onboarding.

**Who it hurts:** Dual-audience failure. Pastors can navigate. Twice-a-month players will not read six policies.

**Fix:** A box on the root README:

| If you are… | Start here |
|---|---|
| New to the team | `07-onboarding/` then Playbook + your role charter |
| Band / vocals | Playbook → musician handout → your charter |
| Tech | Playbook → tech handout → your checklist |
| Song Selector | Song Selector handout |
| Pastor / elder | Pastor overview → Scope & Authority → song policy |
| Director | Director charter + pastor overview + Playbook |

Put an 8-line “If you are scheduled this week” box at the top of the scheduling and rehearsal indexes.

---

## Medium

### M1. Jacob: Genesis 47:31 and Hebrews 11:21 are not the same scene

**Where:** `00-foundation/freedom-in-form-study.md` (Primary texts; “Jacob: faithful worship in weakness”; sermon outline).

The bed/staff (`מטה`) note is fair and pastor-grade. The **scene** is not one event with two translations. Genesis 47:31 is Jacob bowing after Joseph’s **burial oath**. Hebrews 11:21 attaches worship-over-the-staff to **blessing Joseph’s sons** (Genesis 48). Combining them as “slightly different wording” overreaches. A pastor using this as a sermon will be corrected by anyone with a study Bible.

**Fix:** Keep the textual note. Say: Hebrews reads Jacob’s dying faith through the blessing of Ephraim and Manasseh; Genesis 47:31 is the related burial-oath bow. Shared picture: dying faith still worships. Quote Hebrews as bowing **over the head of** his staff, not “leaning.”

---

### M2. Teaching-through-song leans on Ephesians; Colossians is the clearer text

**Where:** Same study, Ephesians section: “Songs teach the room what to remember…”

Ephesians 5:19 is reciprocal address and melody to the Lord. **Colossians 3:16** is the text that explicitly joins song to teaching and admonishing. The application is sound; the citation is slightly off.

**Fix:** Cite Col 3:16 for formation/teaching; keep Eph 5:19 for mutual ministry and Godward melody. (2 Chronicles 29:25–30 is listed as a primary text and never used — add two sentences or drop it.)

---

### M3. Mission can be read as craft causing encounter

**Where:** `00-foundation/mission-vision.md` (“encounter God **through** music, word, and well-run technical craft”); root README (“excellence in service of people **and the presence of God**”) vs study safeguard 1 (competence does not summon the Spirit).

Not heresy; sloppy next to the study’s gospel turn. Volunteers may think a good mix *is* worship.

**Fix:** “Help the church sing and attend to God; music, word, and craft **remove avoidable obstacles** — they do not manufacture God’s presence.”

---

### M4. “Worship experience” fights the anti-show theology

**Where:** Playbook, Director charter, Scope: Director is “accountable for the **worship experience**.”

The same docs reject concert language. “Experience” is the word churches use when Sunday is a product.

**Fix:** “Accountable for congregational musical worship and team health” / “accountable that the room can sing and the plan was shepherded.”

---

### M5. Playbook’s trump sentence can be used against safety and licensing

**Where:** `PLAYBOOK.md`: “When a page and that sentence conflict, the sentence wins.”

“Encourage the congregation to sing” could be quoted to skip rehearsal, child protection, or licensing.

**Fix:** “When a page and that sentence conflict **on artistic or preference grounds**, the sentence wins. Safety, protection, and licensing pages are not optional.”

---

### M6. Service Planner and section lead are used, not defined enough to escalate through

**Where:** Definitions (Service Planner); Roles README (hat note); Scope escalation step 1 “Peer / **section lead**”; Director charter “section leads”; `07-onboarding/first-30-days.md` **Owner:** Section lead / mentor.

Decision rights and onboarding ownership depend on hats with no “done looks like.” Volunteers will ask “who is my section lead?”

**Fix:** Definitions: **Section lead** = experienced player/tech who coaches a slice, appointed by Director / Worship Lead / Tech Lead. Service Planner: five-line hat in Roles README (owns order of gathering beyond the set; does not pick titles or keys). If a church has none, “Director wears this.”

---

### M7. “Review the last **performance**” undoes the serve/perform language you just aligned

**Where:** `03-rehearsal/rehearsal-standards.md` §9; midweek runbook (timeline, flow, end-state); `10-templates/rehearsal-agenda.md`. Also `01-roles/tech-lead.md`: “Media runs overhead and confidence during **practice**.”

Definitions restrict *performance* to casual use and *practice* to personal work.

**Fix:** “Review the last **service**.” Grep `during practice` → `at group rehearsal`.

---

### M8. Glossary is not the glossary people need; chart shorthand is undefined

**Where:** `11-reference/glossary.md`; `06-music-library/charts-keys-tempos.md` (`V1`, `PC`, `C`, `V2`, `B`, `T`, `E`); checklists (phantom, VCA, grand master, universe, encoder, golden file, freeze time).

“Extended” is a short tech list. It duplicates Definitions on confidence monitors and does not define CCLI, IEM, click, FOH, freeze time, downbeat, call time, SM58, or chart section tags. A choir-world guitarist may not know **PC** = pre-chorus. Lighting says “grand master” on the checklist and “manual bump” on the role/QR. Annual register uses “driver, meditative, **rhetorical**” without definition. Matrix is defined as “mix-minus or special bus” (a matrix is a mix of mixes; mix-minus is a kind of feed). Busking is more often lighting than audio.

**Fix:** One strategy: either a single term list, or “tech terms only — roles and worship terms live in Definitions.” Add the volunteer words. Parenthetical on first use in checklists (“phantom = extra mic power — only if the mic needs it”). Unify bump vs grand master. Define chart tags on the charts page.

---

### M9. CONTRIBUTING’s page template does not match the pages you actually have

**Where:** `CONTRIBUTING.md` (Owner, Purpose, Policy, Procedure, Exceptions, Related). Role charters use Owns / Expectations / Success. Almost none have Exceptions. Stage, Lighting, Stream, Band, Vocalist, and Tech Lead (no Related) are thinner than Song Selector. `+` vs `/` in Owner lines is undefined.

**What’s wrong:** Either the template is wrong for these page types, or the pages are non-compliant. Pastor cannot find “who can waive this” on a charter. Volunteer checklists hide under different heading names.

**Fix:** Split templates: **SOP**, **Role charter**, **Foundation**, **Reference**. For role charters require: Owner, Purpose, Owns, Does not own, Must-dos, Exceptions, Related, Success. Bring thin charters up to the Song Selector skeleton. CONTRIBUTING: `/` = primary / backup; `+` = joint. Website/MkDocs/QR engineering in CONTRIBUTING is the right place for maintainers; put a short “editing content” section first so a pastor-volunteer is not dropped into pip and GitHub Actions.

---

### M10. Worship Lead is rehearsal-heavy and almost silent during the service

**Where:** `01-roles/worship-lead.md` vs Director “final accountability for Sunday readiness”; Scope (keys decided by Worship Lead).

Two people can believe they own downbeat. There is no in-service rule for who cuts a song live, talkback, or freeze.

**Fix:** Worship Lead **during service** owns musical calls; does not override pastoral direction from Director/pastor. Director does not conduct from the floor unless pre-agreed. Name freeze-time owner (H7).

---

### M11. FOH mix-priority list omits spoken word; tech overview puts it first

**Where:** `01-roles/foh-engineer.md` (lead vocal → groove → …); `05-tech/tech-overview.md` (intelligibility of **spoken word + lead vocal**); FOH checklist (speaking mics during service, no mix-priority reminder).

**Fix:** Put spoken-word / pastor-mic first on the FOH charter and on the printed checklist. “Spare vocal path” is not the same as “pastor mic works.”

---

### M12. Hearing and levels are philosophy, not a volunteer action

**Where:** Tech overview; FOH “protecting the room from damaging levels”; `09-equipment/care-and-maintenance.md`; not on `08-culture-care/safety-and-protection.md` or FOH checklist; no house-curve field on *Our Congregation* even though the overview says to document one.

**Fix:** Checklist: hearing-protection location; if anyone reports pain, turn down and tell Tech Lead. *Our Congregation* row for limiter/house-curve policy. One line on the safety page: hearing is people-safety, not taste.

---

### M13. Wardrobe’s only specific clothing rules are body rules

**Where:** `08-culture-care/wardrobe-guidelines.md` (“necklines, length, and sheer fabrics”); platform etiquette “neat, non-distracting”; service plan has no dress field even though specials “may have specific dress notes on the plan.”

Tone is mostly calm. The one concrete line is the line that shames. There is no matching specificity for logos, other-church merch, mic-hitting jewelry, or “if unsure, ask X privately,” and no 1:1 correction path.

**Fix:** Lead with function: move, kneel, cameras, congregation’s attention on the lyric. Give yes-examples. Move coverage to “stage light is harsher than bathroom light — check with a teammate of your choosing.” Enforcement: Director/Worship Lead, private, before service if possible. Add **Special dress** to the service plan. Delete “no neon chaos” or translate it.

---

### M14. Pastoral care has no “this is bigger than the band” protocol

**Where:** `08-culture-care/pastoral-care.md`; `08-culture-care/feedback-and-conflict.md` (“when safe”); Scope (care/safety skip the chain).

Good boundaries (not a counseling center). Missing: self-harm talk, abuse disclosure, a lead who is the problem. “Romantic entanglement patterns … will be addressed pastorally” is ominous and unprocedural.

**Fix:** (1) Danger to self/others or abuse → Safety page / designated reporter / pastor, same day, not the group chat. (2) Burnout → section lead or Director. (3) Conflict that isn’t safe (power, harassment) → skip to Director or pastor. Soften romance: “Dating inside the team is not banned by Petra; if it affects scheduling or power, the Director handles it privately.” Shadow rule “what you hear stays in the team” needs the mandated-reporting exception.

---

### M15. Templates are missing fields the policies already require

| Template | Gap |
|---|---|
| Service plan | Freeze time; Song Selector; Media; special dress; theology-sensitive note |
| Rehearsal agenda | Consecutive bold lines will render as one paragraph (`**Linked service:**` immediately followed by `**Set fixed by:**`); house + confidence live; Media present; exception-granted field; Sunday call times (runbook end-state already expects this) |
| Setlist worksheet | Transitions only 1→2, 2→3, 3→4 (missing last); Key/BPM unmarked as Worship Lead; new-title register gate; spontaneous vs freeze |
| Annual repertoire | Line-by-line lyric review; six criteria; key/teach with Worship Lead; first-person-God / secular checks |
| Onboarding checklist | Assessment outcome; protection policy *received*; qualified/solo sign-off |
| Swap request | Cover attends **rehearsal and** service |
| Incident log | P1/P2/P3 copied from gear repair but never defined for incidents |
| Input list CSV | Naming `1,Kick` vs SOP `CH##_Source_Position`; column **Stand** on vocal rows reads like music stands, which Petra forbids by default |

Inventory and stage-plot templates are promised in prose (`09-equipment/inventory-and-ownership.md`, `05-tech/input-list-and-stage-plot.md`) and do not exist.

**Fix:** Add the boxes; rename CSV `Stand` → `Mic_mount`; rewrite the plot rule as “Input list is canonical; update the plot the same day.” Stop promising templates you do not ship.

---

### M16. Vocalist “smile with your eyes” vs attention past the platform

**Where:** `01-roles/vocalist.md` vs Purpose “not performative distraction” and Values #2.

A mandatory smile is a performance note and shames faces that do not work that way.

**Fix:** “Be present to God and the room; do not perform emotion you are not carrying. Watch the Platform Lead.”

---

### M17. Lighting strobe / photosensitivity has no owner; “not clubby” is not a cue

**Where:** Lighting charter and checklist (“no hazardous strobes without clearance,” “no unapproved strobe/seizure-risk looks,” “not clubby”).

**Fix:** Default strobes **off** unless Director + a photosensitivity note on the plan. Observable prayer look: “static warm wash, no movement.” *Our Congregation*: strobes allowed Y/N. Volunteers do not climb, fly, or rewire.

---

### M18. Undefined org-chart jargon in policy pages

**Where:** Scope “RACI-lite,” “pastor liaison,” “designee”; Tech Lead “punch list”; Mission “tribal knowledge.”

A new volunteer does not know RACI. “Pastor liaison” might be the pastor, an associate, or a coordinator.

**Fix:** Drop “RACI-lite”; keep Propose / Decide / Informed and one line of English. “The pastor (or the pastor’s named delegate).”

---

### M19. Pre-service flow has no minutes against its own freeze

**Where:** `03-rehearsal/pre-service-rehearsal.md` (seven steps, no clock).

Easy to eat pastoral prayer or doors.

**Fix:** A 25–35 min sample: T−40 line check; T−25 confidence glance; T−15 opener + one transition; T−10 freeze / platform quiet; T−5 prayer. Mark it as a sample the church overwrites.

---

### M20. Levitical “for the good of the congregation” is softened; Mark 7 is applied a bit wide

**Where:** Freedom in Form study (Numbers 3:7–9; 8:9–19; Safeguard 2 / Mark 7:6–13).

Numbers 8:19 is also about **atonement / plague** if Israel comes too near the sanctuary. Mark 7 is human tradition **nullifying God’s command** (Corban); binding consciences with extra rules is closer to Romans 14 / Colossians 2.

**Fix:** One bullet: Levites also guarded sacred space so the people would not bear guilt — then keep the Christian guardrail (we are not that priesthood). Keep Mark 7 for “procedure must not cancel God’s commands.” Add Rom 14 or Col 2:16–23 for “do not treat house rules as gospel.”

---

### M21. Slide ownership is split across four hats with no one “build vs run” sentence

**Where:** Lyrics policy owner line; Media charter; Song Selector handoff; Worship Lead forms; Stream lower-thirds; duplicate operator lists in lyrics §D and `media-lyrics-checklist.md`.

Sunday lyric failure is usually an ownership gap.

**Fix:** One line at the top of the lyrics policy: Song Selector = titles; Worship Lead = sung words/form; Media = build, route, advance; Stream = lower-thirds unless combined; Director = theology disputes. Keep **one** checklist; make the policy page standards-only.

---

### M22. Who owns slides/theology-sensitive lines is not on the setlist worksheet

Related to H3/M15. Theology-sensitive → pastoral oversight is in the policy and missing from the weekly worksheet. Spontaneous options have no boundary vs freeze / wholesale song replacement.

**Fix:** Checkbox on the worksheet. One line: spontaneous tags stay inside a **rehearsed** song, not new titles.

---

## Low

- **Owner lines missing** on Playbook, glossary, links, most templates, and folder indexes. CONTRIBUTING says every page names an owner. Indexes can be exempt; Playbook should not.
- **Green room rule** is defined in Definitions and never applied as a section. Either write two sentences under platform etiquette or drop the term.
- **“Final-ish form”** (`01-roles/worship-lead.md`) is mushy for a must-do. “Published form, labeled sections; later changes are exceptions.”
- **FOH “phantom problems”** — unexplained noise/ghost signals, not phantom power. Easy to misread next to the FOH checklist’s phantom item.
- **Three metaphors for Petra** (rock-cut city, skeleton, scaffolding). Keep the city in the README; use framework/scaffolding on policy pages.
- **“Psalms, hymns, and spiritual songs” as ‘varied song’** — pastoral inference, not grammar. One qualifying sentence in the study is enough.
- **Playback owner unnamed** — “If blank, Worship Lead owns playback; FOH does not guess.”
- **Chart/key change acknowledgement** has no deadline. “Within 12 hours or before next rehearsal, whichever is sooner.”
- **Director has no handout.** Optional; pastor overview + Director charter may be enough.
- **LICENSE appendix** still has `[yyyy] [name of copyright owner]` placeholders (Apache boilerplate). Fine legally; sloppy for a public repo.
- **Public fork hygiene:** *Our Congregation* says keep the public runbook blank, while `tools-and-systems.md` still invites fills. One sentence: if you publish a fork, keep local names, clocks, and contacts out of the public tree.

---

## Dual-audience snapshot

| Reader | Where Petra already fits | Where it currently fails them |
|---|---|---|
| **Pastor / elder** | North star, Scope table, song-policy *intent*, Freedom in Form (if labeled teaching), pastor overview, exception philosophy | Who speaks from the platform; whether they must sign every set; 50-title mechanics; God-voice hymns; CCLI product buckets; safety adoption gate; “worship experience”; “defaults over doctrine”; study citations they will preach |
| **Lay musician / vocalist** | Playbook habits, present vs ready, confidence vs stands, “no rehearsal → no serve” in spirit, musician charter checklists | Role names; “the leader”; keys SLA; freeze vs call time; start-here path; 9.3 pt handout; wardrobe body line; smile note; chart tags (`PC`, `T`, `E`); first-week logistics |
| **Lay tech** | Lyrics SOP, incident principle order, tech philosophy, “same bar as band” | Combined-role boot order; freeze not on checklists; phantom/VCA/universe; cited SOPs that don’t exist; IEM-death default; hearing; stage with no run-sheet |
| **Lay Song Selector** | What vs how split; six criteria as a *lens*; continuity; new-song gate *shape* | Pass/fail examples; 50-title counter; RACI vs “you fix the set”; generic love song; first-person-God vs hymnody |
| **New teammate** | Joining path in seven steps; “not American Idol” | Assessment not written down; “qualified” undefined; “read foundation” includes the long study; protection “if required”; no parking/entry/who-to-text |

**Tone:** Operating pages are warm and direct — Petra’s best voice. Slightly corporate: RACI-lite, north star, punch list, liaison, worship experience. Slightly thin: Stage, Lighting, Stream, Worship Lead-on-Sunday. The study is sermonic **on purpose** and should stay that way, labeled teaching.

---

## Suggested fix order

Do these in order if time is limited. Each item unlocks the next.

1. **Safety adoption gate** (C2) — designated reporter, “do not serve until filled,” worship-specific minor defaults, incident-log banner.
2. **One clock source** (H8, H5, H7) — *Our Congregation* wins; titles **and** keys SLAs; freeze defined and printed on checklists and the Sunday spine.
3. **Midweek clock that fits a real set** (C1).
4. **Role-name card + Platform lead hat** (H2) — strip rename history from Definitions.
5. **Who fixes the set** (H1) — one sentence in Playbook, Selector charter, and Scope.
6. **Song policy examples + 50-title counter** (H3, H4) — plus pastor/elder exception path for the two bans.
7. **Rehearsal-required wording** (H6) — disclosure is not permission.
8. **Licensing buckets + tracks-on-stream line** (H9).
9. **Incident defaults** (H10) — medical stop rule, IEM-death, power-on, pastor mic.
10. **Foundation binding vs teaching** (H12) + Jacob/Colossians citation fixes (M1, M2).
11. **“Defaults over doctrine”** (H11) and Playbook trump-sentence (M5).
12. **Qualified + assessment template** (H14).
13. **Cut the musician/tech handouts** (H13) and add combined-role / minimum-viable Sunday (H15).
14. **Volunteer start-here** on the README (H16).
15. Then the Medium list while those pages are open (glossary, wardrobe, pastoral-care protocol, templates, thin charters, terminology grep).

---

## Out of scope / not counted as defects

- Petra is a **generic** skeleton. Church-local blanks are intentional; they become defects only when they remain on **binding** pages or on **safety** after a dedicated local sheet exists (H8, C2).
- Apache-2.0 licensing of a ministry runbook is a project choice, not a worship-policy error.
- This review did not re-render the handout PDFs or walk the GitHub Pages build; overflow of the “two-page” sheets is inferred from source length and `9.3pt` CSS, plus the README’s own “cut before you overflow” rule.
- CCLI findings are **operating completeness**, not legal advice, and coverage varies by country and product.
