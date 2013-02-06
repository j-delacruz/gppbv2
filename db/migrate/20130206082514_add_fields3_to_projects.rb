class AddFields3ToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :ads_post_iaeb, :datetime
    add_column :projects, :pre_bid_conference, :datetime
    add_column :projects, :submission_bids, :datetime
  end
end
