FUNCTION vePontos
	LPARAMETERS i_atrib, i_mod && 4 , -1
	LOCAL v_atrib as Integer
	LOCAL v_mod as Integer
	t_atrib = IIF(VARTYPE(i_atrib) = 'C', VAL(i_atrib), i_atrib)
	t_mod = IIF(VARTYPE(i_mod) = 'C', VAL(i_mod), i_mod)
	v_atrib = IIF(!EMPTY(t_atrib),INT(t_atrib),0)
	v_mod = IIF(!EMPTY(t_mod),INT(t_mod),0)
	LOCAL retorno as Number
	IF v_atrib > v_mod 
		IF v_mod > 0
			retorno = somaPontos(v_atrib) - somaPontos(v_mod)
		ELSE
			retorno = somaPontos(v_atrib) - v_mod
		ENDIF 
	ELSE
		retorno = somaPontos(v_atrib - v_mod)
	ENDIF 
	RETURN retorno
ENDFUNC 

FUNCTION somaPontos
	LPARAMETERS i_atributo
	LOCAL atributo as Integer
	atributo = IIF(!EMPTY(i_atributo),i_atributo,0)
	LOCAL retorno as Number
	DO CASE 
		CASE atributo < 1
			retorno = atributo/2
		CASE atributo = 0
			retorno = 0
		CASE atributo = 1
			retorno = 1
		CASE atributo > 1
			retorno = atributo + somaPontos(atributo - 1)
	ENDCASE
	RETURN retorno
ENDFUNC 



