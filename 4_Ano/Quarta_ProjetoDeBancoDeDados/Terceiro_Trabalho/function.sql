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
	 WHERE editora_cnpj = @CNPJ
    
    SET @Result = SUBSTRING(@Result, 1, LEN(@Result)-1)
    
	RETURN @Result  
END
GO



--- atualizada

DECLARE @Result VARCHAR(MAX)=''
		
	SELECT @Result =  @Result + ', ' + telefone
	  FROM editoratelefone
	 WHERE editora_cnpj = '80.354.229/0001-63'
    
    SET @Result = SUBSTRING(@Result, 3, LEN(@Result))
    
	SELECT @Result