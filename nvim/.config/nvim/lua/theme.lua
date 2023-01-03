local dashboard = require('alpha.themes.dashboard')

local myHeaders = {
    {
        '⠀⠀⠀⠀⠀⢸⠓⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⢸⠀⠀⠑⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⢸⡆⠀⠀⠀⠙⢤⡷⣤⣦⣀⠤⠖⠚⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⣠⡿⠢⢄⡀⠀⡇⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠸⠷⣶⠂⠀⠀⠀⣀⣀⠀⠀⠀',
        '⢸⣃⠀⠀⠉⠳⣷⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠉⢉⡭⠋',
        '⠀⠘⣆⠀⠀⠀⠁⠀⢀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀',
        '⠀⠀⠘⣦⠆⠀⠀⢀⡎⢹⡀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⡀⣠⠔⠋⠀⠀⠀⠀',
        '⠀⠀⠀⡏⠀⠀⣆⠘⣄⠸⢧⠀⠀⠀⠀⢀⣠⠖⢻⠀⠀⠀⣿⢥⣄⣀⣀⣀⠀⠀',
        '⠀⠀⢸⠁⠀⠀⡏⢣⣌⠙⠚⠀⠀⠠⣖⡛⠀⣠⠏⠀⠀⠀⠇⠀⠀⠀⠀⢙⣣⠄',
        '⠀⠀⢸⡀⠀⠀⠳⡞⠈⢻⠶⠤⣄⣀⣈⣉⣉⣡⡔⠀⠀⢀⠀⠀⣀⡤⠖⠚⠀⠀',
        '⠀⠀⡼⣇⠀⠀⠀⠙⠦⣞⡀⠀⢀⡏⠀⢸⣣⠞⠀⠀⠀⡼⠚⠋⠁⠀⠀⠀⠀⠀',
        '⠀⢰⡇⠙⠀⠀⠀⠀⠀⠀⠉⠙⠚⠒⠚⠉⠀⠀⠀⠀⡼⠁⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⢧⡀⠀⢠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠙⣶⣶⣿⠢⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠉⠀⠀⠀⠙⢿⣳⠞⠳⡄⠀⠀⠀⢀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠹⣄⣀⡤⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    },
    {
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⠁⠈⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⠀⠀⠀⠀⠀⠀⠡⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠊⠀⠀⠀⠀⠀⠀⠀⠀⠱⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣷⣦⣄⣀⣀⣀⣀⣤⣤⣾⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠌⠡⡀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⢀⠊⠉⠉⠱⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠂⠀⠀⠐⡀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠠⠂⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⡠⠁⠀⠀⠀⠀⠀⠀⠘⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠁⠀⠀⠀⠀⠀⠀⠈⢆⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⡐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⠀⠀⠀⠀⠀⠀⠀⠀⡐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢦⠀⠀⠀⠀',
        '⠀⠀⠀⠜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢣⡀⠀⠀⠀⠀⠀⡜⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⡀⠀⠀',
        '⠀⢀⠎⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⡀⠀⠀⢀⣾⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣷⡀⠀',
        '⢠⣾⣤⣄⣀⣀⣀⣀⣀⣀⣀⣀⣀⣤⣤⣤⣤⣿⣿⡄⢠⣾⣿⣿⣿⣶⣤⣤⣤⣤⣤⣤⣤⣴⣿⣿⣿⣿⣿⡄',
    },
    {
        '⠒⠾⠿⣿⣿⡍⠹⣿⣶⣶⣶⣦⣤⣄⣤⣖⡛⢉⣡⣤⡴⠶⠶⢿⣿⣻⢷⣶⡶⠶⠛⠛⠋⠉⠉⠉⠉⠛⠻⣦⣶⣶⣖⣒⣒⣢⣤⣤⢤⣀',
        '⠀⠀⠀⠀⠉⠓⠢⣿⣿⣿⣿⣿⣍⡛⠎⠙⠻⢟⡷⠶⣶⣶⣤⣄⣀⣉⣿⣯⣄⣠⣤⣤⣶⠶⠶⠶⠶⢶⣶⣾⣿⣿⣿⣿⣿⠿⣫⣴⡿⠛',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣟⡃⠀⠀⠀⠀⠈⠉⠛⠿⢿⣿⣿⣿⣿⣶⣾⣭⣽⣶⣦⣠⣴⣞⣛⣉⣉⣉⣭⣿⣻⣥⣴⣾⡿⠋⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠻⢿⣫⣵⣷⣧⠆⠀⠀⠀⠀⠀⠀⠀⠈⠹⣿⣿⣿⣿⣛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⢀⣠⡇⠀⠀⠙⢿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⢀⡰⠉⠸⠀⠀⠀⠀⠀⠱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀',
        '⠀⠀⠀⠀⢠⠏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢿⣿⣿⣿⣿⣿⣿⣿⡠⠀⠀⠀',
        '⠀⠀⠀⢀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⠟⠁⠀⠘⣿⣻⣿⣿⣿⡿⠋⠀⠀⠀⠀',
        '⠀⠀⠀⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤⣤⣤⣤⣽⣿⣿⣿⣿⣥⣤⣤⣴⣶⣿⣿⣿⣿⣿⣿⡗⠀⠀⠀⠀',
        '⠀⠀⣠⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠉⠀⠀⠀⠀⠀',
        '⠀⣼⣿⣿⣿⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠃⠀⠀⠀⠀⠀⠀',
        '⢸⣿⣿⣿⣿⣿⣿⣦⡄⠀⠀⠀⣤⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠙⠛⠛⠛⠛⠛⠛⣿⣿⡟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣄⣉⣉⠙⠛⠛⠻⠿⠷⠶⠶⠶⠶⠶⠶⠶⠶⠶⢶⣾⣷⣏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣅⣀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⠉⣭⠖⠀⠀⠀⠀⠀',
        '⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢀⣉⣢⠄⠀⠀⠀⠀',
        '⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠧⣾⣭⡉⠀⠀⠀⠀⠀',
        '⠀⠀⠙⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
    },
    {
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⡄⣆⠄⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠂⠅⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⢾⢍⣋⣀⡨⠀⠀⠀⠀⠀⠀⡠⢲⠀⠔⠈⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⣦⠀⠾⣊⡾⣭⢷⢎⡞⡔⣧⠀⠀⠀⠀⠊⠀⠈⠀⣠⣤⣶⣦⠀⠒⠠⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠑⠇⠝⠓⠋⠃⠛⠂⢊⣨⣿⣧⢀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⢀⠊⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⣿⣿⣶⣤⣖⣲⣶⣾⣿⣿⣿⠟⠁⠀⣠⣶⣿⣿⣿⣿⣿⣿⡏⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⡿⡇⠈⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⠁⡇⠀⠀⠀⠠⢒⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠠⢜⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⢃⠊⠀⢀⠄⠀⠠⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠌⡠⠀⠁⢀⡀⠁⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠈⣿⣿⣿⡿⠟⠋⠉⠉⢉⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⣰⣾⣾⣿⣿⡟⣀⣀⣤⠐⠐⠀⠀',
        '⠀⠀⠀⠀⠀⠀⢹⠟⠁⠀⠀⠀⠀⠀⢸⠀⣾⣿⣿⣿⣿⣿⣿⣿⡿⢋⣴⣿⣿⠿⠟⣻⣿⣿⣿⡿⠋⠀⠀⠀',
        '⠀⠀⠀⢀⠀⠄⠂⠉⠀⠀⠀⠀⠀⠀⢸⠀⣿⠟⠁⣾⣿⣿⠿⢋⠔⠛⠋⠁⠀⠀⣼⣿⣿⣿⡟⠁⠀⠀⠀⠀',
        '⠀⠀⠨⠄⠀⠀⣀⣀⣀⠀⠀⠀⠀⠀⠘⠀⠃⠀⣼⣿⡫⠑⠈⠀⠀⠀⠀⠀⠀⠘⠁⢀⣼⣿⣶⡄⠀⠀⠀⠀',
        '⠀⠀⠀⢠⠁⠀⣿⣿⠏⠀⠀⠀⠀⣀⣄⠀⠀⠈⠁⢽⡇⠀⢠⣶⣦⡀⠀⠀⠀⠀⠀⠀⠠⢼⡏⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠈⡀⠀⠉⠁⠀⠀⠀⡠⠊⢸⣿⠀⠀⠀⠀⢿⣿⡄⠸⣿⣿⠃⠀⠀⠀⠀⢀⣀⠀⠀⠑⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⢡⠀⠀⠀⠀⠀⠈⠤⠌⠂⠀⠀⠀⠀⠀⣿⣿⣿⣄⠀⠀⠠⠀⠀⠀⠀⠻⣿⣿⡄⠀⠈⠄⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⢀⡀⠤⠄⠒⠻⠿⠿⠟⠀⠀⡇⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⢰⠀⠀⠀',
        '⠀⠀⢀⠒⡞⢶⡒⠠⢀⣀⠀⠄⠂⠁⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡈⠀⠀⠀',
        '⠀⠀⠀⠙⠂⠉⠀⠀⠀⠀⠀⠰⠀⡀⠀⠀⠀⠀⠀⡀⠄⠒⠀⠀⠈⠉⠓⠠⢀⡀⠀⠀⠀⣀⡤⠞⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢊⠀⠤⠄⠐⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠠⠭⠙⠛⠉⠀⠀⠀⠀⠀⠀',
    },
    {
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣘⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⡍⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢩⡿⠁⠈⠷⡄⠀⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⡈⢿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⠀⠀⠀⠀⢛⣄⠀⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⠀⢀⠄⣁⠀⡀⠀⠀⢻⣆⠀⠀⠀⠀⠀⠀⠀⠀⠐⢠⡀⠀⠀⡂⡀⠈⠋⢆⠀⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⠀⣰⡄⠨⠁⢄⠠⡐⢰⠟⢽⣦⠀⠀⠀⠀⠀⠀⠀⣠⡂⣰⡄⠌⠜⡐⡠⡐⢱⢧⠀⠀⠀⠀⠀',
        '⠀⠀⠀⠀⠀⣠⣴⠿⣙⣚⡥⡈⢤⣄⡽⣰⡿⣧⡀⠀⠀⠀⠀⢰⣝⢃⢬⡫⢢⡬⡿⣒⡂⢥⠎⣷⡀⠀⠀⠀',
        '⠀⠀⠀⠀⣜⣿⣾⡛⢏⢺⣷⢏⡽⣤⡿⣶⣲⣮⣳⡀⢀⠀⣴⣯⣶⣾⣿⣿⣾⡿⣯⣽⣐⡪⢩⣫⢷⡀⠀⠀',
        '⠀⠀⢀⣾⣿⣯⣿⣟⣿⣯⣯⣿⣿⣿⣾⣿⣿⣿⣯⡽⢁⣼⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣶⣿⣿⣧⣿⣹⡄⠀',
        '⣠⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣆',
    }
}

-- get random header image
math.randomseed(os.clock());
dashboard.section.header.val = (myHeaders[math.random(#(myHeaders))])

dashboard.section.header.opts = {
    position = "center",
}

dashboard.section.buttons.val = {
    dashboard.button( "c",  "📄 Create File      " , ":ene <BAR><CR>"),
    dashboard.button( "pp", "📂 Folder View      " , "<leader>pp"),
    dashboard.button( "sf", "🔎 Search for File  " , "<leader>sf"),
    dashboard.button( "sg", "🧲 Search by grep   " , "<leader>sg"),
}

local shortcuts = { "c", "pp", "sf", "sg", }

for i=1,#(dashboard.section.buttons.val) do
    dashboard.section.buttons.val[i].opts = {
        position = "center",
        width = 50,
        shortcut = shortcuts[i],
        cursor = 5,
        align_shortcut = "right",
    }

end

dashboard.section.footer = {
    { type = "text", val = "footer" },
}
dashboard.section.header.opts = {
    position = "center",
}

dashboard.config.layout = {
    { type = "padding", val = 2 },
    dashboard.section.header,
    { type = "padding", val = 2 },
    dashboard.section.buttons,
}

require'alpha'.setup(dashboard.config)
