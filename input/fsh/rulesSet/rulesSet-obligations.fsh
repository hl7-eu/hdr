RuleSet: OblShallPopulateShallProcess
// Producer: SHALL able-to-populate
// Consumer: SHALL process
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:process)

RuleSet: OblShallPopulateShallDisplayProcess
// Producer: SHALL able-to-populate
// Consumer: SHALL display + SHALL process
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:display)
* insert ObligationActorAndCode($consumer, #SHALL:process)

RuleSet: OblShallPopulateShouldDisplayShallProcess
// Producer: SHALL able-to-populate
// Consumer: SHOULD display + SHALL process
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHOULD:display)
* insert ObligationActorAndCode($consumer, #SHALL:process)

RuleSet: OblShallPopulateShallDisplay
// Producer: SHALL able-to-populate
// Consumer: SHALL display
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:display)

RuleSet: OblShallPopulateOnly
// Producer: SHALL able-to-populate
// Consumer: none
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)

RuleSet: OblShallPopulateShouldDisplay
// Producer: SHALL able-to-populate
// Consumer: SHOULD display
* insert ObligationActorAndCode($creator, #SHALL:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHOULD:display)

RuleSet: OblShouldPopulateShouldProcess
// Producer: SHOULD able-to-populate
// Consumer: SHOULD process
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHOULD:process)

RuleSet: OblShouldPopulateShallProcess
// Producer: SHOULD able-to-populate
// Consumer: SHALL process
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)
* insert ObligationActorAndCode($consumer, #SHALL:process)

RuleSet: OblShouldPopulateOnly
// Producer: SHOULD able-to-populate
// Consumer: none
* insert ObligationActorAndCode($creator, #SHOULD:able-to-populate)
