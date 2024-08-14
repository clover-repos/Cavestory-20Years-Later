return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.0",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 40,
  height = 30,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 10,
  nextobjectid = 226,
  properties = {
    ["background"] = "background2"
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
      tiles = {
        {
          id = 13,
          animation = {
            {
              tileid = 13,
              duration = 220
            },
            {
              tileid = 14,
              duration = 220
            },
            {
              tileid = 15,
              duration = 220
            }
          }
        },
        {
          id = 14,
          animation = {
            {
              tileid = 14,
              duration = 220
            },
            {
              tileid = 13,
              duration = 220
            },
            {
              tileid = 15,
              duration = 220
            }
          }
        },
        {
          id = 29,
          animation = {
            {
              tileid = 29,
              duration = 220
            },
            {
              tileid = 30,
              duration = 220
            },
            {
              tileid = 31,
              duration = 220
            }
          }
        },
        {
          id = 30,
          animation = {
            {
              tileid = 31,
              duration = 220
            },
            {
              tileid = 30,
              duration = 220
            },
            {
              tileid = 29,
              duration = 220
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
      height = 30,
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
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 49, 49, 50, 50, 34, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 49, 50, 50, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 0, 0, 0, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 0, 0, 0, 74, 74, 74, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 0, 0, 0, 0, 74, 74, 0, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 0, 0, 0, 0, 0, 74, 74, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 0, 0, 0, 18, 18, 17, 18, 17, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 40, 41, 0, 0, 0, 0, 0, 0, 0, 0,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 33, 34, 33, 34, 33, 33, 34, 74, 74, 74, 74, 74, 74, 74, 74, 0, 0, 0, 55, 56, 57, 0, 0, 0, 0, 0, 0, 0, 0,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 2, 50, 49, 50, 49, 49, 50, 74, 74, 74, 74, 74, 74, 74, 74, 49, 50, 49, 50, 49, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 11, 0, 74, 74, 74, 74, 74, 74, 74, 74, 49, 50, 49, 50, 49, 50, 49, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        0, 27, 0, 74, 74, 74, 74, 74, 74, 74, 74, 33, 34, 33, 34, 33, 34, 33, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 49, 50, 49, 50, 49, 50, 49, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74,
        74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74, 74
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
      height = 30,
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
        33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34,
        49, 50, 49, 50, 2, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50, 49, 50,
        33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 2, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50,
        33, 34, 33, 34, 33, 2, 33, 34, 33, 34, 2, 34, 33, 34, 2, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 2, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50,
        33, 34, 33, 2, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 2, 33, 34, 33, 34, 33, 2, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34, 33, 34,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50,
        33, 2, 33, 34, 3, 4, 65, 66, 66, 66, 66, 66, 65, 65, 65, 65, 66, 65, 66, 66, 66, 66, 66, 66, 66, 66, 65, 66, 65, 66, 28, 29, 33, 34, 33, 34, 33, 34, 33, 34,
        49, 50, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 29, 49, 50, 49, 50, 49, 50,
        3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 29, 33, 34, 33, 34,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 29, 49, 50,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 29,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1610612790, 0, 0, 0, 0, 0, 0, 0, 17, 18, 17, 18, 17, 18, 17, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        17, 18, 17, 18, 17, 18, 17, 18, 21, 22, 34, 14, 15, 15, 15, 14, 14, 15, 33, 34, 33, 34, 33, 34, 33, 34, 19, 20, 18, 17, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        33, 34, 33, 34, 33, 34, 33, 34, 49, 50, 49, 30, 31, 30, 31, 31, 31, 31, 49, 50, 50, 49, 50, 49, 50, 49, 50, 33, 34, 33, 34, 33, 19, 20, 18, 17, 18, 17, 18, 18,
        65, 66, 37, 50, 49, 50, 49, 50, 49, 50, 49, 30, 31, 30, 31, 30, 31, 31, 49, 50, 49, 50, 49, 50, 49, 50, 49, 49, 50, 49, 50, 50, 33, 34, 34, 33, 34, 33, 34, 34,
        17, 18, 53, 50, 49, 50, 49, 50, 49, 50, 49, 30, 31, 30, 31, 30, 30, 31, 49, 50, 49, 2, 49, 50, 49, 2, 49, 50, 2, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 34, 31, 30, 30, 30, 34, 34, 49, 50, 49, 50, 49, 2, 49, 50, 49, 12, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 50, 2, 2, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 2, 50, 49, 2, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50, 49, 50, 49, 50, 49, 2,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 2, 50, 49, 2, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 2, 50, 49, 50, 49, 50, 49, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 2, 49, 12,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50, 49, 2, 49, 50, 49, 50, 2, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50, 49, 50, 49, 12, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50, 49, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 50, 2, 2, 2, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50, 2, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 2, 2, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 2, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 2, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50,
        49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 2, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 40,
      height = 30,
      id = 4,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 18, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 20, 21, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
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
          id = 1,
          name = "oneway",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 239,
          width = 131,
          height = 3,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 453,
          y = 239,
          width = 28,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 529,
          y = 255,
          width = 33,
          height = 2,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 562,
          y = 255,
          width = 91,
          height = 2,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "polygon",
          x = 494.211,
          y = 212,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 55.7895, y = 44 },
            { x = 23.7105, y = 35 },
            { x = 2.78947, y = 27 }
          },
          properties = {}
        },
        {
          id = 67,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 174,
          width = 2,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 96,
          name = "",
          type = "",
          shape = "rectangle",
          x = 171,
          y = 224,
          width = 5,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 97,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 224,
          width = 128,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 108,
          name = "",
          type = "",
          shape = "polygon",
          x = 641,
          y = 208,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -161, y = -80 },
            { x = -158, y = -89 }
          },
          properties = {}
        },
        {
          id = 109,
          name = "",
          type = "",
          shape = "rectangle",
          x = 97,
          y = 129,
          width = 384,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 110,
          name = "",
          type = "",
          shape = "polygon",
          x = 96,
          y = 130,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -95, y = 45 },
            { x = -78.6559, y = 26 }
          },
          properties = {}
        },
        {
          id = 162,
          name = "",
          type = "",
          shape = "rectangle",
          x = 154,
          y = 226,
          width = 7,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 168,
          name = "",
          type = "",
          shape = "polygon",
          x = 416,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 39, y = 16 },
            { x = 0, y = 4 }
          },
          properties = {}
        },
        {
          id = 174,
          name = "",
          type = "",
          shape = "rectangle",
          x = 175,
          y = 224,
          width = 1,
          height = 55,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 181,
          name = "",
          type = "",
          shape = "polygon",
          x = 272,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 30, y = -16 },
            { x = 20, y = -2.15385 }
          },
          properties = {}
        },
        {
          id = 182,
          name = "",
          type = "",
          shape = "polygon",
          x = 247,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -26, y = 18 },
            { x = -16, y = 17 },
            { x = 4, y = 13 }
          },
          properties = {}
        },
        {
          id = 183,
          name = "",
          type = "",
          shape = "polygon",
          x = 227,
          y = 306,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -53, y = -29 },
            { x = -41.5686, y = -2 }
          },
          properties = {}
        },
        {
          id = 184,
          name = "",
          type = "",
          shape = "rectangle",
          x = 247,
          y = 288,
          width = 28,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 185,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 225,
          width = 1,
          height = 55,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = 218,
          y = 301,
          width = 14,
          height = 3,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 190,
          name = "oneway",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 240,
          width = 16,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 198,
          name = "",
          type = "",
          shape = "polygon",
          x = 171,
          y = 224,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -10, y = 2 },
            { x = -4, y = 4 }
          },
          properties = {}
        },
        {
          id = 199,
          name = "",
          type = "",
          shape = "polygon",
          x = 154,
          y = 226,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -23, y = 13 },
            { x = 0, y = 1 }
          },
          properties = {}
        },
        {
          id = 205,
          name = "",
          type = "",
          shape = "rectangle",
          x = 641,
          y = 207,
          width = 22,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 212,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 206,
          width = 3,
          height = 50,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 217,
          name = "",
          type = "",
          shape = "rectangle",
          x = 494,
          y = 239,
          width = 3,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 218,
          name = "",
          type = "",
          shape = "polygon",
          x = 494,
          y = 239,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -1, y = 1 },
            { x = -12, y = 1 },
            { x = -13, y = 0 },
            { x = -13, y = 2 },
            { x = 0, y = 2 }
          },
          properties = {}
        },
        {
          id = 220,
          name = "",
          type = "",
          shape = "rectangle",
          x = -1,
          y = 288,
          width = 51,
          height = 2,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 221,
          name = "",
          type = "",
          shape = "rectangle",
          x = 47,
          y = 242,
          width = 3,
          height = 47,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 222,
          name = "oneway",
          type = "",
          shape = "rectangle",
          x = -3,
          y = 256,
          width = 50,
          height = 1,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 223,
          name = "",
          type = "",
          shape = "rectangle",
          x = -1,
          y = 256,
          width = 2,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 225,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 237,
          width = 1,
          height = 21,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
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
          id = 211,
          name = "testLevel2",
          type = "door",
          shape = "rectangle",
          x = 479,
          y = 234,
          width = 20,
          height = 6,
          rotation = 0,
          visible = true,
          properties = {
            ["destX"] = 407,
            ["destY"] = 297
          }
        },
        {
          id = 224,
          name = "testLevel2",
          type = "door",
          shape = "rectangle",
          x = 18,
          y = 266,
          width = 12,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "environment",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 187,
          name = "",
          type = "",
          shape = "rectangle",
          x = 175,
          y = 226,
          width = 126,
          height = 81,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "enemies",
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
          id = 210,
          name = "",
          type = "",
          shape = "point",
          x = 236,
          y = 257,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
