# PRG301-blockchain
Kandidatnr: 19


Oppgave 1.

B)
![konte_ss1](https://github.com/dennis647/PRG301-blockchain/assets/106619482/a2f36f61-3a73-4e9f-a9bc-3c32c7be372d)

![konte_ss2](https://github.com/dennis647/PRG301-blockchain/assets/106619482/02096550-ba99-442d-9006-e74d857a5b2f)

C)

Når det kommer til en arbeidsflyt der minst to personer i et team må godkjenne endringer mot main branch, så er det en handling som kan ha gode fordeler for kavliteten og samarbeidet til prosjektet, men det er noe som også kommer med visse ulemper. Noen av fordelene for dette er blandt annet at det kan forbedre kodekvaliteten. Dette grunnes til at det er flere personer som ser gjennom og vurderer koden før den merges til main branchen, noe som kan føre til at det blir en større sannsynlighet for å finne bugs, feil og potensielle forbedringer, som dermed ender opp med å redusere risikoen for feil.
Det å jobbe flere sammen i en arbeidsflyt kan også påvirke kunnskap og erfaring blandt de som er på teamet. Siden her jobber man med en eller flere personer, dermed blir disse i laget eksponert for ulike løsninger og praksiser, noe som bidrar med å lære andre metoder og kan påvirke til mer kompetanse innad teamet. Her får man også jobbet med å forbedre samarbeid, dersom man trenger godkjenning fra andre i teamet før man merger, som oppmuntrer til eventuell diskusjon og kompromiss. Noe som kan føre til bedre beslutninger og ett sterkere samhold innad prosjektet. Liten pluss på dette er at det kan gjøre koden mer ryddig også, dersom man må ta rede for at andre på teamet skal forstå koden. Dette er noe som også kan være en ulempe med dette, dersom det øker en mulighet for konflikt. Selvom det kan være godt å diskutere, så kan dette også føre til konflikter hvis det ikke blir håndert på riktig måte.

Noen andre ulemper med å jobbe i team, er blandt annet at det kan redusere utviklingshastigheten. Dersom man eventuelt må vente på godkjenninger fra en eller flere teammedlemmer, som kan gi en forsinkelse av endringer og kan muligens senke hastigheten på utviklingen. Utviklingenhastigheten kan også reduseres med tanke på at det blir litt ekstra byrde på teammedlemmene. Når de oftere må bryte arbeidsflyen for å bruke tid på å gjennomgå andres kode og i tillegg måtte jobbe på egne oppgaver, kan bli utforderne i visse situasjoner, spesielt om det er perioder med høy arbeidsbelastning.


Oppgave 2.

B)

For å kjøre terraform koden på egen maskin så må du gjøre følgende:
- Først må du ha installert dockerhub og terraform på egen maskin
- Kjør kommandoen "terraform init"
- Deretter kjør "terraform apply"
- Her skal du skrive inn passord og brukernavn til din dockerhub konto
- Når du får denne meldingen etter å ha skrevet inn brukernavn og passord:
"Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: "
Så skriver du inn "yes". Deretter burde repositoriet være opprettet.


C)

Når man kjører det for første gang så blir nbx repoet i docker opprettet, etter å ha slettet filen så får vi feilmeldingen "╷

│ Error: {"message":"repository dennis647/nbx already exists","errinfo":{}}

│ 

│

│   with dockerhub_repository.project,

│   on main.tf line 17, in resource "dockerhub_repository" "project":

│   17: resource "dockerhub_repository" "project" {"

Denne feilmeldingen får vi siden vi allerede har opprettet ett repository i docker hub under navnet "nbx", så det er det denne feilmeldingen indikerer, siden docker hub ikke tillater å ha duplikate navn på repositorier som er innenfor den samme namespacen. 

For å løse dette problemet så er det noen forskjellige måter man kan løse det på. Først og fremst så pleier terraform.tfstate å lage en backup av filen som heter terraform.tfstate.backup - Som man kan bruke istedenfor. 

Løsning nr 2, som er den beste løsningen for dette er bare å importere repositoriet man allerede har laget i dockerhub. Dette gjør man enkelt ved å kjøre en kommando i terminal

"terraform import dockerhub_repository.project [NAMESPACE]/[REPOSITORY_NAME]" 

Der namespace blir endret med brukernavnet på dockerhub og repository name i dette tilfellet er nbx. Dermed blir det man skal skrive inn 

"terraform import dockerhub_repository.project dennis647/nbx".

Etter denne kommandoen er kjørt så er både terraform.tfstate og terraform.tfstate.backup tilbake igjen og funker som det skal.


Oppgave 3:

Når sensor lager en fork av mitt repo så er det vitkig at han går til settings på github > secrets and veriables > actions > new repository secret

Her skal det lages to forskjellige repo secrets, der en er under navnet:

  "DOCKER_HUB_USERNAME" 

Der man skriver brukernavnet til dockerhub profilen sin og en under navnet:

  "DOCKER_HUB_TOKEN" 

der man skriver inn dockerhub passordet sitt. Så burde det fungere å kjøre min workflow med dockerhub kontoen.

Hvis sensor ønsker å kjøre mitt container image på sin maskin så må sensor kjøre følgende kommando:

"docker run -d -p 80:80 dennis647/nbx:1708698852"

Grunnet til at tag'en ikke er latest, er fordi jeg hadde noen problemer med å få det til å virke. Men det fungere enda fint.



