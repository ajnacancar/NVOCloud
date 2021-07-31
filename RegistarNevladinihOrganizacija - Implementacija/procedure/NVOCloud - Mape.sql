USE NVOCLOUD
GO

SELECT IdentifikacijskiBroj, Adresa
FROM NevladinaOrganizacija

ALTER TABLE NevladinaOrganizacija
ADD Mapa nvarchar(255)

ALTER TABLE NevladinaOrganizacija
ALTER COLUMN Mapa nvarchar(2000)

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2877.1953881961263!2d18.380680814888002!3d43.851778747586074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4758c916a34e9629%3A0x7795b80141f8d298!2sZmaja%20od%20Bosne%2055%2C%20Sarajevo%2071000!5e0!3m2!1sen!2sba!4v1622920937715!5m2!1sen!2sba" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '111FR7781WL45'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2860.384772294842!2d17.901156514901267!3d44.199141124975064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475ee2423fa0fbaf%3A0x5d1b6950986ead4b!2sFakultetska%201%2C%20Zenica%2072000!5e0!3m2!1sen!2sba!4v1622921096056!5m2!1sen!2sba" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '123AS4575LA42'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2859.0273195682157!2d17.678163814902323!3d44.22709592314936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475effc5ed01e275%3A0xf6afb97bebcc0f41!2sMostarska!5e0!3m2!1sen!2sba!4v1622921171398!5m2!1sen!2sba" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '493KH7751PP12'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2844.138066955621!2d18.68553991491398!3d44.53280550312548!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475ead31cc548c1b%3A0xf03a6cbc18018f44!2sZAVNOBiH-a%2011%2C%20Tuzla%2075000!5e0!3m2!1sen!2sba!4v1622921234564!5m2!1sen!2sba" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '541TK4251AA75'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2901.4759797822953!2d17.805313414868934!3d43.34615338025012!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x134b43a6cdf23b35%3A0xfccb95162927c992!2sDr.%20Ante%20Star%C4%8Devi%C4%87a%203%2C%20Mostar%2088000!5e0!3m2!1sen!2sba!4v1622921398046!5m2!1sen!2sba" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '751AB4441NA34'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2860.5438841653236!2d17.928936814901125!3d44.19586352518906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475ee2210af33d17%3A0x85fde18d8629a838!2sPrvomajska%2C%20Zenica%2072000!5e0!3m2!1sen!2sba!4v1622921455222!5m2!1sen!2sba" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '854AB3492BB17'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2858.9531651810835!2d17.670074614902394!3d44.22862262304964!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475effc47dde47cb%3A0x4e4b9029bd643cb7!2zxaB1bWXEh2UsIFRyYXZuaWs!5e0!3m2!1sen!2sba!4v1622921517919!5m2!1sen!2sba" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '884CS444TU44'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2876.9719022328454!2d18.423897914888197!3d43.85641104728549!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4758c8c66daeaaa3%3A0x5781618bfb6a18c0!2sHamdije%20Kre%C5%A1evljakovi%C4%87a%2061%2C%20Sarajevo%2071000!5e0!3m2!1sen!2sba!4v1622921576758!5m2!1sen!2sba" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '895SS3451LA85'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22740.096265863212!2d18.61547262783591!3d44.566091087369465!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475eac31284b0ed9%3A0x5a87030b14305243!2sLipnica%20Srednja!5e0!3m2!1sen!2sba!4v1622921635380!5m2!1sen!2sba" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '912AT3765LG24'

UPDATE NevladinaOrganizacija
SET Mapa = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2901.9693809957344!2d17.814692414868535!3d43.335829780913926!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x134b4306aa980c2d%3A0xf681f04782776b70!2sMar%C5%A1ala%20Tita%20178%2C%20Mostar%2088000!5e0!3m2!1sen!2sba!4v1622921698109!5m2!1sen!2sba" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>'
WHERE IdentifikacijskiBroj = '999CP1176MS67'

SELECT *
FROM NevladinaOrganizacija