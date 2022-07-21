vim.cmd [[
  let s:guifontsize=6
  let s:guifont="Fira\\ Code\\ SemiBold"
  set guifont=Fira\ Code\ SemiBold:h13

  let g:neovide_refresh_rate=60
  let g:neovide_transparency=0.9
  let g:neovide_no_idle=v:false
  let g:neovide_fullscreen=v:false
  let g:neovide_cursor_animation_length=0.20
  let g:neovide_cursor_trail_length=0.5
  let g:neovide_cursor_antialiasing=v:true
  let g:neovide_cursor_vfx_mode = "railgun"
  let g:neovide_cursor_vfx_opacity=200.0
  let g:neovide_cursor_vfx_particle_lifetime=1.2
  let g:neovide_cursor_vfx_particle_density=7.0
  let g:neovide_cursor_vfx_particle_speed=10.0
  let g:neovide_cursor_vfx_particle_phase=1.5
  let g:neovide_cursor_vfx_particle_curl=1.0

  function! AdjustFontSize(amount)
      let s:guifontsize = s:guifontsize + a:amount
      execute "set guifont=" .. s:guifont .. ":h" .. s:guifontsize
  endfunction

  nnoremap <C-+> <cmd>call AdjustFontSize(+1)<cr>
  nnoremap <C--> <cmd>call AdjustFontSize(-1)<cr>
  call AdjustFontSize(0)
]]
