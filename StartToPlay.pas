{
ALGO: Start to play
BUT: Dire si la salle est remplie ou non, et permettre l'acces aux personnes supplémentaires ou non
ENTREE:Nombre de personnes sortantes(definitives), nombre de personnes entrantes
SORTIE:Dire si oui ou non il reste  de la place

CONST
	MAX<- 250
Procedure total(VAR Nb1:integer;Nbtot:integer;sto:integer);
VAR
	Nb1,Nbtot,sto:INTEGER
DEBUT
	sto<-1
	ECRIRE ("Veuillez entrer le nombre de personnes presentes dans la salle")
	LIRE (Nbtot)
	REPETER
		ECRIRE ("Entrez 0  pour quitter le programme(un autre chiffre pour continuer)")
		LIRE (sto)
		ECRIRE ("Veuillez entrer le nombre de personnes voulant entrer ou sortir de la salle")
		LIRE (Nb1)
		SI (Nb1>MAX) ALORS
			ECRIRE ("Erreur, impossible")
		SINON 
			Nbtot<- Nb1+Nbtot
			
		ECRIRE ("Il y a "& Nbtot "personne dans la salle pour l'instant")
		SI (Nbtot=MAX) ALORS
			ECRIRE ("Veuillez attendre, le nombre maximum autorise a ete atteint")
	TANT QUE sto<>0
END
VAR
	sto,Nb1,Nbtot:integer
DEBUT
	total(Nb1,Nbtot,sto)
FIN.
			}
			
