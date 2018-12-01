SELECT DATE(Eventos.Fecha),TIME(Eventos.Fecha) AS Hora,
COUNT(DISTINCT(PersonasInvolucrada.IdPersona))AS Personas
FROM PersonasInvolucrada
INNER JOIN Eventos ON Eventos.IdEvento=PersonasInvolucrada.IdEvento
INNER JOIN TipoEventos ON TipoEventos.IdTipoEvento=Eventos.IdTipoEvento
LEFT JOIN ArmasInvolucradas ON ArmasInvolucradas.IdEvento=Eventos.IdEvento
LEFT JOIN TipoArmas ON TipoArmas.IdTipoArma=ArmasInvolucradas.IdTipoArma
WHERE TipoEventos.TipoEvento="ARMAS"
GROUP BY(Eventos.Fecha);