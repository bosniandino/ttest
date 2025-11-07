local l0_InteriorCoords = vector3(87.04591, -347.932831, 40.9541359)
local l1n2_InteriorCoords = vector3(111.793472, -355.7309, 46.57288)

local EntitySets = {
    US = "int_h_polstation_us_jails",
    EU = "int_h_polstation_eu_jails",
    MetalDetectors = "int_h_polstation_metal_detectors",
    MetalDetectorsAlt = "int_h_polstation_metal_detectors_alternative"
}

CreateThread(function()
    -- Jail Interior (cells)
    local jailInteriorID = GetInteriorAtCoords(l0_InteriorCoords)
    if jailInteriorID ~= 0 then
        while not IsInteriorReady(jailInteriorID) do Wait(100) end

        local entitySet = EntitySets[Config.CellType]
        if entitySet then
            ActivateInteriorEntitySet(jailInteriorID, entitySet)
        else
            print("Invalid CellType in config. Use 'US' or 'EU'.")
        end
        RefreshInterior(jailInteriorID)
    end

    -- Lobby Interior (metal detectors or alternative)
    local lobbyInteriorID = GetInteriorAtCoords(l1n2_InteriorCoords)
    if lobbyInteriorID ~= 0 then
        while not IsInteriorReady(lobbyInteriorID) do Wait(100) end

        local metalSet = Config.EnableMetalDetectors and EntitySets.MetalDetectors or EntitySets.MetalDetectorsAlt
        ActivateInteriorEntitySet(lobbyInteriorID, metalSet)
        RefreshInterior(lobbyInteriorID)
    end
end)



local scenarioArea = {
    vector3(161.1557, -338.623749, 30.0),
    vector3(-1.07584524, -443.0, 70.0)
}

CreateThread(function()
    SetAmbientZoneStatePersistent("az_los_santos_construction_site_01", false, true)
    AddScenarioBlockingArea(
        scenarioArea[1].x, scenarioArea[1].y, scenarioArea[1].z,
        scenarioArea[2].x, scenarioArea[2].y, scenarioArea[2].z,
        false, true, true, true
    )
end)