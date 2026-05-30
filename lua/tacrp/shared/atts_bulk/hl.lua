-- hl.lua

local ATT = {}

------------------------------
-- #region ar2_receiver_ramp
------------------------------
ATT = {}

ATT.PrintName = "Devotion"
ATT.FullName = "Devotion AR2 Receiver"
ATT.Icon = Material("entities/tacrp_hl_irifle.png", "mips smooth")
ATT.Description = "Sustained fire increases fire rate, but initial fire rate is reduced."
ATT.Pros = {}
ATT.Cons = {}
ATT.Category = {"ar2_receiver"}

ATT.Mult_RPM = 1.2

local factor = 8

ATT.Func_RPM = function(wep, data)
    if wep:GetCurrentFiremode() == 2 then
        data.mul = Lerp((wep:GetRecoilAmount() / factor) ^ 2, 0.5, 1)
    end
end

ATT.Func_Pitch_Shoot = function(wep, data)
    if wep:GetCurrentFiremode() == 2 then
        data.mul = data.mul * Lerp((wep:GetRecoilAmount() / factor) ^ 2, 0.975, 1)
    end
end

TacRP.LoadAtt(ATT, "ar2_receiver_ramp")
-- #endregion

------------------------------
-- #region ar2_receiver_double
------------------------------
ATT = {}

ATT.PrintName = "Gemini"
ATT.FullName = "Gemini AR2 Receiver"
ATT.Icon = Material("entities/tacrp_hl_irifle.png", "mips smooth")
ATT.Description = "Fire a burst of two shots with only one round."
ATT.Pros = {}
ATT.Cons = {}
ATT.Category = {"ar2_receiver"}

ATT.Override_Firemodes = {-2, 1}

ATT.Mult_RPM = 1.6667
ATT.Mult_Shoot_Pitch = 1.1

ATT.Override_AutoBurst = false
ATT.Override_RunawayBurst = true
ATT.Override_PostBurstDelay = 0.15

ATT.Func_RecoilKick = function(wep, data)
    if wep:GetCurrentFiremode() == -2 and wep:GetBurstCount() % 2 == 0 then
        data.mul = 0
    end
end

ATT.Func_AmmoPerShot = function(wep, data)
    if wep:GetCurrentFiremode() == -2 and wep:GetBurstCount() > 0 and wep:GetBurstCount() % 2 == 1 then
        data.set = 0
        data.prio = 1
    end
end

TacRP.LoadAtt(ATT, "ar2_receiver_double")
-- #endregion

------------------------------
-- #region ar2_receiver_autofire
------------------------------
ATT = {}

ATT.PrintName = "Cascade"
ATT.FullName = "Cascade AR2 Receiver"
ATT.Icon = Material("entities/tacrp_hl_irifle.png", "mips smooth")
ATT.Description = "Energy launcher automatically fires as primary ammunition is spent."
ATT.Pros = {}
ATT.Cons = {}
ATT.Category = {"ar2_receiver"}

ATT.Override_Firemodes = {2}

ATT.Hook_PostShoot = function(wep)
    if wep:GetCurrentFiremode() == 2 and wep:Clip1() % wep:GetValue("AltfireAutofireCount") == 0 then
        wep:CombineAltfire(true)
    end
end

TacRP.LoadAtt(ATT, "ar2_receiver_autofire")
-- #endregion
------------------------------
-- #region ar2_launcher_large
------------------------------
ATT = {}

ATT.PrintName = "Megasphere"
ATT.FullName = "Megasphere AR2 Energy Launcher"
ATT.Icon = Material("entities/tacrp_hl_irifle.png", "mips smooth")
ATT.Description = "Fire a large, heavy, and long-lasting ball."
ATT.Pros = {}
ATT.Cons = {}
ATT.Category = {"ar2_launcher"}

ATT.Override_AltfireChargeTime = 1
ATT.Override_AltfireAutofireCount = 20
ATT.Override_AltfireRadius = 32
ATT.Override_ShootEntForce = 728
ATT.Override_AltfireLifetime = 10
ATT.Override_AltfireGravity = false

TacRP.LoadAtt(ATT, "ar2_launcher_large")
-- #endregion

------------------------------
-- #region ar2_launcher_quick
------------------------------
ATT = {}

ATT.PrintName = "Flashfire"
ATT.FullName = "Flashfire AR2 Energy Launcher"
ATT.Icon = Material("entities/tacrp_hl_irifle.png", "mips smooth")
ATT.Description = "Significantly shorten charge time and ball life time."
ATT.Pros = {}
ATT.Cons = {}
ATT.Category = {"ar2_launcher"}

ATT.Override_AltfireChargeTime = 0.25
ATT.Override_AltfireAutofireCount = 10
ATT.Override_AltfireLifetime = 1.5

TacRP.LoadAtt(ATT, "ar2_launcher_quick")
-- #endregion

------------------------------
-- #region ar2_launcher_fast
------------------------------
ATT = {}

ATT.PrintName = "Hypershot"
ATT.FullName = "Hypershot AR2 Energy Launcher"
ATT.Icon = Material("entities/tacrp_hl_irifle.png", "mips smooth")
ATT.Description = "A slowly charged, high velocity ball with intense knockback."
ATT.Pros = {}
ATT.Cons = {}
ATT.Category = {"ar2_launcher"}

ATT.Override_AltfireChargeTime = 1
ATT.Override_AltfireAutofireCount = 20
ATT.Override_ShootEntForce = 2048
ATT.Override_AltfireMode = 2
ATT.Override_AltfireRecoil = 600

TacRP.LoadAtt(ATT, "ar2_launcher_fast")
-- #endregion

------------------------------
-- #region ar2_launcher_triple
------------------------------
ATT = {}

ATT.PrintName = "Splitpoint"
ATT.FullName = "Splitpoint AR2 Energy Launcher"
ATT.Icon = Material("entities/tacrp_hl_irifle.png", "mips smooth")
ATT.Description = "Fires three balls in a horizontal pattern."
ATT.Pros = {}
ATT.Cons = {}
ATT.Category = {"ar2_launcher"}


ATT.Override_AltfireAmmoPerShot = 3
ATT.Override_AltfireMode = 3
ATT.Override_AltfireRadius = 7
ATT.Override_AltfireLifetime = 2

TacRP.LoadAtt(ATT, "ar2_launcher_triple")
-- #endregion

------------------------------
-- #region ar2_launcher_ender
------------------------------
ATT = {}

ATT.PrintName = "Enderskip"
ATT.FullName = "Enderskip AR2 Energy Launcher"
ATT.Icon = Material("entities/tacrp_hl_irifle.png", "mips smooth")
ATT.Description = "Fire a unique gravity-affected ball that can be teleported to."
ATT.Pros = {}
ATT.Cons = {}
ATT.Category = {"ar2_launcher"}

ATT.Override_AltfireChargeTime = 0.75
ATT.Override_AltfireAutofireCount = 10
ATT.Override_AltfireMode = 1
ATT.Override_AltfireLifetime = 3
ATT.Override_AltfireRadius = 18
ATT.Override_AltfireGravity = true

TacRP.LoadAtt(ATT, "ar2_launcher_ender")
-- #endregion