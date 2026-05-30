SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "AR2 OSIPR"
SWEP.AbbrevName = "AR2"
SWEP.Category = "Tactical RP (Bonus)"

SWEP.SubCatTier = "0Exotic"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "An alien assault rifle that shoots dark energy pulses.\nSwitch to semi-auto to fire bouncing energy balls."
SWEP.Description_Quote = "\"Attention, ground units - anti-citizen reported in this community.\""
SWEP.Trivia_Caliber = "Dark Matter"
SWEP.Trivia_Manufacturer = "Universal Union"
SWEP.Trivia_Year = "Unknown"

SWEP.Faction = TacRP.FACTION_NEUTRAL
SWEP.Credits = [[
Model & Textures: Juniez
Sounds: Half-Life 2: MMod
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_irifle.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_irifle.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 24,
        Damage_Min = 24,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachineGun

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

SWEP.Laser = true
SWEP.LaserPower = 4
SWEP.LaserQCAttachmentVM = 1
SWEP.LaserQCAttachmentWM = 1
SWEP.LaserAlwaysAccurate = false
SWEP.CanToggle = false
SWEP.TacticalName = "hint.tac.laser"
SWEP.LaserColor = Color(25, 100, 255, 175)

// "ballistics"

SWEP.Damage_Max = 30
SWEP.Damage_Min = 30
SWEP.Range_Min = 3000
SWEP.Range_Max = 3000
SWEP.Penetration = 10
SWEP.ArmorPenetration = 0.9

SWEP.MuzzleVelocity = 17500

// misc. shooting

SWEP.Firemodes = {2, 1}

SWEP.RPM = 600

SWEP.Spread = 0.001

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 12
SWEP.RecoilResetTime = 0.2
SWEP.RecoilDissipationRate = 40
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 2
SWEP.RecoilStability = 0.65

SWEP.HipFireSpreadPenalty = 0.025
SWEP.RecoilSpreadPenalty = 0.001
SWEP.PeekPenaltyFraction = 0.1

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.4
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.1
SWEP.ReloadSpeedMultTime = 1

SWEP.AimDownSightsTime = 0.5
SWEP.SprintToFireTime = 0.5

SWEP.Sway = 1
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 4

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(1, 2, -4.25)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.25, -0.6, 0)
SWEP.SightPos = Vector(-2.75, -5.5, -3)

SWEP.CorrectivePos = Vector(0.025, 0, 0.125)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 30
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1.25
SWEP.DropMagazineModel = "models/items/combine_rifle_cartridge01.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 2
SWEP.DropMagazineTime = 0.7

SWEP.BulletBodygroups = {
    [1] = {1, 0},
    [2] = {1, 1},
    [3] = {1, 2},
}

SWEP.DefaultBodygroups = "02"

// sounds

local path = "tacrp_extras/ar2/ar2_"

SWEP.Sound_Shoot = "^" .. path .. "fire3.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 120
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.EjectEffect = 0

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "fire1_M",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire1_M",
    ["fire3"] = "fire1_M",
    ["fire4"] = "fire1_M",
    ["fire5"] = "fire1_M",
    ["melee"] = "melee1",
    ["deploy"] = "unholster"
}

SWEP.DeployTimeMult = 1.25

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Receiver",
        Category = {"ar2_receiver"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
    },
    [2] = {
        PrintName = "Launcher",
        Category = {"ar2_launcher"},
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
    },
    [3] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_irifle.Clip_Out", path .. "rotate.wav")
addsound("tacint_irifle.Clip_In", path .. "magin.wav")
addsound("tacint_irifle.bolt_back", path .. "reload_rotate.wav")
addsound("tacint_irifle.bolt_forward", path .. "reload_push.wav")
addsound("tacint_irifle.deploy", path .. "deploy.wav")

SWEP.Func_Ammo = function(self, data)
    if self:GetCurrentFiremode() == 1 then
        data.set = "AR2AltFire"
        data.prio = 99
    end
end

function SWEP:DoProceduralIrons()
    return self:GetCurrentFiremode() == 1
end

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -6, -2),
    vm_ang = Angle(-3, 14, -5),
    t = 0.6,
    tmax = 0.6,
}

SWEP.NotShotgun = true
SWEP.AltfireChargeTime = 0.5
SWEP.AltfireAutofireCount = 15
SWEP.AltfireRadius = 10
SWEP.ShootEntForce = 1024
SWEP.AltfireRecoil = 0
SWEP.AltfireLifetime = 4
SWEP.AltfireMode = 0
SWEP.AltfireAmmoPerShot = 1
SWEP.AltfireGravity = false

SWEP.Func_Ammo = function(self, data)
    if self:GetCurrentFiremode() == 1 then
        data.set = "AR2AltFire"
        data.prio = 99
    end
end

local fade_color = Color(255, 255, 255, 64)
local warp_color = Color(200, 0, 255, 32)
local warpball_color = Color(125, 0, 200, 255)

local function try_ender_warp(self)
    local owner = self:GetOwner()
    local rocket = self:GetNWEntity("TacRP_EnderBall")
    local v = rocket:GetVelocity()

    local pos = rocket:GetPos()

    local tr = util.TraceHull({
        start = pos,
        endpos = pos,
        mins = Vector(-16, -16, 0),
        maxs = Vector(16, 16, 72),
        mask = MASK_PLAYERSOLID,
        filter = rocket
    })
    if tr.Hit then
        return false
    end

    local eff = EffectData()
    eff:SetOrigin(owner:GetPos())
    util.Effect("cball_explode", eff)

    owner:SetPos(pos)

    local ang = v:GetNormalized():Angle()
    ang.z = 0
    owner:SetEyeAngles(ang)
    owner:EmitSound("weapons/gauss/fire1.wav", 100, 110)

    if owner:Health() > 1 then
        local dmginfo = DamageInfo()
        dmginfo:SetDamage(math.min(20, owner:Health() - 1))
        dmginfo:SetAttacker(owner)
        dmginfo:SetInflictor(self)
        dmginfo:SetDamageType(DMG_DISSOLVE)
        dmginfo:SetDamagePosition(owner:GetPos())
        dmginfo:SetDamageForce(v)
        owner:TakeDamageInfo(dmginfo)
    end
    rocket:Fire("Explode", nil, 0)

    self:SetNWEntity("TacRP_EnderBall", NULL)
    if IsValid(rocket.EnderSprite) then SafeRemoveEntity(rocket.EnderSprite) end

    owner:ScreenFade(SCREENFADE.IN, warp_color, 0.25, 0)
    owner:SetVelocity(v * 2 / 3)

    return true
end

function SWEP:CombineAltfire(autofire)
    local owner = self:GetOwner()

    if not self:GetInfiniteAmmo() then
        if owner:GetAmmoCount("AR2AltFire") < self:GetValue("AltfireAmmoPerShot") then
            self:EmitSound(self:GetValue("Sound_DryFire"), 75, 100, 1, CHAN_ITEM)
            return
        end
        owner:RemoveAmmo(self:GetValue("AltfireAmmoPerShot"), "AR2AltFire")
    end

    local mode = self:GetValue("AltfireMode")
    if mode == 3 then
        local dir = self:GetShootDir(not autofire)
        local right = self:GetShootDir(not autofire):Up()
        local d = Lerp(self:GetSightAmount(), 6, 2)
        local l = self:GetValue("AltfireLifetime")
        dir:RotateAroundAxis(right, -d)
        for i = 1, 3 do
            self:CreateCombineBall(dir, l * math.Rand(0.85, 1.15))
            dir:RotateAroundAxis(right, d)
        end
    elseif mode == 2 then
        local rocket = self:CreateCombineBall()
        local trail = rocket:GetInternalVariable("m_pGlowTrail")
        if IsValid(trail) then
            trail:SetSaveValue("m_flLifeTime", 0.5)
            trail:Fire("ColorRedValue", 255)
            trail:Fire("ColorGreenValue", 255)
            trail:Fire("ColorBlueValue", 255)
            trail:Fire("ShowSprite")
        end
    elseif mode == 1 then
        local oldball = self:GetNWEntity("TacRP_EnderBall")
        if IsValid(oldball) then
            if autofire then
                if not try_ender_warp(self) then
                    self:EmitSound("common/wpn_denyselect.wav", 70, 90)
                    owner:ScreenFade(SCREENFADE.IN, warp_color, 0.1, 0)
                end
                return
            end
            oldball:Fire("Explode")
            if IsValid(oldball.EnderSprite) then SafeRemoveEntity(oldball.EnderSprite) end
        end
        local rocket = self:CreateCombineBall()
        local sprite = ents.Create("env_sprite")
        sprite:SetKeyValue("model", "effects/blueflare1.vmt")
        sprite:SetKeyValue("scale", 1)
        sprite:SetPos(rocket:GetPos())
        sprite:SetParent(rocket)
        sprite:SetRenderMode(RENDERMODE_GLOW)
        sprite:SetColor(warpball_color)
        sprite:Spawn()
        sprite:Activate()
        sprite:Fire("ShowSprite")
        rocket.EnderSprite = sprite
        local trail = rocket:GetInternalVariable("m_pGlowTrail")
        if IsValid(trail) then
            trail:SetSaveValue("m_flLifeTime", 1.5)
            trail:Fire("ColorRedValue", warpball_color.r)
            trail:Fire("ColorGreenValue", warpball_color.g)
            trail:Fire("ColorBlueValue", warpball_color.b)
            trail:Fire("ShowSprite")
        end

        self:SetNWEntity("TacRP_EnderBall", rocket)

        // ball exists as valid entity shortly after timing out, but we do not want to allow teleport at that point
        timer.Simple(self:GetValue("AltfireLifetime"), function()
            if IsValid(self) and self:GetNWEntity("TacRP_EnderBall") == rocket then self:SetNWEntity("TacRP_EnderBall", NULL) SafeRemoveEntity(sprite) end
        end)
    else
        self:CreateCombineBall()
    end


    owner:ScreenFade(SCREENFADE.IN, fade_color, 0.1, 0)
    if not autofire then
        self:EmitSound("weapons/irifle/irifle_fire2.wav", 100)
        owner:ViewPunch(Angle(math.Rand(-8, -12), math.Rand(-1, 1), 0))

        self:SetLastProceduralFireTime(CurTime())

        self:PlayAnimation("fire1", 0.5, false, idle)
        self:SetNextSecondaryFire(CurTime() + (mode == 1 and 0.25 or 1))
    else
        self:EmitSound("weapons/irifle/irifle_fire2.wav", 100, 100, 1, CHAN_ITEM)
    end

    if self:GetValue("AltfireRecoil") > 0 then
        owner:SetVelocity(self:GetShootDir(not autofire):Forward() * self:GetValue("AltfireRecoil") * -1)
    end
end

function SWEP:CreateCombineBall(dir, life)
    local rocket = ents.Create("prop_combine_ball")
    if not IsValid(rocket) then return end
    dir = dir or self:GetShootDir(true)

    rocket:SetPos(self:GetMuzzleOrigin())
    rocket:SetAngles(dir)
    rocket:SetOwner(self:GetOwner())
    rocket:SetSaveValue("m_flRadius", self:GetValue("AltfireRadius"))
    // rocket:SetSaveValue("m_bLaunched", true)
    rocket:SetSaveValue("m_bWeaponLaunched", true)
    // rocket:SetSaveValue("m_nMaxBounces", -1)

    rocket:Activate()
    rocket:Spawn()
    rocket:SetSaveValue("m_nState", 2) // STATE_THROWN
    rocket:GetPhysicsObject():SetMass(150)
    rocket:GetPhysicsObject():SetVelocity(dir:Forward() * self:GetValue("ShootEntForce"))
    rocket:Fire("Explode", nil, life or self:GetValue("AltfireLifetime"))

    if self:GetValue("AltfireGravity") then
        rocket:GetPhysicsObject():EnableGravity(true)
    end

    return rocket
end

SWEP.Hook_PreShoot = function(self)
    if self:GetCurrentFiremode() == 1 then
        if self:GetNextSecondaryFire() > CurTime() then return true end
        local owner = self:GetOwner()

        if self:GetValue("AltfireMode") == 1 and IsValid(self:GetNWEntity("TacRP_EnderBall")) then
            if try_ender_warp(self) then
                self:SetNextSecondaryFire(CurTime() + 1)
            else
                self:EmitSound("common/wpn_denyselect.wav", 70, 90)
                self:SetNextPrimaryFire(CurTime() + 0.08)
                self:SetNextSecondaryFire(CurTime() + 0.08)
            end
            return true
        end

        if not self:GetInfiniteAmmo() and owner:GetAmmoCount("AR2AltFire") < self:GetValue("AltfireAmmoPerShot") then
            if self:GetBlindFire() then
                self:PlayAnimation("blind_dryfire")
            else
                self:PlayAnimation("dryfire")
            end
            self:EmitSound(self:GetValue("Sound_DryFire"), 75, 100, 1, CHAN_ITEM)

            self:SetNextPrimaryFire(CurTime() + 0.5)
            self:SetNextSecondaryFire(CurTime() + 0.5)
            return true
        end

        local ct = self:GetValue("AltfireChargeTime")

        self:SetNextPrimaryFire(CurTime() + ct)
        self:SetNextSecondaryFire(CurTime() + ct)
        self:EmitSound("weapons/cguard/charging.wav", 75, 100)

        self:SetTimer(ct, function()
            self:CombineAltfire(false)
        end)

        return true
    end
end