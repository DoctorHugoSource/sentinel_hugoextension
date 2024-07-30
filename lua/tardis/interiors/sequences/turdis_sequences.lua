local Seq = {
	ID = "turdis_sequences",

	["turdiskeypad"] = {
		Controls = {
			"turdistoyotalever1",
			"turdisslider2",
			"turdishandbrake",
			"turdisspinny2",
			"turdisthrottle",
		},
		OnFinish = function(self, ply, step, part)
			if IsValid(self) and IsValid(self) then
				self.exterior:Demat()
			end
		end,
		OnFail = function(self, ply, step, part)
			-- fail stuff
		end,
		Condition = function(self)
			return self:GetData("vortex",false)==false and self:GetData("teleport",false)==false
		end,
	},
}

TARDIS:AddControlSequence(Seq)