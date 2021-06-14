# -*- encoding: utf-8 -*-
# stub: validators 3.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "validators".freeze
  s.version = "3.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nando Vieira".freeze]
  s.date = "2020-09-29"
  s.description = "Add some nice ActiveModel/ActiveRecord validators.".freeze
  s.email = ["fnando.vieira@gmail.com".freeze]
  s.homepage = "http://rubygems.org/gems/validators".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0".freeze)
  s.rubygems_version = "3.1.6".freeze
  s.summary = "Add some nice ActiveModel/ActiveRecord validators.".freeze

  s.installed_by_version = "3.1.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<activerecord>.freeze, [">= 0"])
    s.add_development_dependency(%q<aitch>.freeze, [">= 0"])
    s.add_development_dependency(%q<cpf_cnpj>.freeze, [">= 0"])
    s.add_development_dependency(%q<email_data>.freeze, [">= 0"])
    s.add_development_dependency(%q<minitest-utils>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_development_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry-meta>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<root_domain>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-fnando>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov-console>.freeze, [">= 0"])
    s.add_development_dependency(%q<simpleidn>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.4"])
    s.add_development_dependency(%q<sshkey>.freeze, [">= 0"])
    s.add_development_dependency(%q<whois>.freeze, [">= 0"])
    s.add_development_dependency(%q<whois-parser>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 0"])
    s.add_dependency(%q<aitch>.freeze, [">= 0"])
    s.add_dependency(%q<cpf_cnpj>.freeze, [">= 0"])
    s.add_dependency(%q<email_data>.freeze, [">= 0"])
    s.add_dependency(%q<minitest-utils>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<nokogiri>.freeze, [">= 0"])
    s.add_dependency(%q<pry-meta>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<root_domain>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-fnando>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov-console>.freeze, [">= 0"])
    s.add_dependency(%q<simpleidn>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.4"])
    s.add_dependency(%q<sshkey>.freeze, [">= 0"])
    s.add_dependency(%q<whois>.freeze, [">= 0"])
    s.add_dependency(%q<whois-parser>.freeze, [">= 0"])
  end
end
