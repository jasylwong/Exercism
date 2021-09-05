class BoutiqueInventory
  CHEAP_PRICE_MAX = 30

  def initialize(items)
    @items = items
  end

  def item_names
    items.map { |item| item[:name] }.sort
  end

  def cheap
    items.select { |item| item[:price] < CHEAP_PRICE_MAX }
  end

  def out_of_stock
    items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    items.find { |item| item[:name] == name }[:quantity_by_size]
  end

  def total_stock
    items.flat_map { |items| items[:quantity_by_size].values }.sum
  end

  private
  attr_reader :items
end
