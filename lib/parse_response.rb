class HttpResponseParser

  def initialize(file)
    @file = file

  end

  def response_code
    @file.split(' ')[1].to_i

  end

  def version
  @file.split(' ').first

  end

  def body

   array = @file.split('\n')
    length = array.length
    array[9..(length - 1)].join('')

  end

  def header
   @file.split('\n')


  end


end

