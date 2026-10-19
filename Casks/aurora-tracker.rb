cask "aurora-tracker" do
  version "2.0.0"
  sha256 "e6ffb337662e41e12d6c92d0c24048651c52a5113bbf758f35885665e117b26f"

  url "https://github.com/mtanneer/apps.macos.aurora-tracker-widget/releases/download/v#{version}/AuroraTracker-#{version}.zip"
  name "Aurora Tracker"
  desc "Aurora chance, cloud cover and desktop widget"
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
