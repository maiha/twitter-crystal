require "json"

module Twitter
  class User
    json_mapping({
      contributors_enabled: {type: Bool},
      created_at: {type: Time, converter: TimeFormat.new("%a %b %d %T +0000 %Y")},
      default_profile: {type: Bool},
      default_profile_image: {type: Bool},
      favourites_count: {type: Int32},
      follow_request_sent: {type: Bool},
      followers_count: {type: Int32},
      following: {type: Bool},
      friends_count: {type: Int32},
      geo_enabled: {type: Bool},
      id: {type: Int32},
      is_translation_enabled: {type: Bool},
      is_translator: {type: Bool},
      lang: {type: String},
      listed_count: {type: Int32},
      location: {type: String},
      name: {type: String},
      needs_phone_verification: {type: Bool, nilable: true},
      notifications: {type: Bool},
      profile_background_color: {type: String},
      profile_background_image_url: {type: String},
      profile_background_image_url_https: {type: String},
      profile_background_tile: {type: Bool},
      profile_banner_url: {type: String, nilable: true},
      profile_image_url: {type: String},
      profile_image_url_https: {type: String},
      profile_link_color: {type: String},
      profile_location: {type: String, nilable: true},
      profile_sidebar_border_color: {type: String},
      profile_sidebar_fill_color: {type: String},
      profile_text_color: {type: String},
      profile_use_background_image: {type: Bool},
      # TODO: Figure out how to parse reserved keywords
      # protected: {type: Bool},
      screen_name: {type: String},
      status: {type: Twitter::Tweet, nilable: true},
      statuses_count: {type: Int32},
      suspended: {type: Bool, nilable: true},
      time_zone: {type: String, nilable: true},
      url: {type: String, nilable: true},
      utc_offset: {type: Int32, nilable: true},
      verified: {type: Bool},
    })
    def_equals id
  end
end
