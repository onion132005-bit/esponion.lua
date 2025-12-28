--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
local RunService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\17\216\36\246\249\49\219\35\198\249", "\156\67\173\74\165"));
local TweenService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\0\160\76\19\178\21\67\38\161\64\21\185", "\38\84\215\41\118\220\70"));
local UserInputService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\101\5\39\0\215\94\6\55\6\205\85\4\52\27\253\85", "\158\48\118\66\114"));
local LocalPlayer = Players.LocalPlayer;
local PlayerGui = LocalPlayer:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\155\40\17\47\118\183\220\190\45", "\155\203\68\112\86\19\197"));
local Camera = workspace.CurrentCamera;
local settings = {[LUAOBFUSACTOR_DECRYPT_STR_0("\85\213\57\235\104\113\226\240\74\212\49\244\84", "\152\38\189\86\156\32\24\133")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\239\95\168\81\210\86\170\67", "\38\156\55\199")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\187\117\115\63\55\125\233\87\169\115\127\45", "\35\200\29\28\72\115\20\154")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\10\183\222\200\161\37\58\28\172", "\84\121\223\177\191\237\76")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\168\94\198\183\22\81\35\196\169", "\161\219\54\169\192\90\48\80")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\76\81\16\17\76\67\13\8\70\70\5", "\69\41\34\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\157\207\219", "\75\220\163\183\106\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\7\169\155\18\215\3\184\135\50\221", "\185\98\218\235\87")]=true};
local colors = {[LUAOBFUSACTOR_DECRYPT_STR_0("\237\46\46\227\208\174\199\37", "\202\171\92\71\134\190")]=Color3.fromRGB(57, 255, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\207\41\133\48", "\232\73\161\76")]=Color3.fromRGB(255, 65, 65),[LUAOBFUSACTOR_DECRYPT_STR_0("\142\240\125\127\31\184\210\69\79\17\174\215\70", "\126\219\185\34\61")]=Color3.fromRGB(20, 20, 25),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\231\97\83\125\116\246\233\24", "\135\108\174\62\18\30\23\147")]=Color3.fromRGB(57, 255, 20),[LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\50\223\39\131\50\206\184", "\167\214\137\74\171\120\206\83")]=Color3.fromRGB(255, 255, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\191\245\42\73\199\131\130\253", "\199\235\144\82\61\152")]=Color3.fromRGB(150, 150, 150)};
local ScreenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\52\21\171\46\2\24\158\62\14", "\75\103\118\217"));
ScreenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\233\81\127\26\156\45\247\107\69\61", "\126\167\52\16\116\217");
ScreenGui.ResetOnSpawn = false;
ScreenGui.Parent = PlayerGui;
local function AddCorner(instance, radius)
	local corner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\7\3\143\166\23\249\218", "\156\168\78\64\224\212\121"));
	corner.CornerRadius = UDim.new(0, radius);
	corner.Parent = instance;
end
local function AddStroke(instance, color, thickness)
	local stroke = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\199\150\218\21\225\174\203", "\174\103\142\197"));
	stroke.Color = color;
	stroke.Thickness = thickness;
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	stroke.Parent = instance;
end
local function MakeDraggable(guiObject, onToggle)
	local dragging = false;
	local dragInput, dragStart, startPos;
	guiObject.InputBegan:Connect(function(input)
		if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
			dragging = true;
			dragStart = input.Position;
			startPos = guiObject.Position;
			local inputChangedCon;
			inputChangedCon = UserInputService.InputChanged:Connect(function(changeInput)
				if (dragging and (changeInput == input)) then
					local delta = changeInput.Position - dragStart;
					guiObject.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y);
				end
			end);
			local inputEndedCon;
			inputEndedCon = input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragging = false;
					inputChangedCon:Disconnect();
					inputEndedCon:Disconnect();
					if (((input.Position - dragStart).Magnitude < 5) and onToggle) then
						onToggle();
					end
				end
			end);
		end
	end);
end
local toggleMenuBtn = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\71\44\7\75\236\66\39\81", "\152\54\72\63\88\69\62"));
toggleMenuBtn.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\224\203\233\91\216\193\195\89\218\209", "\60\180\164\142");
toggleMenuBtn.Size = UDim2.new(0, 120, 0, 40);
toggleMenuBtn.Position = UDim2.new(0, 20, 0, 20);
toggleMenuBtn.BackgroundColor3 = colors.UI_Background;
toggleMenuBtn.TextColor3 = colors.UI_Accent;
toggleMenuBtn.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\125\109\53\105\10\200\60\109", "\114\56\62\101\73\71\141");
toggleMenuBtn.Font = Enum.Font.GothamBold;
toggleMenuBtn.TextSize = 16;
toggleMenuBtn.AutoButtonColor = false;
toggleMenuBtn.Parent = ScreenGui;
AddCorner(toggleMenuBtn, 8);
AddStroke(toggleMenuBtn, colors.UI_Accent, 2);
local MainFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\251\218\201\189", "\164\216\137\187"));
MainFrame.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\255\231\56\188\128\236\10\223\227", "\107\178\134\81\210\198\158");
MainFrame.Size = UDim2.new(0, 220, 0, 360);
MainFrame.Position = UDim2.new(0.5, -110, 0.5, -180);
MainFrame.BackgroundColor3 = colors.UI_Background;
MainFrame.BorderSizePixel = 0;
MainFrame.Visible = false;
MainFrame.Parent = ScreenGui;
AddCorner(MainFrame, 10);
AddStroke(MainFrame, colors.UI_Accent, 2);
MakeDraggable(MainFrame, nil);
MakeDraggable(toggleMenuBtn, function()
	MainFrame.Visible = not MainFrame.Visible;
end);
local TitleLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\12\11\154\210\134\57\12\135\202", "\202\88\110\226\166"));
TitleLabel.Size = UDim2.new(1, 0, 0, 40);
TitleLabel.BackgroundTransparency = 1;
TitleLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\204\1\139\248\196\146\92", "\170\163\111\226\151");
TitleLabel.TextColor3 = colors.UI_Accent;
TitleLabel.Font = Enum.Font.GothamBlack;
TitleLabel.TextSize = 22;
TitleLabel.Parent = MainFrame;
local Divider = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\55\34\179\53\75", "\73\113\80\210\88\46\87"));
Divider.Size = UDim2.new(1, -20, 0, 1);
Divider.Position = UDim2.new(0, 10, 0, 40);
Divider.BackgroundColor3 = Color3.fromRGB(50, 50, 60);
Divider.BorderSizePixel = 0;
Divider.Parent = MainFrame;
local ButtonContainer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\167\62\204\31\226", "\135\225\76\173\114"));
ButtonContainer.Size = UDim2.new(1, -20, 1, -80);
ButtonContainer.Position = UDim2.new(0, 10, 0, 50);
ButtonContainer.BackgroundTransparency = 1;
ButtonContainer.Parent = MainFrame;
local UIList = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\47\196\148\185\191\169\139\27\244\183\165\184", "\199\122\141\216\208\204\221"));
UIList.Padding = UDim.new(0, 8);
UIList.SortOrder = Enum.SortOrder.LayoutOrder;
UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center;
UIList.Parent = ButtonContainer;
local function createModernToggle(text, settingKey)
	local btnFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\8\228\90\227\185\201\31\254", "\150\205\189\112\144\24"));
	btnFrame.Size = UDim2.new(1, 0, 0, 35);
	btnFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 50);
	btnFrame.Text = "";
	btnFrame.AutoButtonColor = false;
	btnFrame.Parent = ButtonContainer;
	AddCorner(btnFrame, 6);
	local label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\129\167\88\40\137\19\21\41", "\112\69\228\223\44\100\232\113"));
	label.Size = UDim2.new(0.6, 0, 1, 0);
	label.Position = UDim2.new(0.05, 0, 0, 0);
	label.BackgroundTransparency = 1;
	label.Text = text;
	label.TextColor3 = colors.Text_Main;
	label.Font = Enum.Font.GothamSemibold;
	label.TextXAlignment = Enum.TextXAlignment.Left;
	label.TextSize = 14;
	label.Parent = btnFrame;
	local statusIndicator = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\242\13\6\222\179", "\230\180\127\103\179\214\28"));
	statusIndicator.Size = UDim2.new(0, 10, 0, 10);
	statusIndicator.Position = UDim2.new(0.9, -10, 0.5, -5);
	statusIndicator.BackgroundColor3 = (settings[settingKey] and colors.UI_Accent) or Color3.fromRGB(80, 80, 80);
	statusIndicator.Parent = btnFrame;
	AddCorner(statusIndicator, 10);
	btnFrame.MouseButton1Click:Connect(function()
		settings[settingKey] = not settings[settingKey];
		local targetColor = (settings[settingKey] and colors.UI_Accent) or Color3.fromRGB(80, 80, 80);
		TweenService:Create(statusIndicator, TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\174\4\92\77\227\83\239\153\11\91\101\235\77\239\158\86", "\128\236\101\63\38\132\33")]=targetColor}):Play();
	end);
end
local function createModeButton()
	local btnFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\152\172\9\80\148\254\219\184\166\31", "\175\204\201\113\36\214\139"));
	btnFrame.Size = UDim2.new(1, 0, 0, 35);
	btnFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 50);
	btnFrame.Text = "";
	btnFrame.AutoButtonColor = false;
	btnFrame.Parent = ButtonContainer;
	AddCorner(btnFrame, 6);
	local label = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\201\45\200\40\70\206\48\208", "\100\39\172\85\188"));
	label.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\129\121\187\133\63", "\83\205\24\217\224");
	label.Size = UDim2.new(1, 0, 1, 0);
	label.BackgroundTransparency = 1;
	label.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\210\192\204\48\188\133", "\93\134\165\173") .. settings.espTeamMode;
	label.TextColor3 = colors.UI_Accent;
	label.Font = Enum.Font.GothamBold;
	label.TextSize = 14;
	label.Parent = btnFrame;
	local modes = {LUAOBFUSACTOR_DECRYPT_STR_0("\159\254\205", "\30\222\146\161\162\90\174\210"),LUAOBFUSACTOR_DECRYPT_STR_0("\195\92\121\15\235\74\124\19", "\106\133\46\16"),LUAOBFUSACTOR_DECRYPT_STR_0("\125\46\118\241\67", "\32\56\64\19\156\58")};
	local index = 1;
	btnFrame.MouseButton1Click:Connect(function()
		index = index + 1;
		if (index > #modes) then
			index = 1;
		end
		settings.espTeamMode = modes[index];
		label.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\110\205\228\91\0\178", "\224\58\168\133\54\58\146") .. settings.espTeamMode;
	end);
end
createModernToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\116\87\88\233\112\148\199\46\106\102", "\107\57\54\43\157\21\230\231"), LUAOBFUSACTOR_DECRYPT_STR_0("\222\152\1\208\183\221\205\215\142\21", "\175\187\235\113\149\217\188"));
createModernToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\15\167\142\91\163\91\119\56\182", "\24\92\207\225\44\131\25"), LUAOBFUSACTOR_DECRYPT_STR_0("\88\219\183\91\51\116\76\219\180\69\28\117\95", "\29\43\179\216\44\123"));
createModernToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\142\209\47\91\253\247\33\65\184", "\44\221\185\64"), LUAOBFUSACTOR_DECRYPT_STR_0("\18\239\71\72\93\0\234\77", "\19\97\135\40\63"));
createModernToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\157\84\60\44\111\21\167\79\39\58\33\50\171", "\81\206\60\83\91\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\93\163\223\101\11\202\94\176\79\165\211\119", "\196\46\203\176\18\79\163\45"));
createModernToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\139\42\113\9\100\207\253\185\33\123\12\55", "\143\216\66\30\126\68\155"), LUAOBFUSACTOR_DECRYPT_STR_0("\185\192\2\220\233\170\217\228\185", "\129\202\168\109\171\165\195\183"));
createModernToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\17\80\56\207\158\56\231\49\93\37\203", "\134\66\56\87\184\190\116"), LUAOBFUSACTOR_DECRYPT_STR_0("\47\57\6\172\53\234\50\48\46", "\85\92\81\105\219\121\139\65"));
createModeButton();
local footer = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\182\72\81\80\222\255\182\92", "\191\157\211\48\37\28"));
footer.Size = UDim2.new(1, 0, 0, 20);
footer.Position = UDim2.new(0, 0, 1, -25);
footer.BackgroundTransparency = 1;
footer.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\251\26\226\70\122\208\17\253\19\52\142\76", "\90\191\127\148\124");
footer.TextColor3 = Color3.fromRGB(100, 100, 100);
footer.Font = Enum.Font.SourceSansBold;
footer.TextSize = 12;
footer.Parent = MainFrame;
local espFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\93\180\30\56\122\141\43\20\108\148", "\119\24\231\78"));
if not espFolder then
	espFolder = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\164\34\169\78\217\82", "\113\226\77\197\42\188\32"), workspace);
	espFolder.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\31\37\196\154\56\28\241\182\46\5", "\213\90\118\148");
end
local ESPObjects = {};
local function createESPForPlayer(plr)
	if ESPObjects[plr] then
		return;
	end
	local highlight = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\115\39\179\94\65\82\41\188\66", "\45\59\78\212\54"));
	highlight.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\53\101\179\163\143\41\165\252\25\81\139\159", "\144\112\54\227\235\230\78\205");
	highlight.Adornee = nil;
	highlight.FillTransparency = 0.75;
	highlight.OutlineTransparency = 0.5;
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
	highlight.Parent = espFolder;
	local line = nil;
	pcall(function()
		line = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\159\33\1\249", "\59\211\72\111\156\176"));
		line.Thickness = 1.5;
		line.Visible = false;
	end);
	local laser = nil;
	pcall(function()
		laser = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\142\237\40", "\77\46\231\131"));
		laser.Thickness = 1.5;
		laser.Visible = false;
	end);
	local text = nil;
	pcall(function()
		text = Drawing.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84", "\32\218\52\214"));
		text.Size = 16;
		text.Center = true;
		text.Outline = true;
		text.Color = Color3.new(1, 1, 1);
		text.Visible = false;
	end);
	ESPObjects[plr] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\102\30\54\160\253\185\66\82\90", "\58\46\119\81\200\145\208\37")]=highlight,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\133\62\169", "\86\75\236\80\204\201\221")]=line,[LUAOBFUSACTOR_DECRYPT_STR_0("\94\64\100\128\236", "\235\18\33\23\229\158")]=laser,[LUAOBFUSACTOR_DECRYPT_STR_0("\100\191\217\175", "\219\48\218\161")]=text};
end
local function removeESPForPlayer(plr)
	local obj = ESPObjects[plr];
	if not obj then
		return;
	end
	if obj.Highlight then
		obj.Highlight:Destroy();
	end
	if obj.Line then
		obj.Line:Remove();
	end
	if obj.Laser then
		obj.Laser:Remove();
	end
	if obj.Text then
		obj.Text:Remove();
	end
	ESPObjects[plr] = nil;
end
local function isFriendly(plr)
	if (not LocalPlayer.Team or not plr.Team) then
		return false;
	end
	return LocalPlayer.Team == plr.Team;
end
local function FixInvisibility(char)
	for _, part in pairs(char:GetChildren()) do
		if part:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\198\112\111\76\235\78\242\240", "\128\132\17\28\41\187\47")) then
			if (part.Transparency >= 0.9) then
				part.Transparency = 0.5;
			end
		end
	end
end
local function updateESP()
	if not settings.espEnabled then
		for plr, obj in pairs(ESPObjects) do
			if obj.Highlight then
				obj.Highlight.Enabled = false;
			end
			if obj.Line then
				obj.Line.Visible = false;
			end
			if obj.Laser then
				obj.Laser.Visible = false;
			end
			if obj.Text then
				obj.Text.Visible = false;
			end
		end
		return;
	end
	for _, plr in pairs(Players:GetPlayers()) do
		if (plr ~= LocalPlayer) then
			local char = plr.Character;
			if char then
				if not ESPObjects[plr] then
					createESPForPlayer(plr);
				end
			elseif ESPObjects[plr] then
				local obj = ESPObjects[plr];
				if obj.Highlight then
					obj.Highlight.Enabled = false;
				end
				if obj.Line then
					obj.Line.Visible = false;
				end
				if obj.Laser then
					obj.Laser.Visible = false;
				end
				if obj.Text then
					obj.Text.Visible = false;
				end
			end
		end
	end
	for plr, obj in pairs(ESPObjects) do
		local char = plr.Character;
		if (not char or not settings.espEnabled) then
			if obj.Highlight then
				obj.Highlight.Enabled = false;
			end
			if obj.Line then
				obj.Line.Visible = false;
			end
			if obj.Laser then
				obj.Laser.Visible = false;
			end
			if obj.Text then
				obj.Text.Visible = false;
			end
			continue;
		end
		local hum = char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\41\39\11\59\83\14\59\2", "\61\97\82\102\90"));
		local root = char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\132\59\166\74\201\88\23\13\158\33\164\95\247\86\12\29", "\105\204\78\203\43\167\55\126")) or char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\145\165\49\13\28", "\49\197\202\67\126\115\100\167")) or char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\2\75\207\44\146\98\81\37\72\208", "\62\87\59\191\73\224\54"));
		if (hum and (hum.Health <= 0)) then
			if obj.Highlight then
				obj.Highlight.Enabled = false;
			end
			if obj.Line then
				obj.Line.Visible = false;
			end
			if obj.Laser then
				obj.Laser.Visible = false;
			end
			if obj.Text then
				obj.Text.Visible = false;
			end
			continue;
		end
		local isTeammate = isFriendly(plr);
		local show = false;
		if (settings.espTeamMode == LUAOBFUSACTOR_DECRYPT_STR_0("\198\14\246", "\169\135\98\154")) then
			show = true;
		elseif ((settings.espTeamMode == LUAOBFUSACTOR_DECRYPT_STR_0("\237\101\45\81\243\55\196\210", "\168\171\23\68\52\157\83")) and isTeammate) then
			show = true;
		elseif ((settings.espTeamMode == LUAOBFUSACTOR_DECRYPT_STR_0("\209\127\240\160\60", "\231\148\17\149\205\69\77")) and not isTeammate) then
			show = true;
		end
		if not show then
			if obj.Highlight then
				obj.Highlight.Enabled = false;
			end
			if obj.Line then
				obj.Line.Visible = false;
			end
			if obj.Laser then
				obj.Laser.Visible = false;
			end
			if obj.Text then
				obj.Text.Visible = false;
			end
			continue;
		end
		local teamColor = (isTeammate and colors.Friendly) or colors.Enemy;
		local localRoot = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\168\178\202\250\89\240\137\163\245\244\88\235\176\166\213\239", "\159\224\199\167\155\55"));
		if obj.Highlight then
			if settings.showHighlight then
				FixInvisibility(char);
			end
			obj.Highlight.Adornee = char;
			obj.Highlight.FillColor = teamColor;
			obj.Highlight.OutlineColor = teamColor;
			obj.Highlight.Enabled = settings.showHighlight;
		end
		if (localRoot and root) then
			local pos, onScreen = Camera:WorldToViewportPoint(root.Position);
			local localPos, localOnScreen = Camera:WorldToViewportPoint(localRoot.Position);
			if not onScreen then
				if obj.Line then
					obj.Line.Visible = false;
				end
				if obj.Text then
					obj.Text.Visible = false;
				end
				if obj.Laser then
					obj.Laser.Visible = false;
				end
				continue;
			end
			if obj.Line then
				obj.Line.Visible = settings.showLines;
				if settings.showLines then
					obj.Line.Color = teamColor;
					obj.Line.From = Vector2.new(localPos.X, localPos.Y);
					obj.Line.To = Vector2.new(pos.X, pos.Y);
				end
			end
			if obj.Laser then
				obj.Laser.Visible = settings.showLaser;
				if settings.showLaser then
					local originPart = char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\194\227\44\215\229\199\51\192\228\252", "\178\151\147\92")) or char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\184\242\94\33\29", "\26\236\157\44\82\114\44")) or root;
					if originPart then
						local laserStart = originPart.Position;
						local laserDir = originPart.CFrame.LookVector;
						local laserLen = 30;
						local laserEnd = laserStart + (laserDir * laserLen);
						local startPos2D, startOnScreen = Camera:WorldToViewportPoint(laserStart);
						local endPos2D_V3, endOnScreen = Camera:WorldToViewportPoint(laserEnd);
						if (endPos2D_V3.Z > 0) then
							obj.Laser.Color = teamColor;
							obj.Laser.From = Vector2.new(startPos2D.X, startPos2D.Y);
							obj.Laser.To = Vector2.new(endPos2D_V3.X, endPos2D_V3.Y);
							obj.Laser.Visible = true;
						else
							obj.Laser.Visible = false;
						end
					end
				end
			end
			if obj.Text then
				obj.Text.Visible = settings.showName or settings.showDistance;
				if obj.Text.Visible then
					local dist = math.floor((localRoot.Position - root.Position).Magnitude);
					local txt = "";
					if settings.showName then
						txt = plr.Name;
					end
					if settings.showDistance then
						txt = txt .. "\n[" .. dist .. LUAOBFUSACTOR_DECRYPT_STR_0("\39\19", "\59\74\78\181");
					end
					obj.Text.Text = txt;
					obj.Text.Color = teamColor;
					obj.Text.Position = Vector2.new(pos.X, pos.Y - 40);
				end
			end
		end
	end
end
Players.PlayerRemoving:Connect(function(plr)
	removeESPForPlayer(plr);
end);
RunService.RenderStepped:Connect(updateESP);
