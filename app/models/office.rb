class Office < ActiveRecord::Base
  ALIASES = {
    pi:                 ["High Pi"],
    alpha:              ["High Alpha"],
    beta:               ["High Beta"],
    theta:              ["High Theta"],
    gamma:              ["High Gamma"],
    tau:                ["High Tau", "Assistant Tau"],
    iota:               ["High Iota"],
    rho:                ["High Rho"],
    kappa:              ["High Kappa"],
    delta:              ["High Delta", "Assistant Delta"],
    phi:                ["High Phi"],
    sigma:              ["High Sigma"],
    epsilon:            ["High Epsilon"],
    house_manager:      ["House Manager", "Assistant House Manager", "House Duty Manager"],
    ec:                 ["High Pi", "High Alpha", "High Beta", "High Tau", "First EC At-Large", "Second EC At-Large", "EC Alternate"],
    chapter_excellence: ["Chapter Excellence"],
    steward:            ["First Steward", "Second Steward"],
    house_duty_manager: ["House Duty Manager"],
    ifc:                ["Senior IFC Delegate", "Junior IFC Delegate"],
    sga:                ["SGA Representative"],
    co_jocks:           ["First Athletic Director", "Second Athletic Director"],
    greek_games:        ["First Greek Games Co-Chairman", "Second Greek Games Co-Chairman"],
    webmaster:          ["Webmaster"],
    historian:          ["Historian"]
  }

  has_many :terms
  belongs_to :advisor, class_name: "User"

  def current_officer
    terms.last.try(:officer)
  end
end
