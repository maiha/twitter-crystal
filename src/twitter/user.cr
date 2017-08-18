require "json"

module Twitter
  class User
    JSON.mapping({
      contributors_enabled: Bool,
      created_at: {type: Time, converter: Time::Format.new("%a %b %d %T +0000 %Y")},
      default_profile: Bool,
      default_profile_image: Bool,
      favourites_count: Int32,
      follow_request_sent: Bool,
      followers_count: Int32,
      following: Bool,
      friends_count: Int32,
      geo_enabled: Bool,
      id: Int64,
      is_translation_enabled: Bool,
      is_translator: Bool,
      lang: String,
      listed_count: Int32,
      location: String,
      name: String,
      needs_phone_verification: Bool?,
      notifications: Bool,
      profile_background_color: String,
      profile_background_image_url: String?,
      profile_background_image_url_https: String?,
      profile_background_tile: Bool,
      profile_banner_url: String?,
      profile_image_url: String?,
      profile_image_url_https: String?,
      profile_link_color: String,
      profile_location: String?,
      profile_sidebar_border_color: String,
      profile_sidebar_fill_color: String,
      profile_text_color: String,
      profile_use_background_image: Bool,
      protected: Bool,
      screen_name: String,
      status: Twitter::Tweet?,
      statuses_count: Int32,
      suspended: Bool?,
      time_zone: String?,
      url: String?,
      utc_offset: Int32?,
      verified: Bool
    })
    def_equals id
  end
end
