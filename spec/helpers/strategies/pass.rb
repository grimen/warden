Warden::Strategies.add(:pass) do
  def authenticate!
    request.env['warden.spec.strategies'] ||= []
    request.env['warden.spec.strategies'] << :pass
    success!("Valid User", "The Success Strategy Has Accepted You") unless scope == :failz
  end
end
