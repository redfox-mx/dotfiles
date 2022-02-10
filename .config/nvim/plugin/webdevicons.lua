require'nvim-web-devicons'.setup {
  override = {
    svg = {
      icon = '',
      color = '#FFB13B',
      cterm_color = '215',
      name = 'Svg',
    },
    ['.babelrc'] = {
      icon = '',
      color = '#cbcb41',
      cterm_color = '185',
      name = 'Babelrc',
    }
  },
  default = true;
}
