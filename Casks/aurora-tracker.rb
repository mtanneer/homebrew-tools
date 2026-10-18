cask "aurora-tracker" do
  version "1.0.0"
  sha256 "00cb6b9cc774604e1b16372ddd92b0fa76b13ae2ee4a8577b16b9fc9ad414fff"

  url "https://github.com/mtanneer/apps.macos.aurora-tracker-widget/releases/download/v#{version}/AuroraTracker-#{version}.zip"
  name "Aurora Tracker"
  desc "Live NOAA Kp index, aurora outlook and desktop widget"
  homepage "https://github.com/mtanneer/apps.macos.aurora-tracker-widget"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "AuroraTracker.app"

  zap trash: [
    "~/Library/Containers/manas.projects.AuroraTracker",
    "~/Library/Containers/manas.projects.AuroraTracker.AuroraWidget",
    "~/Library/Group Containers/B768V573Z6.group.manas.projects.AuroraTracker",
  ]

  caveats <<~EOS
    Launch Aurora Tracker once so macOS registers the widget, then add it via
    right-click on the Desktop > Edit Widgets > Aurora Tracker.
  EOS
end
