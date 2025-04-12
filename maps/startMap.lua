return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.1",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 1,
  height = 1,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 9,
  nextobjectid = 7,
  properties = {
    ["darkness"] = false,
    ["music"] = "heroend"
  },
  tilesets = {
    {
      name = "darkCave",
      firstgid = 1,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 16,
      image = "../tilesets/darkCave.png",
      imagewidth = 256,
      imageheight = 80,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 80,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 1,
      height = 1,
      id = 1,
      name = "background",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 1,
      height = 1,
      id = 2,
      name = "forgeground",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 1,
      height = 1,
      id = 3,
      name = "forgeground2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "warp",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "testLevel1",
          type = "",
          shape = "rectangle",
          x = -507,
          y = -458,
          width = 25,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 486,
            ["destY"] = 225
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "ground",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = -510,
          y = -510,
          width = 1,
          height = 54,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = -481,
          y = -510,
          width = 1,
          height = 52,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = -509,
          y = -515,
          width = 29,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "enemies",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "npcs",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "event",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 5,
          name = "storyText1",
          type = "",
          shape = "rectangle",
          x = -512,
          y = -485,
          width = 41,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
