require("bufferline").setup{
    options = {
        show_buffer_close_icons = false,
        offsets = {
            {
                filetype = "NvimTree",
                text = "",
                text_align = "center",
                separator = false,
            }   
        },
        separator_style = {"",""},
        show_close_icon = false
    },
    highlights = {
        offset_separator = {
            bg = "none"
        },
        fill = {
            bg = "none"
        },
        background = {
            bg = "none"
        },
        buffer_selected = {
            bg = "none"
        },
        buffer_visible = {
            bg = "none"
        },
        indicator_selected = {
            bg = "none"
            --fg = "#D19557"
        },
        indicator_visible = {
            bg = "none",
        }
    }
}
