
helpers do
  def linker name, text
    %(<li><a href="#{name}">) + "#{text}" + %(</li>)
  end

  def secret_form
    seed = Random.new_seed
    %(<form action=)+%(") +'secret/'+seed.to_s+%(")+%(method="POST" id="myform">)
  end


  def dropdown_cheat category,text
    %(<option value=)+@category.to_s+%(>)+"#{text}"
  end

end
