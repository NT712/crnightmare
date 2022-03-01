function onCreate()
	makeAnimatedLuaSprite('fx', 'vintage', 0, 0)
	addAnimationByPrefix('fx', 'idle', 'idle', 16, true)
	scaleObject('fx', 3, 3)
	setObjectCamera('fx', 'camHud')
	objectPlayAnimation('fx', 'idle', true)
	addLuaSprite('fx', true)
	setProperty('fx.alpha', 0)
end

function onEvent(name, value1)
	if name == 'static' then
		setProperty('fx.alpha', 0.85)
		runTimer('fxDelay', 0.15)
	end
end

function onTimerCompleted(tag)
	if tag == 'fxDelay' then
		setProperty('fx.alpha', 0)
	end
end