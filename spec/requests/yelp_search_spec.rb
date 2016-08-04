require_relative('../spec_helper')

describe 'Search tests', v2: true do
  env = ENV['ENV'] ? ENV['ENV'] : 'prod'
  let(:url) { CONFIG[env]['YELP_URL'] + CONFIG['YELP_SEARCH_API_PATH'] }
  let(:consumer_key) { CONFIG[env]['CONSUMER_KEY'] }
  let(:consumer_secret) { CONFIG[env]['CONSUMER_SECRET'] }
  let(:token) { CONFIG[env]['TOKEN'] }
  let(:token_secret) { CONFIG[env]['TOKEN_SECRET'] }

  before(:all) do
    # @request_helper = RequestHelper.new
    @logger = Logger.new(STDOUT)
    @logger.level = Logger::INFO
    # @consumer = OAuth::Consumer.new(:consumer_key, :consumer_secret, :site => CONFIG['YELP_URL'])
  end

  it 'by location and restaurant name' do
    client = Yelp::Client.new({ consumer_key: consumer_key,
                                consumer_secret: consumer_secret,
                                token: token,
                                token_secret: token_secret
                              })
    params = { term: 'indian',
               limit: 5,
               category_filter: 'burger'
    }

    locale = { lang: 'en' }
    response = client.search('Costa Mesa')
    print response.total
    print response.businesses[0].name
  end
end