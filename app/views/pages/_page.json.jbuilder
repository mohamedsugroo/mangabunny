json.extract! page, :id, :title, :content, :legal, :normal_page, :add_to_footer, :add_to_sidemenu, :created_at, :updated_at
json.url page_url(page, format: :json)
