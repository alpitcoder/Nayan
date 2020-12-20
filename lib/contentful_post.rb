class ContentfulPost
  class << self
    def configure
      client = Contentful::Client.new(
        space: '39ssl2xprxt8',
        access_token: 'VB9QIHlKoDbbhpKKdspK2-Se4Qu2QE0PZSUyOFQADCU',
        dynamic_entries: :auto
      )
      return client
    end
  end
end
