-- This script reads the TSM Accounting saved variables
-- and outputs them as a python dictionary.
-- Outputs both sell_data and buy_data
--
-- Quasar Jarosz, 2013-07-08

require 'masterra_savedvariables/TradeSkillMaster_Accounting'


function print_data(data)

    for k in pairs(data) do
        print('"' .. k .. '": """' .. data[k] .. '""",')
    end
end


print "# coding: utf-8"

itemData = TradeSkillMaster_AccountingDB['factionrealm']['Alliance - Whisperwind']['itemData']
sell = itemData['sell']
buy = itemData['buy']


print "sell_data = {"
print_data(sell)
print "}"


print "buy_data = {"
print_data(buy)
print "}"
