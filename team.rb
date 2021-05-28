# クラス定義
class Team

  # インスタンスが持つ変数（値）
  attr_accessor :name, :win, :lose, :draw, :calc_win_rate, :show_team_result

  # インスタンスを初期化するための、特別なメソッド
  def initialize(name, win, lose, draw)
    @name = name
    @win = win
    @lose = lose
    @draw = draw
  end

  def calc_win_rate
    return (win.to_f/(win+lose))
  end
 
  # インスタンスが持つメソッド（処理）
  def show_team_result
    puts "#{self.name} #{self.win}勝 #{self.lose}敗 #{self.draw}分、勝率は #{self.calc_win_rate}です。"
  end
end

teams = []

teams << Team.new('Giants', 67, 45, 8)
teams << Team.new('Tigers', 60, 53, 8)
teams << Team.new('Drogons', 60, 55, 5)
teams << Team.new('Baysters', 56, 58, 6)
teams << Team.new('Carp', 52, 56, 12)
teams << Team.new('Swallows', 41, 69, 10)

teams.each do |team|
  team.show_team_result
end