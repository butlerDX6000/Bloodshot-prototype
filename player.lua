-- BLOODSHOT PLAYER SYSTEM

local Player = {}

Player.Settings = {
    WalkSpeed = 8,
    SprintSpeed = 13,
    CrouchSpeed = 4,
    SlideSpeed = 18,
    JumpPower = 10,
    SlideDuration = 0.8
}

Player.State = {
    IsSprinting = false,
    IsCrouching = false,
    IsSliding = false,
    IsJumping = false
}

function Player.Crouch(enabled)
    Player.State.IsCrouching = enabled
    print("Crouching:", enabled)
end

function Player.Slide()
    if Player.State.IsSliding then
        return
    end

    Player.State.IsSliding = true
    Player.State.IsCrouching = false

    print("Slide started!")
end

function Player.Jump()
    if Player.State.IsJumping then
        return
    end

    Player.State.IsJumping = true
    print("Jump!")
end

function Player.Land()
    Player.State.IsJumping = false
end

return Player
