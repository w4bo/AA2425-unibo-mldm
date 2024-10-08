# AI FOR DATA ANALYSIS

# Artificial Neural Networks

# Trasmissione informazioni (2)

La quantità di segnale \(informazione\) trasmessa verso il neurone postsinaptico dipende da diversi fattori:

_Intensità_  _ del _  _segnale_  _ in _  _entrata_  _ _  _\(_  _anche_  _ _  _ricezione_  _ di _  _più_  _ _  _segnali_  _ _  _da_  _ _  _neuroni_  _ _  _diversi_  _\)_

_Forza_  _ _  _delle_  _ _  _sinapsi_  _ _  _dei_  _ _  _neuroni_  _ in _  _entrata_  _ _  _\(_  _rilascio_  _ _  _dei_  _ _  _neurotrasmettitori_  _\)_

_Soglia_  _ di _  _attivazione_  _ del _  _neurone_  _ _  _ricevente_  _ _  _\(_  _superata_  _ _  _una_  _ _  _certa_  _ _  _soglia_  _ di _  _potenziale_  _ _  _elettrico_  _\, _  _il_  _ _  _neurone_  _ _  _ricevente_  _ _  _si_  _ _  _attiva_  _ e genera a _  _sua_  _ _  _volta_  _ _  _una_  _ _  _segnale_  _ _  _che_  _ _  _può_  _ _  _essere_  _ _  _propagato_  _ verso _  _gli_  _ _  _altri_  _ _  _neuroni_  _\)_

![](ai2nn%5C43%20-%20AI%20ANN0.png)

# Rete neurale biologica vs artificiale


    * _n:_  neuroni in entrata;
    * _x_  _i_  _: _ intensità del segnale;
    * _w_  _i_ : forza sinapsi;
    * _b_ : soglia del neurone postsinaptico
    * : combinazione segnali in entrata
    * : funzione di attivazione
    * _y_ : output

![](ai2nn%5C43%20-%20AI%20ANN1.png)

---

 Csi
 sigma

# Il percettrone (1)

* Il percettrone è la ANN più semplice\, introdotta agli inizi degli anni ’50
  * _Classificatore binario_
  * _Funzione di attivazione_ : funzione segno\.
  * _Combinazione feature in ingresso_ : combinazione  __lineare__  delle feature in ingresso \(xi\)\, con i pesi \(wi\) come  __coefficienti__ \.

Funzione di attivazione:

1\,    se

\-1\,   se

1\,    se

\-1\,   se

Si considera la soglia come input con coefficiente 1

FORMA VETTORIALE

# Esempio

Percettrone

_Classificatore binario_

| y’ |
| :-: |
| -1 |
| 1 |
| 1 |
| 1 |
| -1 |
| -1 |
| 1 |
| -1 |

| x1 | x2 | x3 | y |
| :-: | :-: | :-: | :-: |
| 1 | 0 | 0 | -1 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 1 |
| 0 | 0 | 1 | -1 |
| 0 | 1 | 0 | -1 |
| 0 | 1 | 1 | 1 |
| 0 | 0 | 0 | -1 |

1\,    se 0\.3x1 \+ 0\.3x2 \+ 0\.3x3 \-0\.4 > 0

\-1\,   se 0\.3x1 \+ 0\.3x2 \+ 0\.3x3 \-0\.4 < 0

_y_  assume valore 1  se almeno due input sono maggiori di 0\, altrimenti assume valore \-1

# Boolean functions

![](ai2nn%5C43%20-%20AI%20ANN2.png)

# Apprendimento

* _Concetto generale_ : processo di aggiornamento della struttura interna di un sistema in risposta a stimoli esterni\, al fine di eseguire una specifica attività\.
* _Reti neurali_ :
  * Aggiustare i pesi delle sinapsi al fine di ridurre l’errore fra il valore di output generato dalla rete neurale e l’output corretto
  * È un processo iterativo: analogamente all’apprendimento per esperienza
  * Si dice che una rete neurale ha appreso quando:
    * È in grado di memorizzare informazioni imprecise o che contengono rumore\, senza che venga alterata la qualità della risposta della rete neurale
    * È in grado di generalizzare da concetti appresi  a concetti sconosciuti

# Limiti del percettrone

L’algoritmo di apprendimento del percettrone termina \(quindi si raggiunge la soluzione ottima\) se il problema è linearmente separabile

![](ai2nn%5C43%20-%20AI%20ANN3.png)

---

Inserire immagine libro

# Reti neurali complesse

* Percettrone multilivello
* Funzione di attivazione
* Pattern di connessione
  * Feed\-forward
  * Recurrent

![](ai2nn%5C43%20-%20AI%20ANN4.png)

![](ai2nn%5C43%20-%20AI%20ANN5.png)

![](ai2nn%5C43%20-%20AI%20ANN6.png)

# Percettrone multilivello (1)

* La rete è caratterizzata da uno o più livelli intermedi \( _livelli nascosti_ \) fra il livello di input e quello di output\.
* Gli output dei nodi di un livello diventano gli input per i nodi del livello successivo\.
* Ogni nodo nascosto si comporta come un singolo percettrone
* <span style="color:#000000">Quanti livelli nascosti?</span>
  * <span style="color:#3366CC">1 livello: </span>  <span style="color:#3366CC">universal</span>  <span style="color:#3366CC"> </span>  <span style="color:#3366CC">approximator</span>  <span style="color:#3366CC"> \(vedi Teorema </span>  <span style="color:#3366CC">Cybenko</span>  <span style="color:#3366CC">\)</span>
    * <span style="color:#000000">Può approssimare in modo arbitrariamente preciso ogni funzione continua \(avendo un numero sufficiente di neuroni\)</span>

![](ai2nn%5C43%20-%20AI%20ANN7.png)

# Vantaggi di una rete neurale (1)

* Capacità di generalizzazione
  * Utile in problemi di riconoscimento caratteri digitalizzati
* Comportamento dinamico
  * Capacità di rispondere a stimoli esterni in maniera diversa rispetto a ciò che inizialmente è stato definito all’interno del sistema
* Capacità di riprodurre o modellare comportamenti non lineari di un sistema
* Capacità di classificare pattern complessi

![](ai2nn%5C43%20-%20AI%20ANN8.png)

![](ai2nn%5C43%20-%20AI%20ANN9.png)

* Tolleranza agli errori
  * scostamenti non significativi dei valori di input vengono assorbiti dalla rete\, diminuendo così il rumore e risultando tolleranti agli errori o al decadimento del segnale
* Tolleranza ai guasti
  * Il mal funzionamento di una unità di elaborazione può essere ovviato dalla presenza di molteplici neuroni che operano in parallelo
* Capacità di memoria

# Svantaggi di una rete neurale

* Ai fini dell’apprendimento è necessario fornire alla rete neurale tanti più esempi quanto più fortemente non lineare è il sistema da modellare\.
  * Il processo di apprendimento potrebbe risultare lungo
  * Il processo di apprendimento potrebbe portare a soluzione subottime
* Non è possibile sapere a priori quale sia la miglior topologia della rete \(numero di nodi\, di strati\, collegamenti fra nodi e tipo di funzioni che devono implementare i nodi di ciascun strato\) da assegnare alla rete neurale affinché modelli al meglio il nostro sistema\.
* La rete neurale è come una scatola nera\, quindi non fornisce spiegazioni sul funzionamento del sistema in esame\.

# Deep Learning

Con il termine DNN \( <span style="color:#FF0000"> __Deep __ </span>  <span style="color:#FF0000"> __Neural__ </span>  <span style="color:#FF0000"> __ Network__ </span> \) si denotano reti «profonde» composte da molti livelli \(almeno 2 hidden\) organizzati gerarchicamente\.

Le implicazioni di universal approximation theorem e la difficoltà di addestrare reti con molti livelli hanno portato per lungo tempo a focalizzarsi su reti con un solo livello hidden\.

L’esistenza di soluzioni non implica efficienza: esistono funzioni computabili con complessità polinomiale operando su 𝑘 livelli\, che richiedono una complessità esponenziale se si opera su 𝑘−1 livelli \(Hastad\, 1986\)\.

L’organizzazione gerarchica consente di condividere e riusare informazioni \(un po' come la programmazione strutturata\)\. Lungo la gerarchia è possibile selezionare feature specifiche e scartare dettagli inutili \(al fine di massimizzare l’invarianza\)\.

# Ma quanto Deep?

Le DNN oggi maggiormente utilizzate consistono di un numero di livelli compreso tra 7 e 50\.

Reti più profonde \(100 livelli e oltre\) hanno dimostrato di poter garantire prestazioni leggermente migliori\, a discapito però dell’efficienza\.

«solo» una decina di livelli tra la retina e i muscoli attuatori \(altrimenti saremmo troppo lenti a reagire agli stimoli\)\.

# Fattori abilitanti del Deep Learning

* Alcune reti deep ottengono già nel 1998 buone prestazioni in problemi di piccole dimensioni \(es\. riconoscimento caratteri\, riconoscimento oggetti a bassa risoluzione\)\, ma bisogna attendere il 2012 \(AlexNet\) per un radicale cambio di passo\. AlexNet non introduce rilevanti innovazioni rispetto alle CNN di LeCun del 1998\, ma alcune condizione al contorno sono  <span style="color:#000000">nel frattempo cambiate: </span>
  * BigData: disponibilità di dataset etichettati di grandi dimensioni \(es\. ImageNet: milioni di immagini\, decine di migliaia di classi\)\.
  * GPU computing: il training di modelli complessi \(profondi e con molti pesi e connessioni\) richiede elevate potenze computazionali\. La disponibilità di GPU con migliaia di core e GB di memoria interna ha consentito di ridurre drasticamente i tempi di training: da mesi a giorni

![](ai2nn%5C43%20-%20AI%20ANN10.jpg)

# Play with it!

* A questo [link](https://playground.tensorflow.org/#activation=tanh&batchSize=10&dataset=circle&regDataset=reg-plane&learningRate=0.03&regularizationRate=0&noise=0&networkShape=4,2&seed=0.98914&showTestData=false&discretize=false&percTrainData=50&x=true&y=true&xTimesY=false&xSquared=false&ySquared=false&cosX=false&sinX=false&cosY=false&sinY=false&collectStats=false&problem=classification&initZero=false&hideText=false) trovate un playground interattivo per testare il task di classificazione di oggetti variando le caratteristiche della rete neurale
  * <span style="color:#000000">[https://playground\.tensorflow\.org](https://playground.tensorflow.org/)</span>  <span style="color:#000000"> </span>
  * <span style="color:#000000">[https://cs\.stanford\.edu/people/karpathy/convnetjs/](https://cs.stanford.edu/people/karpathy/convnetjs/)</span>  <span style="color:#000000"> </span>

![](ai2nn%5C43%20-%20AI%20ANN11.png)

