
// should we define our own coding or reuse CMS
//(https://www.cms.gov/medicare/payment/fee-for-service-providers/hospital-aquired-conditions-hac/coding) ?
CodeSystem: POAIndicatorXpanDHCS
Id: poa-indicator-eu-hdr
Title: "Present on Admission (POA) Indicator"
Description: """This code system consists of Present on Admission (POA) indicators which are assigned to the diagnoses and the external cause of injury codes to indicate the presence or absence of the diagnosis at the time of inpatient admission."""
* ^version = "2022.12.02"
* ^status = #draft
//* ^date = "2022-12-02"
* ^experimental = false
//* ^publisher = ""
* ^description = "Present on Admission (POA) indicators"
* ^caseSensitive = true
* ^content = #complete

* #POA "Present on admission"
* #HAC "Hospital acquired condition"
* #NA "Not applicable or unknown"


CodeSystem: AssessmentCategoryXpanDHCS
Id: assessment-category-eu-hdr
Title: "Xpandh Assessment Category"
Description: """Category codes used in Xpandh Profiles such as the Xpandh Assessment Observation Profile. The are typically used when there is a need for categorization for searching and finding resources or workflow hints."""
* ^status = #active
* ^experimental = false
//* ^date = "2022-04-20"
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* ^caseSensitive = true
* ^content = #complete
* #sdoh "SDOH" "Social Determinants of Health category"
* #functional-status "Functional Status" "Functional Status category"
* #disability-status "Disability Status" "Disability Status category"
* #cognitive-status "Cognitive Status" "Cognitive Status category"


CodeSystem: WHODAS20CS
Id: whodas-20-cs
Title: "WHO Disability Assessment Schedule 2.0"
Description: """WHODAS 2.0 provides a common metric of the impact of any health condition in terms of functioning. HODAS 2.0 produces domain-specific scores for six different functioning domains – cognition, mobility,
self-care, getting along, life activities (household and work) and participation."""
* ^status = #active
* ^experimental = false
//* ^date = "2022-04-20"
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* ^caseSensitive = true
* ^content = #complete
* #0 "None" "No difficulty"
* #1 "Mild" "Mild difficulty"
* #2 "Moderate" "Moderate difficulty"
* #3 "Severe" "Severe difficulty"
* #4 "Extreme" "Extreme difficulty or cannot do"
* #D1 "Cognition" "Domain 1 of WHODAS 2.0 asks questions about communication and thinking activities. Specific areas
that are assessed include concentrating, remembering, problem solving, learning and communicating."
  * #D1.1 "Concentrating on doing something for ten minutes?" "This question is intended to determine the respondent’s rating of difficulty with concentration for a short period, defined here as 10 minutes. Generally, respondents understand this item. However, if clarification is requested, encourage the respondent to think about their concentration in usual circumstances, rather than when they are preoccupied by a problem or are in an unusually distracting environment. If necessary, prompt the respondent to think about their concentration while they were doing something such as work tasks, reading, writing, drawing, playing a musical instrument, assembling a piece of equipment, and so on."
  * #D1.2 "Remembering to do important things?" "This is a question about remembering matters of day-to-day importance. It does not refer to remembering irrelevant content or detailed information from the past. Ask respondents how well they remember to do things that are important to them or to their family. If a respondent normally uses some form of memory aid – for example, note-taking, electronic reminder systems or verbal cueing from personal assistants – then rate their performance with this aid taken into consideration."
  * #D1.3 "Analysing and finding solutions to problems in day-to-day life?" "This item refers to a complex activity involving many mental functions. If respondents are unsure of what the item means, ask them to think about a problem they encountered in the past 30 days. Once a problem is identified, respondents should be asked to consider how well they:
• identified that a problem existed
• broke it down into manageable parts
• developed a list of possible solutions
• determined the pros and cons of each solution
• determined the best solution given all considerations
• executed and evaluated the chosen solution
• selected an alternate solution if the first choice was not successful."
  * #D1.4 "Learning a new task, for example, learning how to get to a new place?" "In this question, learning a new route is offered as an example. If respondents ask for clarification or appear to be thinking only about learning how to get to a new place, encourage them to think of other situations in the past month where learning something new was required, such as:
• a task at work (e.g. a new procedure or assignment)
• school (e.g. a new lesson)
• home (e.g. learning a new home-repair task)
• leisure (e.g. learning a new game or craft).
Ask respondents, when rating themselves, to consider how easily they acquired new information, how much assistance or repetition they needed in order to learn and how well they retained what they learned."
  * #D1.5 "Generally understanding what people say?" "Ask respondents to consider their usual mode of communication (e.g. spoken language, sign language, use of an assistive device such as a hearing aid, etc.) and rate the overall degree of difficulty they have in understanding the messages of others.Respondents should consider all situations they have encountered in the past 30 days, such as:
• when others spoke quickly
• when there was background noise
• when there were distractions.
Difficulties due to different mother tongues should be excluded when rating this question."
  * #D1.6 "Starting and maintaining a conversation?" "Rate both starting and maintaining a conversation. If respondents state that they have more
trouble starting than maintaining a conversation (or vice versa), ask them to average the amount
of difficulty experienced with both activities to determine the final difficulty rating.
Conversation includes use of whatever is the usual mode of communication (spoken, written,
sign language, gestural). If respondents normally use assistive devices for communication,
ensure that the difficulty rating provided takes into account conversation while using those
devices.
Ask respondents to consider any and all other factors related to a health condition and relevant
to them in starting and maintaining a conversation. Examples might include hearing loss,
language problems (e.g. as after a stroke), stuttering and anxiety"
* #D2 "Mobility" "Activities discussed in Domain 2 of WHODAS 2.0 include standing, moving around inside the home, getting out of the home and walking a long distance."
  * #D2.1 "Standing for long periods such as 30 minutes?"
  * #D2.2 "Standing up from sitting down?" "This question refers to standing up from sitting in a chair, on a bench or a toilet. It does not refer to standing up from sitting on the floor."
  * #D2.3 "Moving around inside your home?" "This item refers to moving from room to room, and moving within rooms, using assistive devices
or personal help that is usually in place. If a respondent lives in a house with multiple floors, this
question also includes getting from one floor to another, as needed."
  * #D2.4 "Getting out of your home?" "This question seeks information about:
• physical (mobility) aspects of getting out of the home
• emotional or mental aspects of leaving the home (e.g. depression, anxiety, etc.)
For this question, “home” means the respondent’s current dwelling, which might be a house,
apartment, or nursing home."
  * #D2.5 "Walking a long distance such as a kilometre?" "Convert distances into imperial measure where necessary (e.g. older people may be more
familiar with miles than with kilometres)."
* #D3 "Self care" "Domain 3 asks about bathing, dressing, eating and staying alone."
  * #D3.1 "Washing your whole body?" "This question refers to respondents washing their entire body in whatever manner is usual for
their culture.
If respondents report that they have not washed their bodies in the past 30 days, ask whether
this is due to a health condition (as defined by WHODAS 2.0). If respondents report that it is due
to a health condition, then code the item “5” for “Extreme or cannot do”. If respondents report
that the lack of washing is not due to a health condition, then code the item “N/A” for “Not
applicable”."
  * #D3.2 "Getting dressed?" "This question includes all aspects of dressing the upper and lower body. Ask respondents to
consider activities such as gathering clothing from storage areas (i.e. closet, dressers) and
securing buttons, tying knots, etc., when making the rating."
  * #D3.3 "Eating?" "This item refers to:
• feeding oneself: that is, cutting food, and getting food or drink from a plate or glass to the
mouth
• swallowing both food and drink
• mental or emotional factors that may contribute to difficulty in eating, such as anorexia,
bulimia, or depression.
This item does not refer to meal preparation.
If a respondent uses non-oral feeding (e.g. tube feedings), this question refers to any difficulties
experienced in self-administering the non-oral feeding; for example, setting up and cleaning a
feeding pump."
  * #D3.4 "Staying by yourself for a few days?" "The intent of this question is to determine any difficulty respondents have in staying alone for an
extended period and remaining safe. If respondents did not experience this situation in the past
30 days, “N/A” is the correct rating.
If respondents give a rating of “None” for this question, probe the response to determine whether
respondents stayed by themselves without difficulty (in which case “1” is correct) or whether they
did not stay by themselves at all (in which case “N/A” is correct)."
* #D4 "Getting along" "Domain 4 assesses getting along with other people, and difficulties that might be encountered with this
due to a health condition. In this context, “people” may be those with whom the respondent is intimate
or knows well (e.g. spouse or partner, family members or close friends), or those whom the respondent
does not know at all (e.g. strangers)."
  * #D4.1 "Dealing with people you do not know?" "This item refers to interactions with strangers in any situation, such as:
• shop-keepers
• service personnel
• people from whom one is asking directions.
When making the rating, ask respondents to consider both approaching such individuals, and
interacting successfully with them to obtain a desired outcome."
  * #D4.2 "Maintaining a friendship?" "This item includes:
• staying in touch
• interacting with friends in customary ways
• initiating activities with friends
• participating in activities when invited.
Respondents will sometimes report that they have not engaged in friendship-maintenance
activities in the past 30 days. In this case, ask whether this situation is due to a health condition
(as defined by WHODAS 2.0). If respondents report that it is due to a health condition, then code
the item “5” for “Extreme or cannot do”. If respondents report that it is not due to a health
condition, then code the item “N/A”."
  * #D4.3 "Getting along with people who are close to you?" "Ask respondents to consider any relationships that they define as close. These may be within or
outside the family"
  * #D4.4 "Making new friends?" "This item includes:
• seeking opportunities to meet new people
• following up on invitations to get together
• social and communication actions to make contact and to develop a friendship.
On occasion, participants will report that they have not engaged in friendship-making activities in
the past 30 days. In this case, interviewers should ask whether this is due to a health condition
(as defined by the WHODAS 2.0). If respondents report that it is due to a health condition, then
code the item “5” for “Extreme or cannot do”. If respondents report that it is not due to a health
condition, then code the item “N/A”."
  * #D4.5 "Sexual activities?" "Ask respondents to think about what they consider to be sexual activities when answering this
question. If asked for clarification, explain that this question refers to:
• sexual intercourse
• hugging
• kissing
• fondling
• other intimate or sexual acts."
* #D5 "Life activities" "This domain includes questions about difficulty in day-to-day activities. These activities are those that
people do on most days; they include household, work and school activities."
  * #D5.1 "Taking care of your household responsibilities?" "This global question is intended to elicit respondents’ appraisal of any difficulty they encounter in
maintaining the household and in caring for family members or other people they are close to.
Ask respondents to consider all types of household or family needs, including:
• physical needs
• emotional needs
• financial needs
• psychological needs.
In some cultures, males may indicate that they do not have household responsibilities. In this
situation, clarify that household responsibilities include:
• managing finances
• car and home repairs
• caring for the outside area of the home
• picking up children from school
• helping with homework
• disciplining children.
Add any other examples that elucidate household responsibilities held by males in the culture,
as necessary.
Here, “household” is defined broadly. In the case of participants who do not have a stable
dwelling place, there are still activities surrounding the upkeep and maintenance of their
belongings. This question refers to those activities."
  * #D5.2 "Doing most important household tasks well?"
  * #D5.3 "Getting all the household work done that you needed to do?" "Ask respondents to provide ratings based on their own appraisal of how well household tasks
are completed and whether needed household work gets done. If necessary, remind
respondents that they are to report only difficulties due to the health condition, not those that
may be experienced for other reasons such as not having enough time (unless this reason is
somehow linked to a health condition)."
  * #D5.4 "Getting your household work done as quickly as needed?" "This question refers to the timely meeting of expectations and needs of those respondents
whom one lives with (or is close to), in relation to household tasks and responsibilities."
  * #D5.5 "Your day-to-day work/school?" "This global question is intended to elicit respondents’ appraisal of difficulties encountered in day-to-day work or school activities. This includes issues such as attending on time, responding to
supervision, supervising others, planning and organizing, meeting expectations in the workplace
and any other relevant activities."
  * #D5.6 "Doing your most important work/school tasks well?" "Doing work or school tasks “well” refers to completing them as expected by a supervisor or
teacher, by respondents’ own standards or as specified in the performance criteria for a job or
school."
  * #D5.7 "Getting all the work done that you need to do?"
  * #D5.8 "Getting your work done as quickly as needed?"
* #D6 "Participation" "Domain 6 represents a shift from the line of questioning used in the first five domains. In this domain,
respondents are asked to consider how other people and the world around them make it difficult for them
to take part in society. Here, they are reporting not on their activity limitations but rather on the restrictions they experience from people, laws and other features of the world in which they find themselves.
The underlined phrases in the introduction must be emphasized to help respondents shift their mindset
and understand what is being asked. Respondents need to understand that the focus of these questions
is on problems encountered because of the society in which they live rather than because of their own
difficulties. This domain also includes questions about the impact of the health condition.
The introduction to this domain specifically reminds respondents that the focus of this interview is on the
past 30 days. However, this particular domain does not readily lend itself to such a limited time frame;
therefore, it is important to ask respondents to attempt to remain focused on the 30-day reference period."
  * #D6.1 "How much of a problem did you have joining in community activities (for example, festivities, religious or other activities) in the same way anyone else can?" "If necessary, clarify this question using other examples of community activities, such as
attending town meetings, fairs, leisure or sporting activities in the town, neighbourhood or
community. The relevant issue being asked in this question is whether respondents can
participate in these activities or whether there are inhibitors to them doing so.
If respondents appear confused by the phrase “in the same way anyone else can”, ask them to
use their judgement to:
• assess the extent to which average people in their community can join community activities;
and
• consider their personal level of difficulty in joining community activities in relation to the
assessment."
  * #D6.2 "How much of a problem did you have because of barriers or hindrances in the world around
you?" "The intent of this question is to determine how much has stood in the way of respondents being
able to realize aspirations and plans as other people can. The concept here is what
respondents face in terms of external interference created by the world or other people. Barriers
could be:
• physical – for example, the lack of ramps to get into church; and
• social – for example, laws that discriminate against people with disabilities and negative
attitudes of other people that create barriers."
  * #D6.3 "How much of a problem did you have living with dignity because of the attitudes and actions of
others?" "Ask respondents to consider problems they have had in living with dignity or pride in who they
are, what they are doing and how they live their lives."
  * #D6.4 "How much time did you spend on your health condition, or its consequences?" "This question seeks to capture an overall rating or snapshot of the portion of the past 30 days
spent by respondents in dealing with any aspect of their health condition. This may include time
spent in activities such as:
• visiting a treatment centre;
• managing financial matters related to their health condition, such as payment of bills,
reimbursement of insurance or benefits; and
• obtaining information about the health condition or in educating others about it."
  * #D6.5 "How much have you been emotionally affected by your health condition?" "This question refers to the degree to which respondents have felt an emotional impact due to
their health condition. Emotions may include anger, sorrow, regret, thankfulness, appreciation, or
any other positive or negative emotions."
  * #D6.6 "How much has your health been a drain on the financial resources of you or your family?" "Family is broadly defined to include relatives; however, it also includes those to whom
respondents are not related but consider to be like family, including those who may be sharing in
the financial aspects of the health condition. The focus of this question is on the depletion of
personal savings or current income to meet the needs created by a health condition. If
respondents have experienced a significant financial drain but their family has not, or vice versa,
they should respond to the question based on the drain experienced by either party."
  * #D6.7 "How much of a problem did your family have because of your health problems?" "The focus here is on problems created by the interaction of a respondent’s health condition with
the world in which the person lives. The question seeks information on problems that are borne
by the family; these might include financial, emotional, physical problems, etc. The term “family”
is defined above in D6.6."
  * #D6.8 "How much of a problem did you have in doing things by yourself for relaxation or pleasure?" "Ask respondents to consider leisure interests that they currently pursue and those they would
like to pursue but cannot due to the health condition and restrictions imposed by society.
Examples might include a respondent who:
• would like to read novels but is restricted from doing so because the local library does not
carry large-print books; and
• enjoys watching movies but cannot do so because few are produced with subtitles for the
deaf.
Provide an overall rating of problems encountered."
