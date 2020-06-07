require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_has_readable_attributes
    # Tested on 2020-06-07
    assert_equal '070620', @enigma.today
  end

  def test_it_can_encrypt_messages
    message   = 'hello world'
    encrypted = 'keder ohulw'
    expected  = {encryption: encrypted, key: '02715', date: '040895'}

    assert_equal expected, @enigma.encrypt(message, '02715', '040895')
  end
end
