declare 
  nuUser number(15) := 2;
  nuRole number(5) := 1;
begin

  -- Verificar si un usuario tiene un role
  dbms_output.put_line('STEP 1 - Verificar si un usuario tiene un role');
  IF (FBOUSERHASROLE(nuUser, nuRole)) THEN
    dbms_output.put_line('El usuario si tiene el role');   
  else 
    dbms_output.put_line('El usuario no tiene el role');       
  END IF;
  
  -- Asigna el role al usurio
  dbms_output.put_line('STEP 2 - Asigna el role al usurio');
  addRoleToUser(nuUser, nuRole);
      
end;
