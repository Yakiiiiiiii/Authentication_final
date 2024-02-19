import '../../../routes/routes.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../personalization/models/address_model.dart';
import '../../personalization/models/user_model.dart';
import '../models/banner_model.dart';
import '../models/brand_category_model.dart';
import '../models/brand_model.dart';
import '../models/cart_item_model.dart';
import '../models/cart_model.dart';
import '../models/category_model.dart';
import '../models/order_model.dart';
import '../models/product_attribute_model.dart';
import '../models/product_category_model.dart';
import '../models/product_model.dart';
import '../models/product_review_model.dart';
import '../models/product_variation_model.dart';

class TDummyData {
  /// -- Banners
  static final List<BannerModel> banners = <BannerModel>[
    BannerModel(imageUrl: TImages.banner1, targetScreen: TRoutes.order, active: false),
    BannerModel(imageUrl: TImages.banner2, targetScreen: TRoutes.cart, active: true),
    BannerModel(imageUrl: TImages.banner3, targetScreen: TRoutes.favourites, active: true),
    BannerModel(imageUrl: TImages.banner4, targetScreen: TRoutes.search, active: true),
    BannerModel(imageUrl: TImages.banner5, targetScreen: TRoutes.settings, active: true),
    BannerModel(imageUrl: TImages.banner6, targetScreen: TRoutes.userAddress, active: true),

  ];

  /// -- User
  static final UserModel user = UserModel(
    firstName: 'Naresh',
    lastName: 'Shah',
    email: 'deadlostdead6@gmail.com',
    phoneNumber: '9861875388',
    profilePicture: TImages.user,
    addresses: [
      AddressModel(
        id: '1',
        name: 'Naresh shah',
        phoneNumber: '+979861875388',
        street: '82356 Timmy Coves',
        city: 'South Liana',
        state: 'Maine',
        postalCode: '87665',
        country: 'Nepal',
      ),
      AddressModel(
        id: '6',
        name: 'John Doe',
        phoneNumber: '1234567890',
        street: '123 Main Street',
        city: 'New York',
        state: 'New York',
        postalCode: '10001',
        country: 'United States',
      ),

      AddressModel(
        id: '2',
        name: 'Alice Smith',
        phoneNumber: '+9876543210',
        street: '456 Elm Avenue',
        city: 'Los Angeles',
        state: 'California',
        postalCode: '90001',
        country: 'United States',
      ),

      AddressModel(
        id: '3',
        name: 'Krijan Thapa',
        phoneNumber: '9849285740',
        street: 'xyz street',
        city: 'Bhaktapur',
        state: 'Bagmati',
        postalCode: '48000',
        country: 'Nepal',
      ),

      AddressModel(
        id: '4',
        name: 'Maria Garcia',
        phoneNumber: '+5412345678',
        street: '789 Oak Road',
        city: 'Buenos Aires',
        state: 'Buenos Aires',
        postalCode: '1001',
        country: 'Argentina',
      ),

      AddressModel(
        id: '5',
        name: 'Liam Johnson',
        phoneNumber: '+447890123456',
        street: '10 Park Lane',
        city: 'London',
        state: 'England',
        postalCode: 'SW1A 1AA',
        country: 'United Kingdom',
      )
    ],
    username: '', id: '',
  );

  /// -- Cart
  static final CartModel cart = CartModel(
    cartId: '001',
    items: [
      CartItemModel(
        productId: '001',
        variationId: '1',
        quantity: 1,
        title: products[0].title,
        image: products[0].thumbnail,
        brandName: products[0].brand!.name,
        price: products[0].productVariations![0].price,
        selectedVariation: products[0].productVariations![0].attributeValues,
      ),
      CartItemModel(
        productId: '002',
        variationId: '',
        quantity: 1,
        title: products[1].title,
        image: products[1].thumbnail,
        brandName: products[1].brand!.name,
        price: products[1].price,
        selectedVariation: products[1].productVariations != null ? products[1].productVariations![1].attributeValues : {},
      ),
    ],
  );

  /// -- Order
  static final List<OrderModel> orders = [
    OrderModel(
        id: 'CWT0012',
        status: OrderStatus.processing,
        items: cart.items,
        totalAmount: 265,
        orderDate: DateTime(2023, 09, 1),
        deliveryDate: DateTime(2023, 09, 9)),
    OrderModel(
        id: 'CWT0025',
        status: OrderStatus.shipped,
        items: cart.items,
        totalAmount: 369,
        orderDate: DateTime(2023, 10, 2),
        deliveryDate: DateTime(2023, 10, 6)),
    OrderModel(
        id: 'CWT0152',
        status: OrderStatus.delivered,
        items: cart.items,
        totalAmount: 254,
        orderDate: DateTime(2023, 11, 3),
        deliveryDate: DateTime(2023, 11, 8)),
    OrderModel(
        id: 'CWT0265',
        status: OrderStatus.delivered,
        items: cart.items,
        totalAmount: 355,
        orderDate: DateTime(2023, 12, 20),
        deliveryDate: DateTime(2023, 12, 25)),
    OrderModel(
        id: 'CWT1536',
        status: OrderStatus.delivered,
        items: cart.items,
        totalAmount: 115,
        orderDate: DateTime(2023, 12, 25),
        deliveryDate: DateTime(2024, 01, 1)),
  ];

  /// -- List of all Categories
  static final List<CategoryModel> categories = [
    CategoryModel(id: '1', image: TImages.MarkerIcon, name: 'Marker', isFeatured: true),
    CategoryModel(id: '2', image: TImages.canIcon, name: 'can', isFeatured: true),
    CategoryModel(id: '3', image: TImages.clothIcon, name: 'Clothes', isFeatured: true),
    CategoryModel(id: '4', image: TImages.capIcon, name: 'Cap', isFeatured: true),
    CategoryModel(id: '5', image: TImages.OthersIcon, name: 'Others', isFeatured: true),
    //CategoryModel(id: '2', image: TImages.electronicsIcon, name: 'Electronics', isFeatured: true),
    //CategoryModel(id: '4', image: TImages.OthersIcon, name: 'others', isFeatured: true),
    //CategoryModel(id: '14', image: TImages.jeweleryIcon, name: 'Jewelery', isFeatured: true),

    ///subcategories
    ///subcategories of marker
    CategoryModel(id: '8', image: TImages.MarkerIcon, name: 'Krink Black Marker', parentId: '1', isFeatured: false),
    CategoryModel(id: '9', image: TImages.MarkerIcon, name: 'Magic ink Marker', parentId: '1', isFeatured: false),
    CategoryModel(id: '10', image: TImages.MarkerIcon, name: 'Sakura Matel Marker', parentId: '1', isFeatured: false),
    // subcategories of Others
    CategoryModel(id: '11', image: TImages.OthersIcon, name: 'Can Silencer', parentId: '5', isFeatured: false),
    CategoryModel(id: '12', image: TImages.OthersIcon, name: 'Gas Mask', parentId: '5', isFeatured: false),
    CategoryModel(id: '13', image: TImages.OthersIcon, name: 'Black Book', parentId: '5', isFeatured: false),
    //electronics
    //CategoryModel(id: '14', image: TImages.electronicsIcon, name: 'Laptop', parentId: '2', isFeatured: false),
   // CategoryModel(id: '15', image: TImages.electronicsIcon, name: 'Mobile', parentId: '2', isFeatured: false),
  //  subcategories of clothes
    CategoryModel(id: '16', image: TImages.clothIcon, name: 'Shirts', parentId: '3', isFeatured: false),
  ];

  /// -- List of all Brands
  static final List<BrandModel> brands = [
    BrandModel(id: '1', image: TImages.FlameLogo, name: 'Flame', productsCount: 265, isFeatured: true),
    BrandModel(id: '2', image: TImages.KrinkLogo, name: 'krink', productsCount: 95, isFeatured: true),
    BrandModel(id: '8', image: TImages.UniPaintLogo, name: 'Uni Paint', productsCount: 36, isFeatured: false),
    BrandModel(id: '9', image: TImages.MolotowLogo, name: 'Molotow', productsCount: 36, isFeatured: false),
    BrandModel(id: '5', image: TImages.PoscaLogo, name: 'Posca', productsCount: 16, isFeatured: true),
    BrandModel(id: '10', image: TImages.Austerlogo, name: 'Auster', productsCount: 36, isFeatured: false),
    BrandModel(id: '3', image: TImages.MontanaLogo, name: 'Montana', productsCount: 36, isFeatured: true),
    BrandModel(id: '4', image: TImages.OTRLogo, name: 'OTR', productsCount: 65, isFeatured: true),
    BrandModel(id: '6', image: TImages.DangLogo, name: 'Dang', productsCount: 36, isFeatured: true),
    //BrandModel(id: '7', image: TImages.electronicsIcon, name: 'Samsung', productsCount: 36, isFeatured: false),
  ];

  /// -- List of all Brand Categories
  static final List<BrandCategoryModel> brandCategory = [
    BrandCategoryModel(brandId: '1', categoryId: '1'),
    BrandCategoryModel(brandId: '1', categoryId: '8'),
    BrandCategoryModel(brandId: '1', categoryId: '9'),
    BrandCategoryModel(brandId: '1', categoryId: '10'),
    BrandCategoryModel(brandId: '2', categoryId: '1'),
    BrandCategoryModel(brandId: '2', categoryId: '8'),
    BrandCategoryModel(brandId: '2', categoryId: '9'),
    BrandCategoryModel(brandId: '2', categoryId: '10'),
    BrandCategoryModel(brandId: '3', categoryId: '1'),
    BrandCategoryModel(brandId: '3', categoryId: '8'),
    BrandCategoryModel(brandId: '3', categoryId: '9'),
    BrandCategoryModel(brandId: '3', categoryId: '10'),
    BrandCategoryModel(brandId: '4', categoryId: '1'),
    BrandCategoryModel(brandId: '4', categoryId: '8'),
    BrandCategoryModel(brandId: '4', categoryId: '9'),
    BrandCategoryModel(brandId: '4', categoryId: '10'),
    BrandCategoryModel(brandId: '5', categoryId: '15'),
    BrandCategoryModel(brandId: '5', categoryId: '2'),
    BrandCategoryModel(brandId: '10', categoryId: '2'),
    BrandCategoryModel(brandId: '10', categoryId: '14'),
    BrandCategoryModel(brandId: '6', categoryId: '3'),
    BrandCategoryModel(brandId: '6', categoryId: '16'),
    BrandCategoryModel(brandId: '7', categoryId: '2'),
    BrandCategoryModel(brandId: '8', categoryId: '5'),
    BrandCategoryModel(brandId: '8', categoryId: '11'),
    BrandCategoryModel(brandId: '8', categoryId: '12'),
    BrandCategoryModel(brandId: '8', categoryId: '13'),
    BrandCategoryModel(brandId: '9', categoryId: '5'),
    BrandCategoryModel(brandId: '9', categoryId: '11'),
    BrandCategoryModel(brandId: '9', categoryId: '12'),
    BrandCategoryModel(brandId: '9', categoryId: '13'),
  ];

  /// -- List of all Product Categories
  static final List<ProductCategoryModel> productCategories = [
    ProductCategoryModel(productId: '001', categoryId: '1'),
    ProductCategoryModel(productId: '001', categoryId: '8'),
    ProductCategoryModel(productId: '004', categoryId: '3'),
    ProductCategoryModel(productId: '002', categoryId: '3'),
    ProductCategoryModel(productId: '002', categoryId: '16'),
    ProductCategoryModel(productId: '003', categoryId: '3'),
    ProductCategoryModel(productId: '005', categoryId: '1'),
    ProductCategoryModel(productId: '005', categoryId: '8'),
    ProductCategoryModel(productId: '040', categoryId: '2'),
    ProductCategoryModel(productId: '040', categoryId: '15'),
    ProductCategoryModel(productId: '006', categoryId: '2'),
    ProductCategoryModel(productId: '007', categoryId: '4'),
    ProductCategoryModel(productId: '009', categoryId: '1'),
    ProductCategoryModel(productId: '009', categoryId: '8'),
    ProductCategoryModel(productId: '010', categoryId: '1'),
    ProductCategoryModel(productId: '010', categoryId: '8'),
    ProductCategoryModel(productId: '011', categoryId: '1'),
    ProductCategoryModel(productId: '011', categoryId: '8'),
    ProductCategoryModel(productId: '012', categoryId: '1'),
    ProductCategoryModel(productId: '012', categoryId: '8'),
    ProductCategoryModel(productId: '013', categoryId: '1'),
    ProductCategoryModel(productId: '013', categoryId: '8'),

    ProductCategoryModel(productId: '014', categoryId: '1'),
    ProductCategoryModel(productId: '014', categoryId: '9'),
    ProductCategoryModel(productId: '015', categoryId: '1'),
    ProductCategoryModel(productId: '015', categoryId: '9'),
    ProductCategoryModel(productId: '016', categoryId: '1'),
    ProductCategoryModel(productId: '016', categoryId: '9'),
    ProductCategoryModel(productId: '017', categoryId: '1'),
    ProductCategoryModel(productId: '017', categoryId: '9'),

    ProductCategoryModel(productId: '018', categoryId: '1'),
    ProductCategoryModel(productId: '018', categoryId: '10'),
    ProductCategoryModel(productId: '019', categoryId: '1'),
    ProductCategoryModel(productId: '019', categoryId: '10'),
    ProductCategoryModel(productId: '020', categoryId: '1'),
    ProductCategoryModel(productId: '020', categoryId: '10'),
    ProductCategoryModel(productId: '021', categoryId: '1'),
    ProductCategoryModel(productId: '021', categoryId: '10'),

    ProductCategoryModel(productId: '022', categoryId: '5'),
    ProductCategoryModel(productId: '022', categoryId: '11'),
    ProductCategoryModel(productId: '023', categoryId: '5'),
    ProductCategoryModel(productId: '023', categoryId: '11'),
    ProductCategoryModel(productId: '024', categoryId: '5'),
    ProductCategoryModel(productId: '024', categoryId: '11'),
    ProductCategoryModel(productId: '025', categoryId: '5'),
    ProductCategoryModel(productId: '025', categoryId: '11'),

    ProductCategoryModel(productId: '026', categoryId: '5'),
    ProductCategoryModel(productId: '026', categoryId: '12'),
    ProductCategoryModel(productId: '027', categoryId: '5'),
    ProductCategoryModel(productId: '027', categoryId: '12'),
    ProductCategoryModel(productId: '028', categoryId: '5'),
    ProductCategoryModel(productId: '028', categoryId: '12'),

    ProductCategoryModel(productId: '029', categoryId: '5'),
    ProductCategoryModel(productId: '029', categoryId: '13'),
    ProductCategoryModel(productId: '030', categoryId: '5'),
    ProductCategoryModel(productId: '030', categoryId: '13'),
    ProductCategoryModel(productId: '031', categoryId: '5'),
    ProductCategoryModel(productId: '031', categoryId: '13'),
    ProductCategoryModel(productId: '032', categoryId: '5'),
    ProductCategoryModel(productId: '032', categoryId: '13'),

    ProductCategoryModel(productId: '033', categoryId: '2'),
    ProductCategoryModel(productId: '033', categoryId: '14'),
    ProductCategoryModel(productId: '034', categoryId: '2'),
    ProductCategoryModel(productId: '034', categoryId: '14'),
    ProductCategoryModel(productId: '035', categoryId: '2'),
    ProductCategoryModel(productId: '035', categoryId: '14'),
    ProductCategoryModel(productId: '036', categoryId: '2'),
    ProductCategoryModel(productId: '036', categoryId: '14'),

    ProductCategoryModel(productId: '037', categoryId: '2'),
    ProductCategoryModel(productId: '037', categoryId: '15'),
    ProductCategoryModel(productId: '038', categoryId: '2'),
    ProductCategoryModel(productId: '038', categoryId: '15'),
    ProductCategoryModel(productId: '039', categoryId: '2'),
    ProductCategoryModel(productId: '039', categoryId: '15'),
    //040 after product 005

    ProductCategoryModel(productId: '008', categoryId: '2'),
  ];

  /// -- List of all Products
  static final List<ProductModel> products = [
    ProductModel(
      id: '001',
      title: 'Flame Black Marker',
      stock: 15,
      price: 5,
      isFeatured: true,
      thumbnail: TImages.productImage1,
      description: 'Black Flame Marker',
      brand: BrandModel(id: '1', image: TImages.FlameLogo, name: 'Flame', productsCount: 265, isFeatured: true),
      images: [TImages.productImage1, TImages.productImage1, TImages.productImage1, TImages.productImage1],
      salePrice: 4,
      sku: 'ABR4568',
      categoryId: '1',

       productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 134,
            salePrice: 122.6,
            image: TImages.productImage1,
            description: 'This is a Product description for Black Flame Marker.',
            attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '2', stock: 15, price: 132, image: TImages.productImage23, attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '3', stock: 0, price: 234, image: TImages.productImage23, attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '4', stock: 222, price: 232, image: TImages.productImage1, attributeValues: {'Color': 'Green', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '5', stock: 0, price: 334, image: TImages.productImage21, attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '6', stock: 11, price: 332, image: TImages.productImage21, attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
      ],
      productType: 'ProductType.variable',
    ),


    ProductModel(
      id: '002',
      title: 'Krink Marker',
      stock: 15,
      price: 10,
      isFeatured: true,
      thumbnail: TImages.productImage69,
      description:
      'This is a Product description for krink Marker. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: TImages.KrinkLogo, name: 'Krink'),
      images: [TImages.productImage68, TImages.productImage69, TImages.productImage5],
      salePrice: 8,
      sku: 'ABR4568',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '003',
      title: 'Aqua Color brush',
      stock: 15,
      price: 38000,
      isFeatured: false,
      thumbnail: TImages.productImage64,
      description:
      'This is a Product description for Aqua Color brush. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '6', image: TImages.DangLogo, name: 'Auster'),
      images: [TImages.productImage64, TImages.productImage65, TImages.productImage66, TImages.productImage67],
      salePrice: 30,
      sku: 'ABR4568',
      categoryId: '16',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '004',
      title: 'uniPosca Marker',
      stock: 15,
      price: 20,
      isFeatured: false,
      thumbnail: TImages.productImage4,
      description:
      'UniPosca Marker. There are more things that can be added but its just a demo and nothing else.',
      brand: BrandModel(id: '6', image: TImages.PoscaLogo, name: 'Posca'),
      images: [TImages.productImage4, TImages.productImage4, TImages.productImage4, TImages.productImage4],
      salePrice: 18,
      sku: 'ABR4568',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Red', 'Yellow', 'Green', 'Blue']),
        ProductAttributeModel(name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 34,
            price: 15,
            salePrice: 12,
            image: TImages.productImage63,
            description: 'This is a Product description 2 color High Visibility Vest XL',
            attributeValues: {'Color': 'Red', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '2', stock: 15, price: 132, image: TImages.productImage39, attributeValues: {'Color': 'Red', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '3', stock: 0, price: 234, image: TImages.productImage39, attributeValues: {'Color': 'Yellow', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '4',
            stock: 222,
            price: 232,
            image: TImages.productImage61,
            attributeValues: {'Color': 'Yellow', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '5', stock: 0, price: 334, image: TImages.productImage62, attributeValues: {'Color': 'Green', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '6', stock: 11, price: 332, image: TImages.productImage62, attributeValues: {'Color': 'Green', 'Size': 'EU 30'}),
        ProductVariationModel(
            id: '7', stock: 0, price: 334, image: TImages.productImage63, attributeValues: {'Color': 'Blue', 'Size': 'EU 30'}),
        ProductVariationModel(
            id: '8', stock: 11, price: 332, image: TImages.productImage63, attributeValues: {'Color': 'Blue', 'Size': 'EU 34'}),
      ],
      productType: 'ProductType.variable',
    ),

    ///Products after banner
    ProductModel(
      id: '005',
      title: 'Flame Metal Marker',
      stock: 15,
      price: 15,
      isFeatured: false,
      thumbnail: TImages.productImage10,
      description: 'Flame Metal Marker. Quality product, Long Lasting',
      brand: BrandModel(id: '1', image: TImages.FlameLogo, name: 'Flame', productsCount: 265, isFeatured: true),
      images: [TImages.productImage7, TImages.productImage8, TImages.productImage9, TImages.productImage10],
      salePrice: 15,
      sku: 'ABR4568',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Orange', 'Black', 'Brown']),
        ProductAttributeModel(name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 12.6,
            image: TImages.productImage8,
            description:
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            attributeValues: {'Color': 'Orange', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '2', stock: 15, price: 35, image: TImages.productImage7, attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '3', stock: 14, price: 34, image: TImages.productImage9, attributeValues: {'Color': 'Brown', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '4', stock: 13, price: 33, image: TImages.productImage7, attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '5', stock: 12, price: 32, image: TImages.productImage9, attributeValues: {'Color': 'Brown', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '6', stock: 11, price: 31, image: TImages.productImage8, attributeValues: {'Color': 'Orange', 'Size': 'EU 32'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '006',
      title: 'Protective Gloves',
      stock: 15,
      price: 750,
      isFeatured: false,
      thumbnail: TImages.productImage11,
      description: ' Molotow Black and gray Protective Gloves',
      brand: BrandModel(id: '4', image: TImages.MolotowLogo, name: 'Molotow'),
      images: [TImages.productImage11, TImages.productImage12, TImages.productImage13, TImages.productImage12],
      salePrice: 650,
      sku: 'ABR4568',
      categoryId: '3',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '007',
      title: 'NY fat cap',
      stock: 15,
      price: 1,
      isFeatured: false,
      thumbnail: TImages.productImage6,
      description:
      'This is a Product description for NY fat cap. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '7', image: TImages.Austerlogo, name: 'Auster'),
      salePrice: 1,
      sku: 'ABR4568',
      categoryId: '4',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    //008 after 040
    ProductModel(
      id: '009',
      title: 'krinkk 32 Marker',
      stock: 15,
      price: 400,
      isFeatured: false,
      thumbnail: TImages.productImage19,
      description:
      'This is a Product description for krinkk 32mm Marker. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.FlameLogo, name: 'Nike'),
      images: [TImages.productImage19, TImages.productImage20, TImages.productImage21, TImages.productImage22],
      salePrice: 200,
      sku: 'ABR4568',
      categoryId: '8',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '010',
      title: 'Nike Air Jordon 6 Orange',
      stock: 15,
      price: 400,
      thumbnail: TImages.productImage20,
      description:
      'This is a Product description for Nike Air Jordon. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.FlameLogo, name: 'Nike'),
      images: [TImages.productImage20, TImages.productImage23, TImages.productImage21, TImages.productImage22],
      // salePrice: 200,
      sku: 'ABR4568',
      categoryId: '8',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '011',
      title: 'Flame Can',
      stock: 15,
      price: 10,
      isFeatured: true,
      thumbnail: TImages.productImage21,
      description:
      'This is a Product description for Flame Can. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.FlameLogo, name: 'Flame'),
      images: [TImages.productImage21, TImages.productImage23, TImages.productImage23, TImages.productImage23],
      salePrice: 10,
      sku: 'ABR4568',
      categoryId: '2',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '012',
      title: 'Caparos Tag T-Shirt',
      stock: 15,
      price: 15,
      isFeatured: false,
      thumbnail: TImages.productImage22,
      description:
      'This is a Product description for Caparos T_Shirt. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.OTRLogo, name: 'OTR'),
      images: [TImages.productImage22, TImages.productImage24, TImages.productImage22, TImages.productImage24],
      salePrice: 11,
      sku: 'ABR4568',
      categoryId: '3',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '013',
      title: 'Molotow Can',
      stock: 15,
      price: 8,
      isFeatured: false,
      thumbnail: TImages.productImage52,
      description:
      'This is a Product description for Nike wild horse shoes. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '4', image: TImages.MolotowLogo, name: 'Molotow'),
      images: [TImages.productImage23, TImages.productImage20, TImages.productImage21, TImages.productImage22],
      salePrice: 8,
      sku: 'ABR4568',
      categoryId: '2',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue'])
      ],
      productType: 'ProductType.single',
    ),
    //Track suits
    ProductModel(
      id: '014',
      title: 'UniPaint Marker',
      stock: 15,
      price: 15,
      isFeatured: true,
      thumbnail: TImages.productImage26,
      description:
      'This is a Product description for UniPaint Marker. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.UniPaintLogo, name: 'UniPaint'),
      images: [TImages.productImage26, TImages.productImage26, TImages.productImage26, TImages.productImage26],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '1',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '015',
      title: 'Flame T-Shirt',
      stock: 15,
      price: 8,
      thumbnail: TImages.productImage42,
      description:
      'This is a Product description for Flame T-shirt. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.FlameLogo, name: 'Flame'),
      images: [TImages.productImage41, TImages.productImage40, TImages.productImage42, TImages.productImage41],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '3',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Black', 'Gray', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '016',
      title: 'Hall of Fame poster',
      stock: 15,
      price: 5,
      thumbnail: TImages.productImage53,
      description:
      'This is a Product description for Hall of Fame poster. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '4', image: TImages.MontanaLogo, name: 'Montana'),
      images: [TImages.productImage53, TImages.productImage53],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '5',
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '017',
      title: 'Nike Track suit Parrot Green',
      stock: 15,
      price: 350,
      thumbnail: TImages.productImage27,
      description:
      'This is a Product description for Nike Track suit Parrot Green. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.FlameLogo, name: 'Nike'),
      images: [TImages.productImage27, TImages.productImage24, TImages.productImage25, TImages.productImage26],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '9',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    //Sports Equipments
    ProductModel(
      id: '018',
      title: 'Flame Can',
      stock: 15,
      price: 12,
      isFeatured: true,
      thumbnail: TImages.productImage28,
      description:
      'This is a Product description for Football. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '1', image: TImages.FlameLogo, name: 'Flame'),
      images: [TImages.productImage28, TImages.productImage28],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '2',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue'])
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '019',
      title: 'Dope Dripper',
      stock: 15,
      price: 7,
      thumbnail: TImages.productImage25,
      description:
      'This is a Product description for Dope Dripper. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '10', image: TImages.Austerlogo, name: 'Auster'),
      images: [TImages.productImage25, TImages.productImage25, TImages.productImage25, TImages.productImage25],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '5',
      productAttributes: [
       // ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),

    
    ProductModel(
      id: '020',
      title: 'Cricket Bat',
      stock: 15,
      price: 25,
      thumbnail: TImages.productImage30,
      description:
      'This is a Product description for Cricket Bat. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: TImages.KrinkLogo, name: 'Adidas'),
      images: [TImages.productImage30, TImages.productImage29, TImages.productImage28, TImages.productImage31],
      // salePrice: 400,
      sku: 'ABR4568',
      categoryId: '10',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '021',
      title: 'Tennis Racket',
      stock: 15,
      price: 54,
      thumbnail: TImages.productImage31,
      description:
      'This is a Product description for Tennis Racket. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: TImages.KrinkLogo, name: 'Adidas'),
      images: [TImages.productImage31, TImages.productImage29, TImages.productImage30, TImages.productImage28],
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '10',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),

    ///Furniture
    //bedroom
    ProductModel(
      id: '022',
      title: 'Pure Wooden Bed',
      stock: 15,
      price: 950,
      isFeatured: true,
      thumbnail: TImages.productImage32,
      description:
      'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
      brand: BrandModel(id: '8', image: TImages.UniPaintLogo, name: 'Kenwood'),
      images: [TImages.productImage43, TImages.productImage44, TImages.productImage45, TImages.productImage46],
      salePrice: 600,
      sku: 'ABR4568',
      categoryId: '11',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Black', 'Grey', 'Brown']),
        ProductAttributeModel(name: 'Size', values: ['EU 30', 'EU 32', 'EU 34']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 36,
            salePrice: 12.6,
            image: TImages.productImage32,
            description:
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            attributeValues: {'Color': 'Brown', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '2', stock: 15, price: 35, image: TImages.productImage45, attributeValues: {'Color': 'Brown', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '3', stock: 14, price: 34, image: TImages.productImage46, attributeValues: {'Color': 'Brown', 'Size': 'EU 30'}),
        ProductVariationModel(
            id: '4', stock: 13, price: 33, image: TImages.productImage43, attributeValues: {'Color': 'Black', 'Size': 'EU 32'}),
        ProductVariationModel(
            id: '5', stock: 12, price: 32, image: TImages.productImage43, attributeValues: {'Color': 'Black', 'Size': 'EU 34'}),
        ProductVariationModel(
            id: '6', stock: 11, price: 31, image: TImages.productImage44, attributeValues: {'Color': 'Grey', 'Size': 'EU 32'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '023',
      title: 'Molotow Cap',
      stock: 15,
      price: 25,
      thumbnail: TImages.productImage33,
      description:
      'This is a Product description for Molotow cap.',
      brand: BrandModel(id: '8', image: TImages.UniPaintLogo, name: 'Molotow Cap'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '11',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '024',
      title: 'Caparso White tag T-shirt',
      stock: 15,
      price: 25,
      thumbnail: TImages.productImage22,
      description:
      'This is a Product description for Bedroom Sofa. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '8', image: TImages.UniPaintLogo, name: 'Kenwood'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '11',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '025',
      title: 'Wardrobe for Bedroom',
      stock: 15,
      price: 56,
      thumbnail: TImages.productImage3,
      description:
      'This is a Product description for Bedroom Wardrobe. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '8', image: TImages.UniPaintLogo, name: 'Kenwood'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '11',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    //Kitchen
    ProductModel(
      id: '026',
      title: 'Kitchen Counter',
      stock: 15,
      price: 1012,
      thumbnail: TImages.productImage4,
      description:
      'This is a Product description for Kitchen Counter. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: TImages.KrinkLogo, name: 'Adidas'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '12',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '027',
      title: 'Dinning Table',
      stock: 15,
      price: 1012,
      thumbnail: TImages.productImage37,
      description:
      'This is a Product description for Dinning Table. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: TImages.KrinkLogo, name: 'Adidas'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '12',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '028',
      title: 'Refrigerator',
      stock: 15,
      price: 987,
      thumbnail: TImages.productImage5,
      description:
      'This is a Product description for Refrigerator. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '2', image: TImages.KrinkLogo, name: 'Adidas'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '12',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    //Office
    ProductModel(
      id: '029',
      title: 'Office Chair Red',
      stock: 15,
      price: 150,
      thumbnail: TImages.productImage39,
      description:
      'This is a Product description for Office Chair. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '9', image: TImages.MolotowLogo, name: 'IKEA'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '13',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '030',
      title: 'Office Chair White',
      stock: 15,
      price: 140,
      thumbnail: TImages.productImage40,
      description:
      'This is a Product description for Office Chair. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '9', image: TImages.MolotowLogo, name: 'IKEA'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '13',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '031',
      title: 'Office Desk Red',
      stock: 15,
      price: 360,
      thumbnail: TImages.productImage41,
      description:
      'This is a Product description for Office Desk. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '9', image: TImages.MolotowLogo, name: 'IKEA'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '13',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '032',
      title: 'Office Desk brown',
      stock: 15,
      price: 400,
      thumbnail: TImages.productImage42,
      description:
      'This is a Product description for Office Desk. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '9', image: TImages.MolotowLogo, name: 'IKEA'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '13',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),

    ///Electronics
    //Laptops
    ProductModel(
      id: '033',
      title: 'Acer Laptop RAM 8gb to 16gb 512gb to 2tb',
      stock: 15,
      price: 950,
      isFeatured: true,
      thumbnail: TImages.productImage6,
      description:
      'This is a Product description for Acer Laptop. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '10', image: TImages.Austerlogo, name: 'Acer'),
      images: [TImages.productImage6, TImages.productImage6, TImages.productImage6, TImages.productImage6],
      salePrice: 800,
      sku: 'ABR4568',
      categoryId: '14',
      productAttributes: [
        ProductAttributeModel(name: 'Ram', values: ['6', '8', '16']),
        ProductAttributeModel(name: 'SSD', values: ['512', '1 tb', '2 tb']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 400,
            salePrice: 350,
            image: TImages.productImage7,
            description:
            'This is a Product description for Acer Laptop. There are more things that can be added but i am just practicing and nothing else.',
            attributeValues: {'Ram': '6', 'hard': '512'}),
        ProductVariationModel(
            id: '2', stock: 15, price: 450, image: TImages.productImage7, attributeValues: {'Ram': '8', 'hard': '512'}),
        ProductVariationModel(
            id: '3', stock: 14, price: 470, image: TImages.productImage7, attributeValues: {'Ram': '8', 'hard': '1 tb'}),
        ProductVariationModel(
            id: '4', stock: 13, price: 500, image: TImages.productImage7, attributeValues: {'Ram': '16', 'hard': '512'}),
        ProductVariationModel(
            id: '5', stock: 12, price: 650, image: TImages.productImage7, attributeValues: {'Ram': '16', 'hard': '1 tb'}),
        ProductVariationModel(
            id: '6', stock: 11, price: 800, image: TImages.productImage7, attributeValues: {'Ram': '16', 'hard': '2 tb'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '034',
      title: 'Acer Laptop 6gb 1tb',
      stock: 15,
      price: 400,
      thumbnail: TImages.productImage8,
      description:
      'This is a Product description for Acer Laptop. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '10', image: TImages.Austerlogo, name: 'Acer'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '14',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '035',
      title: 'Acer Laptop 6gb 500Gb',
      stock: 15,
      price: 400,
      thumbnail: TImages.productImage9,
      description:
      'This is a Product description for Acer Laptop. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '10', image: TImages.Austerlogo, name: 'Acer'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '14',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '036',
      title: 'Acer Laptop 4gb 500Gb',
      stock: 15,
      price: 400,
      thumbnail: TImages.productImage50,
      description:
      'This is a Product description for Acer Laptop. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '10', image: TImages.Austerlogo, name: 'Acer'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '14',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    //Mobiles
    ProductModel(
      id: '037',
      title: 'Iphone 13 pro 512gb',
      stock: 15,
      price: 999,
      thumbnail: TImages.productImage51,
      description:
      'This is a Product description for Iphone. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '5', image: TImages.PoscaLogo, name: 'Apple'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '15',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '038',
      title: 'Iphone 14 pro 512gb',
      stock: 15,
      price: 999,
      thumbnail: TImages.productImage10,
      description:
      'This is a Product description for Iphone. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '5', image: TImages.PoscaLogo, name: 'Apple'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '15',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '039',
      title: 'Iphone 14 white 512gb',
      stock: 15,
      price: 999,
      thumbnail: TImages.productImage11,
      description:
      'This is a Product description for Iphone. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '5', image: TImages.PoscaLogo, name: 'Apple'),
      // salePrice: 400,1
      sku: 'ABR4568',
      categoryId: '15',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
    ProductModel(
      id: '040',
      title: 'Iphone 12, 4 Colors 128gb and 256gb',
      stock: 15,
      price: 950,
      isFeatured: true,
      thumbnail: TImages.productImage12,
      description:
      'This is a Product description for Iphone 12. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '5', image: TImages.PoscaLogo, name: 'Apple'),
      images: [TImages.productImage12, TImages.productImage12, TImages.productImage12, TImages.productImage12],
      salePrice: 800,
      sku: 'ABR4568',
      categoryId: '15',
      productAttributes: [
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue', 'Black']),
        ProductAttributeModel(name: 'Storage', values: ['128 gb', '256 gb']),
      ],
      productVariations: [
        ProductVariationModel(
            id: '1',
            stock: 16,
            price: 400,
            salePrice: 350,
            image: TImages.productImage13,
            description:
            'This is a Product description for Iphone 12. There are more things that can be added but i am just practicing and nothing else.',
            attributeValues: {'Color': 'Red', 'Storage': '128 gb'}),
        ProductVariationModel(
            id: '2',
            stock: 15,
            price: 450,
            image: TImages.productImage14,
            attributeValues: {'Color': 'Red', 'Storage': '256 gb'}),
        ProductVariationModel(
            id: '3',
            stock: 14,
            price: 470,
            image: TImages.productImage14,
            attributeValues: {'Color': 'Blue', 'Storage': '128 gb'}),
        ProductVariationModel(
            id: '4',
            stock: 13,
            price: 500,
            image: TImages.productImage14,
            attributeValues: {'Color': 'Blue', 'Storage': '256 gb'}),
        ProductVariationModel(
            id: '5',
            stock: 12,
            price: 650,
            image: TImages.productImage14,
            attributeValues: {'Color': 'Green', 'Storage': '128 gb'}),
        ProductVariationModel(
            id: '5',
            stock: 12,
            price: 650,
            image: TImages.productImage14,
            attributeValues: {'Color': 'Green', 'Storage': '256 gb'}),
        ProductVariationModel(
            id: '6',
            stock: 11,
            price: 800,
            image: TImages.productImage14,
            attributeValues: {'Color': 'Black', 'Storage': '128 gb'}),
        ProductVariationModel(
            id: '6',
            stock: 11,
            price: 800,
            image: TImages.productImage14,
            attributeValues: {'Color': 'Black', 'Storage': '256 gb'}),
      ],
      productType: 'ProductType.variable',
    ),
    ProductModel(
      id: '008',
      title: 'APPLE iPhone 8 (Black, 64 GB)',
      stock: 15,
      price: 480,
      isFeatured: true,
      thumbnail: TImages.productImage14,
      description:
      'This is a Product description for iphone 8. There are more things that can be added but i am just practicing and nothing else.',
      brand: BrandModel(id: '5', image: TImages.PoscaLogo, name: 'iphone 8'),
      images: [TImages.productImage15, TImages.productImage16, TImages.productImage15, TImages.productImage14],
      salePrice: 380,
      sku: 'ABR4568',
      categoryId: '4',
      productAttributes: [
        ProductAttributeModel(name: 'Size', values: ['EU34', 'EU32']),
        ProductAttributeModel(name: 'Color', values: ['Green', 'Red', 'Blue']),
      ],
      productType: 'ProductType.single',
    ),
  ];



  /// -- Sorting Filters for search
  static final sortingFilters = [
    SortFilterModel(id: '1', name: 'Name'),
    SortFilterModel(id: '2', name: 'Lowest Price'),
    SortFilterModel(id: '3', name: 'Most Popular'),
    SortFilterModel(id: '4', name: 'Highest Price'),
    SortFilterModel(id: '5', name: 'Newest'),
    SortFilterModel(id: '6', name: 'Most Suitable'),
  ];



  /// -- Product Reviews
  static final List<ProductReviewModel> productReviews = [
    ProductReviewModel(
      id: '01',
      userId: '001',
      userName: 'John Doe',
      rating: 4.5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: TImages.userProfileImage2,
      comment:
      'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
      companyComment:
      'Thank you for your kind words, John! We are delighted to hear about your smooth experience with the app. We always strive to offer an intuitive interface for our users. Stay tuned for more updates!',
    ),
    ProductReviewModel(
      id: '02',
      userId: '002',
      userName: 'Sophia Wilson',
      rating: 3.5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: TImages.userProfileImage1,
      comment:
      'I am genuinely impressed with the app design and the variety of products available. The filter and sort features have made shopping so much easier for me!',
      companyComment:
      'Thank you so much, Sophia! We are thrilled to hear you are enjoying the app and finding the features useful. Our goal is to make your shopping experience as efficient and pleasant as possible. Keep exploring, and happy shopping!',
    ),
    ProductReviewModel(
      id: '03',
      userId: '003',
      userName: 'Alex Brown',
      rating: 5,
      timestamp: DateTime.now(),
      companyTimestamp: DateTime.now(),
      userImageUrl: TImages.userProfileImage3,
      comment:
      'The app is pretty fast, and the product recommendations are on point! I would love to see more features in the future.',
      companyComment:
      'Thanks for the feedback, Alex! We are thrilled to hear you enjoyed the speed and recommendations. We are constantly working on introducing new features, so keep an eye out for the next update!',
    ),
  ];
}

class SortFilterModel {
  String id;
  String name;

  SortFilterModel({required this.id, required this.name});
}
