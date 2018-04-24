module ServiceHelpers
  def api
    @api ||= Service::Api.new
  end
end
