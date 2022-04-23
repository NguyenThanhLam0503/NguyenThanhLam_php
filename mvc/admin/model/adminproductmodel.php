<?php
class AdminProductModel extends AdminModel{
    protected $table='nguyenthanhlam_product';
    protected $field=['productName','Alias','catId','brandId','Image','trash','status','Detail','Price','salePrice'];
    protected $key='productId';
    //Cac function can thiet
    public function productList($limit,$offset){
        //Lay danh sach sp
        $data['products']=$this->getAllLimit(['trash'=>0],$limit,$offset);
        //Tinh tong so sp
        $totalRecords=count($this->getAll(['trash'=>0]));
        //Chuan bi paging
        $data['paging']=new Paging('index.php?req=adminproduct/productList/',$totalRecords,$limit,$offset);
        return $data;
    }
    public function productListInTrash($limit,$offset){
        //Lay danh sach sp
        $data['products']=$this->getAllLimit(['trash'=>1],$limit,$offset);
        //Tinh tong so sp
        $totalRecords=count($this->getAll(['trash'=>1]));
        //Chuan bi paging
        $data['paging']=new Paging('index.php?req=adminproduct/productListInTrash/',$totalRecords,$limit,$offset);
        return $data;
    }
    public function productToggleTrash($productId)
    {
        if($this->toggle('trash',$productId))
        $_SESSION['msg']="Thực hiện thành công";
        else
        $_SESSION['msg']="Thực hiện thất bại";
        header("location:".BASE_URL."adminproduct/productList/".LIMIT."/0");
    }
    public function productToggleStatus($productId)
    {
        if($this->toggle('status',$productId))
        $_SESSION['msg']="Thực hiện thành công";
        else
        $_SESSION['msg']="Thực hiện thất bại";
        header("location:".BASE_URL."adminproduct/productList/".LIMIT."/0");
    }
    public function doAddProduct()
    {
        //Lấy dữ liệu sản phẩm mới
        $newpro['productName']=$_POST['inputProductName'];
        $newpro['Alias']=$_POST['inputAlias'];
        $newpro['catId']=$_POST['inputCatId'];
        $newpro['brandId']=$_POST['inputBrandId'];
        $newpro['Detail']=$_POST['inputDetail'];            
        $newpro['Price']=$_POST['inputPrice'];
        $newpro['salePrice']=$_POST['inputSalePrice'];
        $newpro['Image']=basename($_FILES['inputFileUpLoad']['name']);
        $newpro['trash']=0;
        $newpro['status']=$_POST['inputStatus'];

        //Tạo chuỗi alias
        $helper= new Helper;
        if($newpro['Alias']=='')
        $newpro['Alias']=$helper->to_alias($newpro['productName']);

        //Kiểm lỗi
        $_SESSION['msg']='';
        if ($newpro['Price']<$newpro['salePrice']) 
        {  
            $_SESSION['msg']='Giá sale phải nhỏ hơn giá bán!';
        }
        else
        {
            $uploadSuccess=$helper->doUpLoad('inputFileUpLoad');
            if ($uploadSuccess) 
            {
               if($this->insert($newpro))
               $_SESSION['msg']='Thêm sản phẩm thàn công!';
               else
               $_SESSION['msg']='Thêm sản phẩm thất bại!';
            }
        }
    }
    public function doUpdateProduct($productId)
    {
        $newpro['productName'] = $_POST['inputProductName'];
        $newpro['Alias'] = $_POST['inputAlias'];
        $newpro['catId'] = $_POST['inputCatId'];
        $newpro['brandId'] = $_POST['inputBrandId'];
        $newpro['Detail'] = $_POST['inputDetail'];
        $newpro['Price'] = $_POST['inputPrice'];
        $newpro['salePrice'] = $_POST['inputSalePrice'];
        $newpro['Image'] = basename($_FILES['inputFileUpLoad']['name']);
        $newpro['trash'] = 0;
        $newpro['status'] = $_POST['inputStatus'];



        
        $helper = new Helper;
        if ($newpro['Alias'] == '') $newpro['Alias'] = $helper->to_alias($newpro['productName']);
        $newpro['productName'];
        $_SESSION['msg'] = '';
        if ($newpro['Price'] < $newpro['salePrice'])
            $_SESSION['msg'] .= "Giá sale phải nhỏ hơn giá bán";
        else
        if ($_FILES['inputFileUpLoad']['name'] != '') {
            $_SESSION['msg'] = "file up lên: " . $_FILES['inputFileUpLoad']['name'];
            $uploadSuccess = $helper->doUpload('inputFileUpLoad');
            if ($uploadSuccess) {
                $newpro['Image'] = $_FILES['inputFileUpLoad']['name'];
                if ($this->update($newpro, $productId)) $_SESSION['msg'] .= 'Cập nhật sản phẩm thành công';
                else $_SESSION['msg'] .= 'Cập nhật thất bại';
                header("Location:" . BASE_URL . "adminProduct/productList");
                exit;
            }
        } else {
            if ($this->update($newpro, $productId))
                $_SESSION['msg'] .= 'Cập nhật sản phẩm thành công';
            else $_SESSION['msg'] .= 'Cập nhật thất bại';
            header("Location:" . BASE_URL . "adminProduct/productList");
            exit;
        }
    }
}
?>