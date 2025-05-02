-- EToH Autowin script, made by @qwirkzzy on Roblox, thanks :)
-- [[ services ]] --
local Players = game:GetService('Players')

-- [[ variables ]] --
local towersToAvoid = {
    'ToRoMW',
    'ToTHT',
    'ToBP',
    'ToCaV',
    'ToRT',
    'ToPB',
    'ToHR',
    'ToWWW',
    'ToEMP',
    'TT',
    'ToBT',
    'ToC',
    'ToCA',
    'ToDC',
    'ToDT',
    'ToEH',
    'ToFaCT',
    'ToHA',
    'ToIB',
    'ToIF',
    'ToMB',
    'ToPZ',
    'ToRER',
    'ToTL',
    'ToUH',
    'ToAAA',
    'ToAE',
    'ToBK',
    'ToEI',
    'ToFM',
    'ToHH',
    'ToSM',
    'ToSO',
    'ToTB',
    'ToTDA',
    'ToWF',
    'ToAR',
    'ToFN',
    'ToI',
    'ToIM',
    'ToMM',
    'ToNS',
    'ToUA',
    'ToAM',
    'ToCP',
    'ToCR',
    'ToDIE',
    'ToER',
    'ToGF',
    'ToJE',
    'ToRoMW',
    'ToTHT',
    'ToBP',
    'ToCaV',
    'ToRT',
    'PersistOBJs',
}

-- [[ function to return cuz yeh ]] --
return function(tower: string, time: number)
    local currentTower = tower or ''
    for _, towerz in pairs(workspace.Towers:GetChildren()) do
        if not table.find(towersToAvoid, towerz.Name) and not (tower and towerz.Name ~= currentTower) then
            local tpx = workspace.Teleporters:FindFirstChild(towerz.Name)
            if not tpx then
                warn('Invalid teleporter [x]')
                print(tpx, towerz)
            else
                local tpy = tpx:FindFirstChild('Teleporter')
                if not tpy then
                    warn('Invalid teleporter [y]')
                    print(tpy, towerz)
                else
                    local tpz = tpy:FindFirstChild('TPFRAME')
                    if not tpz then
                        warn('Invalid teleporter [z]')
                        print(tpz, towerz)
                    else
                        Players.LocalPlayer.Character:SetPrimaryPartCFrame(tpz.CFrame)
                        task.wait(0.75)

                        local tool1 = Instance.new('Tool')
                        tool1.Name = 'Toxic Wings'
                        tool1.Parent = Players.LocalPlayer.Character
                        task.wait(0.2)

                        local tool2 = Instance.new('Tool')
                        tool2.Name = 'Heavenly Orb'
                        tool2.Parent = Players.LocalPlayer.Character
                        task.wait(0.2)

                        local tool3 = Instance.new('Tool')
                        tool3.Name = 'Candy Cane Grappling Hook'
                        tool3.Parent = Players.LocalPlayer.Character
                        task.wait(0.2)

                        local tool4 = Instance.new('Tool')
                        tool4.Name = 'Heavenly Coil'
                        tool4.Parent = Players.LocalPlayer.Character
                        task.wait(1)
                        
                        local winpad
                        for _, p in pairs(workspace:FindFirstChild('WinPads', true):GetChildren()) do
                            if p:IsA('BasePart') and p.TowerId.Value == towerz.Name then
                                winpad = p
                            end
                        end
                        task.wait(time or 0)
                        if winpad then
                            Players.LocalPlayer.Character:SetPrimaryPartCFrame(winpad.CFrame)
                        end
                        task.wait(1)
                        Players.LocalPlayer.Character:SetPrimaryPartCFrame(workspace:FindFirstChild('RestartBrick', true).CFrame)
                        task.wait(1)
                    end
                end
            end
        end
    end
end
-- GGs! Again, made by qwirkz so please don't steal my script without crediting me kthx
