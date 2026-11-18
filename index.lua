-- BLOODSHOT
-- Main game initialization

local BloodShot = {
    Name = "BloodShot",
    Version = "0.1.0",
    Credits = 0,
    Status = "Starting"
}

function BloodShot.Start()
    print("================================")
    print("       BLOODSHOT ONLINE")
    print("================================")

    BloodShot.Status = "Ready"

    print("Version: " .. BloodShot.Version)
    print("Status: " .. BloodShot.Status)
end

BloodShot.Start()

return BloodShot
