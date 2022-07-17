pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
--#include path.p8:1

function _init()
	--add(e,{29*8+4,14*8,-1,0})
	add_enemy()
	set_path()
	init_menu()
	set_mode(0)
	cspeed = 3
	restart()
end

function restart()
	e = {}
	t = {}
	d20 = 20
	difficulty = 1
	preview = {}
	previewing = false
	prevtime = 0
	cx = 64
	cy = 64
	reset_d20()
end

function _update()
	
	if mode != 1 then
		update_menu()
		return
	end
	
	update_d20()
	
	if btn(⬆️) then
		cy = max(cy-cspeed,0)
	end
	if btn(⬇️) then
		cy = min(cy+cspeed,120)
	end
	if btn(⬅️) then
		cx = max(cx-cspeed,0)
	end
	if btn(➡️) then
		cx = min(cx+cspeed,128*2-8)
	end
	
	if rnd(100) < difficulty then
		--add(e,{29*8+4,14*8,-1,0})
		add_enemy()
	end
	move_enemies()
	--[[
	for i = 1, #e do
		if e[i][4] > 0 then
			e[i][1] -= 1
			e[i][4] -= 1
			if e[i][4] == 0 then
				e[i][3] *= -1
			end
		else
			e[i][2] += e[i][3]
			if e[i][2] == 12
			or(e[i][2] == 108
			and e[i][1] < 28*8) then
				e[i][4] = 4*8
			end
		end
	end
	--]]
	
	if prevtime <= 0
	and previewing == false then
		previewing = true
		--if #t > 3 then
			preview.speed = 5+rnd(60)
		--else
		--	preview.speed = 15+rnd(50)
		--end
		preview.range = 8+rnd(32)
		preview.durab = rnd(6)
		if rnd(7) < 1 and #t > 3 then
			preview.targets = rnd(10)
		else
			preview.targets = rnd(3)
		end
		prevtime = 30*10
	else
		prevtime -= 1
	end
	difficulty += 2/(30*10)
	
	if btnp(❎) and previewing then
		local test = true
		for i = 1, #t do
			if ((cx-t[i].x)/2)^2
			  +((cy-t[i].y)/2)^2
			 < ((t[i].range
			 	+preview.range)/2)^2 then
			 test = false
   end
		end
		if test then
			previewing = false
			add(t,{})
			t[#t].x = cx
			t[#t].y = cy
			t[#t].speed = preview.speed
			t[#t].timer = 0
			t[#t].range = preview.range
			t[#t].targets=preview.targets
			t[#t].durab = 5+rnd(2)
		end
	end
	
	if btnp(🅾️) then
		for i = #t, 1, -1 do
			if ((cx-t[i].x)/2)^2
			  +((cy-t[i].y)/2)^2
			 < (t[i].range/2)^2 then
			 del(t,t[i])
   end
		end
	end
	
	for i = #t, 1, -1 do
		t[i].timer
		= (t[i].timer+1)%t[i].speed
		if t[i].timer < 1 then
			local tars = t[#t].targets
			for j = #e, 1, -1 do
				if ((e[j][1]-t[i].x)/2)^2
				  +((e[j][2]-t[i].y)/2)^2
				<=(t[i].range/2)^2 then
					del(e,e[j])
					--difficulty += .5
					tars -= 1
					if tars < 1 then
						break
					end
				end
			end
		end
		t[i].durab -= 1/(30*20)
		if t[i].durab < 1 then
			del(t,t[i])
		end
	end
end

function _draw()
	cls()
	
	if mode != 1 then
		draw_menu()
		return
	end
	
	camera(mid(0,cx-64,128),0)
	map()
	--draw enemies
	for i = 1, #e do
		rectfill(e[i][1],e[i][2],
		       e[i][1]+8,e[i][2]+8,6)
		rect(e[i][1],e[i][2],
		     e[i][1]+8,e[i][2]+8,1)
	end
	--draw towers
	pal(15,0)
	for i = 1, #t do
		spr(t[i].durab,t[i].x-4,t[i].y-4)
		circ(t[i].x,t[i].y,t[i].range)
		if t[i].timer < 1 then
			circfill(t[i].x,t[i].y
			,t[i].range)
		end
		print(ceil(t[i].targets)
		,t[i].x,t[i].y+10)
		--[[
		print(t[i].x
		,t[i].x+10,t[i].y)
		print(t[i].y
		,t[i].x+10,t[i].y+10)
		print(i
		,t[i].x+10,t[i].y-10)
		--]]
	end
	
	--draw cursor & preview
	spr(0,cx,cy)
	if previewing then
		color(6)
		for i = 1, #t do
			if ((cx-t[i].x)/2)^2
			  +((cy-t[i].y)/2)^2
			 < ((t[i].range
			 	+preview.range)/2)^2 then
			 rectfill(mid(0,cx-64,128),121
			 ,mid(0,cx-64,128)+84,128,6)
			 color(8)
			 print("towers cannot overlap"
			 ,mid(0,cx-63,128),122)
			 --print(i,min(max(cx-64,0),128)+1,11)
   	--print(t[i].x,min(max(cx-64,0),128)+1,21)
   	--print(t[i].y,min(max(cx-64,0),128)+1,31)
   end
		end
		circ(cx,cy,preview.range)
		print("speed: "
		..ceil(60/preview.speed).."/s"
		,cx-20,cy+10,7)
		print("targets: "
		..ceil(preview.targets)
		,cx-20,cy+20)
		print("press x to place tower"
		,mid(0,cx-63,128),122-12)
	end
	for i = 1, #t do
		if ((cx-t[i].x)/2)^2
			+ ((cy-t[i].y)/2)^2
			< (t[i].range/2)^2 then
			print("press z to remove tower"
		 ,mid(0,cx-63,128),122-6)
		end
	end
	draw_d20()
	print(flr(difficulty),min(max(cx-64,0),128)+1,1)
	--[[
	for x = 0, 256, 2 do
		for y = 0, 128, 2 do
			for i = 1, #t do
				if ((x-t[i].x)/2)^2
			  +((y-t[i].y)/2)^2
			 < (t[i].range/2)^2 then
			 	pset(x,y,8)
   	end
   end
		end
	end
	--]]
end
__gfx__
0000000033333333999999997777777777777777777777777ff77ff7000000000000000000000000000000000000000000000000000000000000000000000000
0000000033333333999999997ff777777ff77ff77ff77ff77ff77ff7000000000000000000000000000000000000000000000000000000000000000000000000
0070070033333333949949997ff777777ff77ff77ff77ff777777777000000000000000000000000000000000000000000000000000000000000000000000000
000770003333333399999999777ff77777777777777ff7777ff77ff7000000000000000000000000000000000000000000000000000000000000000000000000
000770003333333399999999777ff77777777777777ff7777ff77ff7000000000000000000000000000000000000000000000000000000000000000000000000
00700700333333339949949977777ff77ff77ff77ff77ff777777777000000000000000000000000000000000000000000000000000000000000000000000000
00000000333333339999999977777ff77ff77ff77ff77ff77ff77ff7000000000000000000000000000000000000000000000000000000000000000000000000
0000000033333333999999997777777777777777777777777ff77ff7000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0101010101010101010101010101010101010101010101010101010101010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020201010202020202020101020202020202010102020202020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020202020201010202020202020101020202020202010102020202020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020201010202010102020101020201010202010102020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020202020202010102020202020201010202020202020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0102020101020202020202010102020202020201010202020202020101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0101010101010101010101010101010101010101010101010101010101020201000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
