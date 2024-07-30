
matproxy.Add({
    name = "TARDIS_torrentturdis_Color",

    init = function(self, mat, values)
        self.ResultTo = values.resultvar
    end,

    bind = function(self, mat, ent)
        if not IsValid(ent) or not ent.TardisPart then return end
        if not ent.interior then return end

        local col = ent.interior.metadata.Interior.Colors.texturecolor


        col = Color(col.r, col.g, col.b):ToVector()



        mat:SetVector( self.ResultTo, col);
    end
})
