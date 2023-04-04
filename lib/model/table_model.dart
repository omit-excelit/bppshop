
class TableData {
  final String customerID;
  final String orderID;
  final String totalProducts;
  final String totalAmount;

  TableData(this.customerID, this.orderID, this.totalProducts, this.totalAmount);

  List<TableData> getTableData(){
    return [
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626"),
      TableData("#100470", "#100470", "2568848150", "৳252668123626")
    ];
  }
}