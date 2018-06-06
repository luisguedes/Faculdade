IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'dbo.fnGetFoneEditora') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
   DROP FUNCTION dbo.fnGetFoneEditora
GO

CREATE FUNCTION fnGetFoneEditora
(    
	@CNPJ varchar(20)
)    
RETURNS VARCHAR(MAX)
AS    
BEGIN
	DECLARE @Result VARCHAR(MAX)=''
		
	SELECT @Result =  Coalesce(@Result + telefone + ', ', '')
	  FROM editoratelefone
	 WHERE cnpj_editora = @CNPJ
    
    SET @Result = SUBSTRING(@Result, 1, LEN(@Result)-1)
    
	RETURN @Result  
END
GO