function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfCorruption')
	addCharacterToList('bfCorrupted')

	makeLuaSprite('voidBlue', 'sonic', 100, 250)
	makeLuaSprite('voidRed', 'fleet', 100, 250)
	addLuaSprite('voidBlue', false)
	addLuaSprite('voidRed', false)
	setProperty('voidRed.alpha', 0)


end

function onStartCountdown()
	setProperty('gf.alpha', 0)
	setProperty('dad.alpha', 0)
	setProperty('iconP2.alpha', 0)

	return Function_Continue
end

function onSongStart()
	for note=0,3 do
		noteTweenAlpha('rrr'..note, note, 0, 0.82, 'linear')
	end
end


function onStepHit()
	if curStep == 384 or curStep == 768 or curStep == 1280 or curStep == 1536 then
		corruptON()
	end
	if curStep == 640 or curStep == 1024 or curStep == 1408 or curStep == 1792 then
		corruptOFF()
	end
end

function corruptON()
	triggerEvent('Change Character', '0', 'bfCorrupted')
	cameraFlash('game', 'FF0000', 0.15)
	setProperty('voidRed.alpha', 1)
end

function corruptOFF()
	triggerEvent('Change Character', '0', 'bfCorruption')
	cameraFlash('game', 'FFFFFF', 0.15)
	setProperty('voidRed.alpha', 0)
end	