Tali funzioni sono utili al fine di effettuare gli esercizi di controlli automatici
classici. Per ogni funzione lascio una breve descrizione in questo README.
Per ogni tipologia di errore o problema, sono aperto al confronto e ad accettare 
eventuali push da parte della community.

DESCRIZIONE FUNZIONI
ReteAnticipatrice -> Implementazione delle funzioni di calcolo di m e om_tau per le rete anticipatrici
Struttura e utilizzo:
[m, om_tau] = ReteAttenuatrice(M, delta_phi);

ReteAttenuatrice -> Implementazione delle funzioni di calcolo di m e om_tau per le reti Attenuatruci
Struttura e utilizzo
[m, om_tau] = ReteAttenuatrice(M,delta_phi);
I valori M e delta_phi vanno inseriti con M < 1 e delta_phi < 0

banda_discreta -> Calcolo della banda di una funzione di trasferimento in maniera brute force
Struttura e utilizzo:
banda_discreta(D,omc); % si preferisce dare omc, poichè è un punto di partenza per la funzione che non dovrà provare tutti i valori da 0

imposta_loop_shaping -> Permette di impostare un esercizio in cui si vuole utilizzare il loop shaping
Ne sconsiglio l'utilizzo poichè sono solo calcoli semplici, per lo più non è nemmeno finita

sovraelongPerc -> Calcolo della zita a partire dalla percentuale di sovraelongazione desiderata
Struttura e utilizzo:
zita = sovraelongPerc(20);
P.S. se si lancia il solo comando sovraelongPerc(), sarà mostrato il grafico

verifica_attenuazioni -> controlla le attenuazioni del segnale rispetto ad una funzione di trasferimento L in 2 punti, om_d (pulsazione massima disturbo d) e om_n (pulsazione minima rumore n)
Struttura e utilizzo:
verifica_attenuazioni(L,om_d,om_n);

verifica_luogo(G,R,opt) -> una funzione non molto utile. L'ho inserita poichè data la presenza di otp, permette di visualizzare non solo il luogo
delle radici, ma anche la risposta al gradino valutandone i parametri caratteristici

verifica_step_function(F) -> Data in ingresso una funzione di trasferimento ne valuta la step function mostrandola a video
e stampa i vari parametri caratteristici nella console
