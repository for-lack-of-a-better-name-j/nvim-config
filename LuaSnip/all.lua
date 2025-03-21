return {
  require("luasnip").snippet(
    -- A snippet that expands the trigger "hi" into the string "Hello, world!".
    {trig="hi"},
    {t("Hello, world!")}
  )
 ,

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  require("luasnip").snippet(
    { trig = "foo" },
    { t("Another snippet.") }
  ), 
  require("luasnip").snippet(
    {trig = "([A-Za-z])(%d)", regTrig =true},
    {t("nothing yet")}
  )
}
