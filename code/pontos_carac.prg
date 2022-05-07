LPARAMETERS estagio
LOCAL pontos as Integer
pontos = 3
IF EMPTY(estagio)
	RETURN 0
ENDIF
IF estagio > 1
	FOR x = 2 TO estagio
		IF x % 2 != 0
			pontos = pontos + 1
		ENDIF
	ENDFOR
ENDIF
RETURN pontos