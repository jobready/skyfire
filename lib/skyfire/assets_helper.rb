module Skyfire
  module AssetsHelper
    extend ::ActiveSupport::Concern

    included do

      def stylesheet_link_tag(url, options={})
        url = Skyfire::AssetManifest.stylesheet_path(url)

        super(url, options)
      end

      def javascript_include_tag(url, options={})
        byebug
        url = Skyfire::AssetManifest.javascript_path(url)

        super(url, options)
      end

      def image_tag(url, options={})
        url = Skyfire::AssetManifest.asset_path(url)

        super(url, options)
      end

      def image_path(url, options={})
        url = Skyfire::AssetManifest.asset_path(url)

        super(url, options)
      end

      def image_url(url, options={})
        url = Skyfire::AssetManifest.asset_path(url)

        super((ActionController::Base.asset_host || "") + url, options)
      end
    end
  end
end
