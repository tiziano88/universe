���'һ�������	tt0133093�Q
jlksdfskj3���c��P��This is a test��9# title

test article

```rust
fn foo() -> Vec<u8> {}
```�Q	042brl7xj���������Canto 1��� Nel mezzo del cammin di nostra vita
mi ritrovai per una selva oscura
ché la diritta via era smarrita.
Ahi quanto a dir qual era è cosa dura
esta selva selvaggia e aspra e forte
che nel pensier rinova la paura!
Tant’è amara che poco è più morte;
ma per trattar del ben ch’i’ vi trovai,
dirò de l’altre cose ch’i’ v’ho scorte.
Io non so ben ridir com’i’ v’intrai,
tant’era pien di sonno a quel punto
che la verace via abbandonai.
Ma poi ch’i’ fui al piè d’un colle giunto,
là dove terminava quella valle
che m’avea di paura il cor compunto,
guardai in alto, e vidi le sue spalle
vestite già de’ raggi del pianeta
che mena dritto altrui per ogne calle.
Allor fu la paura un poco queta
che nel lago del cor m’era durata
la notte ch’i’ passai con tanta pieta.
E come quei che con lena affannata
uscito fuor del pelago a la riva
si volge a l’acqua perigliosa e guata,
così l’animo mio, ch’ancor fuggiva,
si volse a retro a rimirar lo passo
che non lasciò già mai persona viva.
Poi ch’èi posato un poco il corpo lasso,
ripresi via per la piaggia diserta,
sì che ’l piè fermo sempre era ’l più basso.
Ed ecco, quasi al cominciar de l’erta,
una lonza leggera e presta molto,
che di pel macolato era coverta;
e non mi si partia dinanzi al volto,
anzi ’mpediva tanto il mio cammino,
ch’i’ fui per ritornar più volte vòlto.
Temp’era dal principio del mattino,
e ’l sol montava ’n sù con quelle stelle
ch’eran con lui quando l’amor divino
mosse di prima quelle cose belle;
sì ch’a bene sperar m’era cagione
di quella fiera a la gaetta pelle
l’ora del tempo e la dolce stagione;
ma non sì che paura non mi desse
la vista che m’apparve d’un leone.
Questi parea che contra me venisse
con la test’alta e con rabbiosa fame,
sì che parea che l’aere ne tremesse.
Ed una lupa, che di tutte brame
sembiava carca ne la sua magrezza,
e molte genti fé già viver grame,
questa mi porse tanto di gravezza
con la paura ch’uscia di sua vista,
ch’io perdei la speranza de l’altezza.
E qual è quei che volontieri acquista,
e giugne ’l tempo che perder lo face,
che ’n tutt’i suoi pensier piange e s’attrista;
tal mi fece la bestia sanza pace,
che, venendomi ’ncontro, a poco a poco
mi ripigneva là dove ’l sol tace.
Mentre ch’i’ rovinava in basso loco,
dinanzi a li occhi mi si fu offerto
chi per lungo silenzio parea fioco.
Quando vidi costui nel gran diserto,
«Miserere di me», gridai a lui,
«qual che tu sii, od ombra od omo certo!».
Rispuosemi: «Non omo, omo già fui,
e li parenti miei furon lombardi,
mantoani per patria ambedui.
Nacqui sub Iulio, ancor che fosse tardi,
e vissi a Roma sotto ’l buono Augusto
nel tempo de li dèi falsi e bugiardi.
Poeta fui, e cantai di quel giusto
figliuol d’Anchise che venne di Troia,
poi che ’l superbo Ilión fu combusto.
Ma tu perché ritorni a tanta noia?
perché non sali il dilettoso monte
ch’è principio e cagion di tutta gioia?».
«Or se’ tu quel Virgilio e quella fonte
che spandi di parlar sì largo fiume?»,
rispuos’io lui con vergognosa fronte.
«O de li altri poeti onore e lume
vagliami ’l lungo studio e ’l grande amore
che m’ha fatto cercar lo tuo volume.
Tu se’ lo mio maestro e ’l mio autore;
tu se’ solo colui da cu’ io tolsi
lo bello stilo che m’ha fatto onore.
Vedi la bestia per cu’ io mi volsi:
aiutami da lei, famoso saggio,
ch’ella mi fa tremar le vene e i polsi».
«A te convien tenere altro viaggio»,
rispuose poi che lagrimar mi vide,
«se vuo’ campar d’esto loco selvaggio:
ché questa bestia, per la qual tu gride,
non lascia altrui passar per la sua via,
ma tanto lo ’mpedisce che l’uccide;�Q	a0lu1lk2b���������!Compile Rust for Raspberry Pi ARM���In this article we will build a simple HTTP server application in Rust, cross-compile it for the Raspberry Pi ARM architecture, deploy it to a Raspberry Pi board over a network connection, and install it as a persistent service so that it restarts automatically at boot time and upon crash.

Background
For the rest of the article, there will be two devices involved:

a development machine, for instance a Linux or Mac laptop or desktop computer, from which we do most of the development.
a target board, for instance a Raspberry Pi 4, connected to the same network as the development machine, and to which we deploy the compiled binary. We assume that the target board is already configured to be reachable at a given IP address or hostname over the same network as the development machine, and has SSH exposed. We also assume that SSH is configured with public key based authentication, so that no password is required every time we connect to it.
Installing Rust
First, we install Rust on the development machine, following the instructions from https://www.rust-lang.org/tools/install via the interactive rustup installer.

Hello World!
We first create the directory that will contain our Rust project. The simplest way is to manually create an empty folder with the desired name (e.g. mkdir hello-world), cd into it, and run cargo init --bin; this creates all the necessary source files for an executable (binary) hello world application.

We test that things are working fine by running cargo run from within this folder, which compiles and runs the hello world application (for now we are still doing everything on the development machine itself). If everything is working, we see an Hello, world! message printed to the terminal. So far so good!

Hello Web!
To make things more interesting, we will build an HTTP server application, which keeps running indefinitely in the background.

There are a few excellent alternatives when it comes to HTTP server frameworks in Rust. Rocket is my personal favorite, but it requires a nightly version of the Rust compiler, so for this tutorial we will go with Actix to keep things simple.

First we add a dependency on the actix-web crate to the Cargo.toml file:

[dependencies]
actix-web = "3.1.0"
Then we (mostly) copy the basic example from the Actix home page into ./src/main.rs (by replacing all its existing content), with some modifications:

�Q$6f17b3e3-d476-409f-9f09-0541fa9282ec�������
��Falsifiable Open Source���
Scientific theories
Let's consider the statement "all swans are white", as a scientific theory. How many white swans would you have to observe before you can claim that such a statement is scientifically verified? 1? 1,000? 1,000,000? It seems clear that, no matter how many white swans are observed, there is still some chance that some yet-to-be-observed swan may not be white. On the other hand, observing a single black swan immediately falsifies the theory (i.e. it conclusively renders it false).
At the core of modern philosophy of science lies this profound asymmetry between verifiability and falsifiability. This is fundamentally true for any theory in the realm of experimental (i.e. inductive) sciences (e.g. physics, biology). Deductive sciences instead, such as mathematics, work through a sequence of assumptions and deductions in order to arrive at a definitely true conclusion (e.g. Pythagoras theorem).
Karl Popper in his book The Logic of Scientific Discovery (1934) states that a theory or hypothesis is falsifiable (or refutable) if it can be logically contradicted by an empirical test. A scientific theory is only ever accepted as valid "until proven otherwise". There is no notion of an absolutely true scientific theory. The value of a scientific theory is greater the higher its likelihood of being falsified.
�Q$8a125079-48ad-4407-a30b-3c54128882b4