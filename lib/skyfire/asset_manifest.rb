module Skyfire
  class AssetManifest
    def self.manifest
      rev_manifest_path = 'public/assets/rev-manifest.json'
      if File.exists?(rev_manifest_path)
        @manifest ||= JSON.parse(File.read(rev_manifest_path))
      end
    end

    def self.stylesheet_path(url)
      if AssetManifest.manifest
        url += ".css" unless url.end_with?(".css")
        AssetManifest.manifest[url] || url
        "/assets/#{url}"
      else
        url
      end
    end

    def self.javascript_path(url)
      if AssetManifest.manifest
        url += ".js" unless url.end_with?(".js")
        AssetManifest.manifest[url] || url
        "/assets/#{url}"
      else
        url
      end
    end

    def self.asset_path(url)
      if AssetManifest.manifest
         AssetManifest.manifest[url] || url
         "/assets/#{url}"
      else
        url
      end
    end
  end
end