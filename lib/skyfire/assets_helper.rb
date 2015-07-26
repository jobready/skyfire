module Skyfire
  module AssetsHelper
    extend ::ActiveSupport::Concern

    included do

      def stylesheet_link_tag(url, options={})
        url = Npm::Assets::AssetManifest.stylesheet_path(url)

        super(url, options)
      end

      def crossorigin_javascript_include_tag(url, options={})
        url = Npm::Assets::AssetManifest.javascript_path(url)

        super(url, options)
      end

      def image_tag(url, options={})
        url = AssetManifest.asset_path(url)

        super(url, options)
      end

      def image_path(url, options={})
        url = Npm::Assets::AssetManifest.asset_path(url)

        super(url, options)
      end

      def image_url(url, options={})
        url = Npm::Assets::AssetManifest.asset_path(url)

        super((ActionController::Base.asset_host || "") + url, options)
      end
    end
  end
end
