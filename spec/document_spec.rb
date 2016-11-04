require "spec_helper"

describe BrotherEscp::Document do

  it "Accept sequences and translate them" do
    doc = BrotherEscp::Document.new
    doc.sequence(:HW_INIT)
    doc.sequence(:HW_SET_ESCP_MODE)
    doc.set_line_feed_size(8)
    doc.sequence(:CTL_FF)
    
    expect(doc.to_base64).to eql('G0AbaWEAGzMIDA==')
  end

end
