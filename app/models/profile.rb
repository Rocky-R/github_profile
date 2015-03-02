class Profile
  def initialize
    @full_json = HTTParty.get("https://api.github.com/users/Rocky-R/repos",
     :headers => {
              "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
              "User-Agent" => ENV["GITHUB_USERNAME"]})
  end

  def repos
    @full_json
  end
end
