local options = {
  wrap = false,          -- 行の折り返しを無効にする
  mouse = 'a',           -- マウスをすべてのモードで有効にする
  number = true,         -- 行番号を表示する
  swapfile = false,      -- スワップファイルの作成を無効にする
  clipboard = 'unnamed', -- クリップボードを unnamed に設定
  cursorline = true,     -- 現在の行にカーソルラインを表示する
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

