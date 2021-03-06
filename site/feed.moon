require "date"

release = (t) ->
  title = "version "..t.version
  desc = if t.changes
    leading = t.changes\match"^(%s*)" or ""
    simple_date = t.date\fmt "%B %d %Y"
    table.concat {
      leading .. "## ".. title .. " - " .. simple_date
      "\n\n"
      t.changes
    }
  else
    ""
  {
    title: title
    link: "http://leafo.net/aroma/#v" .. t.version
    date: t.date
    description: desc
    _release: t
  }

return {
  format: "markdown"
  title: "Aroma Changelog"
  link: "http://leafo.net/aroma/"
  description: "Aroma is a game engine for Native Client"

  release {
    version: "0.0.3"
    date: date 2012, 9, 3, 13, 06
    changes: [[
      * updated to Pepper 21
      * throw error when module can't be found
      * `module` and `package.seeall` work within the async scope instead of the global one
      * added `aroma.graphics.setLineWidth`, `Quad:flip`, `aroma.graphics.newImageFont`
      * `aroma.graphics.print` can now take a transformation
    ]]
  }

  release {
    version: "0.0.2"
    date: date 2012, 5, 14, 11, 23
    changes: [[
      * fixed broken default loader
      * unload all modules that have been required on `execute`
    ]]
  }

  release {
    version: "0.0.1"
    date: date 2012, 5, 13, 18, 53
    changes: [[
      Initial Release
    ]]
  }
}
