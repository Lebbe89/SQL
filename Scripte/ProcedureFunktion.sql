use Videogames

create Procedure UpdateAkiviereSpieler(@ID Int)
as
Begin
	Set Nocount on;
	update Spieler Set Aktiv = 1 Where ID = @ID
end
go


Exec UpdateAkiviereSpieler @ID = 2