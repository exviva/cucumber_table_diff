def diff(table, expected)
  p table.raw
  p expected
  table.diff!(expected)
end

When /^my table looks like this:$/ do |table|
  @table = table
end

Then /^the diff should handle a single empty cell$/ do
  diff(@table, [['']])
end

Then /^the diff should handle two empty cells$/ do
  diff(@table, [['', '']])
end
