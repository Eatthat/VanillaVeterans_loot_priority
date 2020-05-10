BINDING_HEADER_DKP = "Vanilla Veterans Loot Priority";



GameTooltip:HookScript("OnTooltipSetItem", function(tooltip, ...)
  local itemname, itemlink = tooltip:GetItem()
  
  if itemlink then
	priority = search_for_item(itemlink:match("item:(%d+):"))
  
  end

  
  if priority then
  	prio = string.format("|c008aecffVanilla Veterans\n %s", priority)
  	tooltip:AddLine(prio)
  
end
end)

ItemRefTooltip:HookScript("OnTooltipSetItem", function(tooltip, ...)local itemname, itemlink = tooltip:GetItem()
  
  if itemlink then
	priority = search_for_item(itemlink:match("item:(%d+):"))
  
  end
  
  if priority then
  	prio = string.format("|c008aecffVanilla Veterans\n %s", priority)
  	tooltip:AddLine(prio)
	
  end
  end)