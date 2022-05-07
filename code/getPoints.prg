LPARAMETERS r_int, r_aur, r_car, r_for, r_fis, r_agi, r_per, raca, estagio, a_int, a_aur, a_car, a_for, a_fis, a_agi, a_per
LOCAL pontos as Number

IF ALLTRIM(raca) = 'Humano'
	pontos = 15
ELSE 
	pontos = 14
ENDIF

FOR x=1 TO estagio
	IF x%2 != 0
		pontos = pontos +1 
	ENDIF
ENDFOR

SET PROCEDURE TO pontos

pontos = pontos - vePontos(a_int, r_int) - vePontos(a_aur, r_aur) - vePontos(a_car, r_car) - vePontos(a_for, r_for)
pontos = pontos - vePontos(a_fis, r_fis) - vePontos(a_agi, r_agi) - vePontos(a_per, r_per)

RETURN pontos