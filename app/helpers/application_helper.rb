module ApplicationHelper

  # U.S State Selection
  US_STATES = [
      ['Alaska', 'AK'],
      ['Alabama', 'AL'],
      ['Arizona', 'AZ'],
      ['Arkansas', 'AR'],
      ['California', 'CA'],
      ['Colorado', 'CO'],
      ['Connecticut', 'CT'],
      ['Delaware', 'DE'],
      ['District of Columbia', 'DC'],
      ['Florida', 'FL'],
      ['Georgia', 'GA'],
      ['Hawaii', 'HI'],
      ['Idaho', 'ID'],
      ['Illinois', 'IL'],
      ['Indiana', 'IN'],
      ['Iowa', 'IA'],
      ['Kansas', 'KS'],
      ['Kentucky', 'KY'],
      ['Lousiana', 'LA'],
      ['Maine', 'ME'],
      ['Maryland', 'MD'],
      ['Massachusetts', 'MA'],
      ['Michigan', 'MI'],
      ['Minnesota', 'MN'],
      ['Mississippi', 'MS'],
      ['Missouri', 'MO'],
      ['Montana', 'MT'],
      ['Nebraska', 'NE'],
      ['Nevada', 'NV'],
      ['New Hampshire', 'NH'],
      ['New Jersey', 'NJ'],
      ['New Mexico', 'NM'],
      ['New York', 'NY'],
      ['North Carolina', 'NC'],
      ['North Dakota', 'ND'],
      ['Ohio', 'OH'],
      ['Oklahoma', 'OK'],
      ['Oregon', 'OR'],
      ['Pennsylvania', 'PA'],
      ['Rhode Island', 'RI'],
      ['South Carolina', 'SC'],
      ['South Dakota', 'SD'],
      ['Tennessee', 'TN'],
      ['Texas', 'TX'],
      ['Utah', 'UT'],
      ['Virginia', 'VA'],
      ['Vermont', 'VT'],
      ['Washington', 'WA'],
      ['Wisconsin', 'WI'],
      ['West Virginia', 'WV'],
      ['Wyoming', 'WY']
  ].freeze

  PARTIES = ["Democrat", "Republican", "Independent", "Green", "Undecided"].freeze

  def is_voter_provisional?(voter)
    if voter.provisional?
      content_tag(:span, "Provisional", class: 'badge badge-danger')
    else
      content_tag(:span, "Validated", class: "badge badge-success")
    end
  end

  def date_formatter(date)
    date.present? ? date.strftime("%m/%d/%Y") : "no date"
  end
end
