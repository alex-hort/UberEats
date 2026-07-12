//
//  HomeView.swift
//  UberEats
//
//  Created by Alexis Horteales Espinosa on 11/07/26.
//

import SwiftUI
import Kingfisher


struct HomeView: View {
    //add scrooll to
    @State private var scrollTo: String = "Pizzas"
    var body: some View {
        NavigationStack{
            ScrollViewReader{ value in
                ScrollView{
                    VStack{
                        HeaderView()
                        HeaderInfoView()
                        DeliveryPickupGroupOrderView()
                        FeeView()
                        AdsView()
                        FeacturesItemView()
                        MenuFoodView(scrollTo: $scrollTo)
                            .onChange(of: scrollTo){
                                withAnimation(.easeInOut){
                                    //set scrool here
                                    value.scrollTo(scrollTo, anchor: .top)
                                }
                            }
                        FoodMenuView()
                            .id("Pizzas")
                        DrinkMenuView()
                            .id("Drinks")
                    }
                }
                .background(Color.backgroundColor)
                .navigationBarTitleDisplayMode(.inline)
                .ignoresSafeArea()
            
            }
        }
        
    }
}


#Preview {
    HomeView()
}


struct HeaderView: View {
    var restaurantResponse: RestaurantResponse = restaurantData
    var body: some View {
        ZStack{
            //image cover
            KFImage(URL(string: restaurantResponse.coverUrl))
                .resizable()
                .scaledToFill()
                .frame(height: 150)
            
                //logo
            
            KFImage(URL(string: restaurantResponse.logoUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 85, height: 85)
                .overlay(Circle().stroke(.white, lineWidth: 2))
                .clipShape(Circle())
                .offset(x: 0, y: 130)
            
            //add button and icon
            HStack{
                Button{
                    
                }label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.all, 14)
                        .background(Color.black.opacity(0.4))
                        .clipShape(Circle())
                }
                Spacer()
                
                Button{
                    
                }label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.all, 14)
                        .background(Color.black.opacity(0.4))
                        .clipShape(Circle())
                }
                
                Button{
                    
                }label: {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.all, 14)
                        .background(Color.black.opacity(0.4))
                        .clipShape(Circle())
                }
                Button{
                    
                }label: {
                    Image(systemName: "ellipsis")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 4, height: 4)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding(.all, 20)
                        .background(Color.black.opacity(0.4))
                        .clipShape(Circle())
                }
            }
            .padding(.horizontal)
            
        }
    }
}
struct HeaderInfoView: View {
    var restaurantResponse: RestaurantResponse = restaurantData
    var body: some View {
        VStack(spacing: 0){
            Text(restaurantResponse.name)
                .font(.title2)
                .fontWeight(.semibold)
            HStack(spacing: 5){
                Text(restaurantResponse.rate)
                    Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 16, height: 16)
                Text("(\(restaurantResponse.totalRate)+) -")
                    .fontWeight(.regular)
                    .foregroundStyle(.black.opacity(0.9))
                Text("Uber One")
                    .foregroundStyle(Color.secondaryColor)
                Text("- \(restaurantResponse.distance)")
                    .foregroundStyle(.gray.opacity(0.8))
                    .fontWeight(.regular)
            }
            .font(.headline)
            
            //
            HStack(alignment: .top){
                Image(systemName: "takeoutbag.and.cup.and.straw")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 18, height: 18)
                    .padding(.top, 6)
                Text("8 min until closing. Orde quickly or consider hoosing anotheer option")
                    .fontWeight(.regular)
                    .foregroundStyle(.gray.opacity(0.9))
                    .multilineTextAlignment(.center)
            }
            
        }
        .padding(.top, 95)
    }
        
}
struct DeliveryPickupGroupOrderView: View {
    @State private var selecteOptions = "Delivery"
    var options = ["Delivery", "Pickup"]
    
    var body: some View {
        HStack{
            Picker("Options", selection: $selecteOptions){
                ForEach(options, id: \.self){
                    Text($0)
                }
               
            }
            .pickerStyle(SegmentedPickerStyle())
            .frame(width: UIScreen.main.bounds.width * 0.5)
            
            Spacer()
            
            //group order
            Button{
                //action here
                
            }label: {
                //layout
                HStack{
                    Image(systemName: "person.badge.plus")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 18, height: 18)
                        .foregroundStyle(.black)
                    Text("Group order")
                        .font(.footnote)
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 6)
                .background(Color.buttonBackgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        
        }
        .padding(.horizontal)
    }
}
struct FeeView: View {
    var body: some View {
        HStack{
            //content view
            VStack(spacing: 0){
                Text("US$0 Delivery Fee on US$15+")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.secondaryColor)
                HStack{
                    Text("Pricing and fees")
                        .foregroundStyle(.gray.opacity(0.9))
                    Image(systemName: "info.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 16, height: 16)
                    
                }
                
            }
            Spacer()
            
            VStack(spacing: 0){
                Text("10-20 mins")
                    .foregroundStyle(.black)
                Text("Delivery time")
                    .foregroundStyle(.gray.opacity(0.9))
            }
        }
        .font(.footnote)
        .padding(.all, 12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(.gray.opacity(0.3)))
        .padding(.horizontal)
        .padding(.top, 10)
    }
}
struct AdsView: View {
    var width = UIScreen.main.bounds.width * 0.8
    var adsDatas: [AdsResponse] = adsData
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack(spacing: 12){
                ForEach(adsDatas) { item in
                    Image(item.imgUlr)
                        .resizable()
                        .scaledToFill()
                        .frame(width: width, height: 130)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .clipped()
                }
            }
            
        }
        .padding(.leading, 12)
        .padding(.top, 10)
    }
}
struct FeacturesItemView: View {
    var featuresData: [MenuResponse] = featuredData
    var body: some View {
        VStack(spacing: 0){
            Text("Feactures items")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            //load data
            //add scroll and disable scroll
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack{
                    ForEach(featuresData.indices, id: \.self){ index in
                        var item = featuresData[index]
                        
                        VStack{
                            //image and badge info
                            ZStack(alignment: .bottomTrailing){
                                //image
                                KFImage(URL(string: item.imageUrl))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                
                                //add badge
                                Text("\(index+1) most liked")
                                    .font(.subheadline)
                                    .foregroundStyle(.white)
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 10)
                                    .background(Color.primaryColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 4))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.all, 10)
                                    .offset(x: 0, y: -100)
                                
                                Button{
                                    
                                }label: {
                                    ZStack{
                                        Circle()
                                            .fill(.white)
                                            .frame(width: 45, height: 45)
                                            Image(systemName: "plus")
                                            .fontWeight(.semibold)
                                        
                                            .foregroundStyle(.black)
                                    }
                                    .padding(.all, 8)
                                    
                                }
                                .shadow(radius: 10)
                            }
                            VStack(alignment: .leading){
                                Text(item.name)
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                Text("Priced by \(item.price)")
                                    .font(.body)
                                    .fontWeight(.regular)
                                
                                HStack{
                                    Image(systemName: "hand.thumbsup")
                                        .fontWeight(.semibold)
                                    Text("\(item.rate)% (\(item.totalRate))")
                                        .font(.body)
                                }
                                
                            }
                            .frame(width: 150)
                        }
                    }
                }
                .padding(.leading)
            }
        }
        
    }
}

struct MenuFoodView: View {
    @State private  var selectedTab = "Pizzas"
    var tabs = ["Pizzas", "Drinks"]
    @Namespace private var underlineNamespace
    @Binding var scrollTo: String
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 30){
                ForEach(tabs, id: \.self){ tab in
                    Button{
                        selectedTab = tab
                        scrollTo = tab
                    }label: {
                        Text(tab)
                            .font(.subheadline)
                            .foregroundStyle(selectedTab == tab ? .black : .gray)
                            .padding(.bottom, 14)
                            .overlay(
                                selectedTab == tab ?
                                Rectangle()
                            .frame(height: 5)
                            .foregroundStyle(.black)
                            .matchedGeometryEffect(id: "underline", in: underlineNamespace)
                                : nil ,alignment: .bottom
                                )
                    }
                }
            }
            .padding(.horizontal)
            .frame(height: 44, alignment: .leading)
        }
    }
}


struct FoodMenuView: View {
    //load pizz data
    var pizzaDatas: [MenuResponse] = pizzaMenuData
    var body: some View {
        LazyVStack{
            ForEach(pizzaDatas){item in
                VStack(spacing: 14){
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text(item.name)
                                .font(.headline)
                                .fontWeight(.semibold)
                            HStack(alignment: .top){
                                (item.isPriceAddOns == 1) ? Text("Priced by add-ons") : Text("Priced by \(item.price)")
                                HStack{
                                    Image(systemName: "hand.thumbsup")
                                    Text("\(item.rate)% (\(item.totalRate))")
                                    
                                }
                                
                            }
                            .font(.body)
                            .fontWeight(.regular)
                            //description
                            Text(item.description)
                                .font(.footnote)
                                .lineLimit(2)
                            
                            //badge popular
                            if item.isPopular == 1{
                                Text("Popular")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 8)
                                    .background(Color.primaryColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 6))
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ZStack(alignment: .bottomTrailing){
                            KFImage(URL(string: item.imageUrl))
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                            Button{
                                
                            }label: {
                                ZStack{
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 45, height: 45)
                                        Image(systemName: "plus")
                                        .fontWeight(.semibold)
                                    
                                        .foregroundStyle(.black)
                                }
                                .padding(.all, 8)
                                
                            }
                            .shadow(radius: 10)
                        }
                    }
                    Divider()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct DrinkMenuView: View {
    //load pizz data
    var drinkDatas: [MenuResponse] = drinkMenuData
    var body: some View {
        LazyVStack{
            ForEach(drinkDatas){item in
                VStack(spacing: 14){
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text(item.name)
                                .font(.headline)
                                .fontWeight(.semibold)
                            HStack(alignment: .top){
                                (item.isPriceAddOns == 1) ? Text("Priced by add-ons") : Text("Priced by \(item.price)")
                                HStack{
                                    Image(systemName: "hand.thumbsup")
                                    Text("\(item.rate)% (\(item.totalRate))")
                                    
                                }
                                
                            }
                            .font(.body)
                            .fontWeight(.regular)
                            //description
                            Text(item.description)
                                .font(.footnote)
                                .lineLimit(2)
                            
                            //badge popular
                            if item.isPopular == 1{
                                Text("Popular")
                                    .font(.footnote)
                                    .foregroundStyle(.white)
                                    .padding(.vertical, 2)
                                    .padding(.horizontal, 8)
                                    .background(Color.primaryColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 6))
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ZStack(alignment: .bottomTrailing){
                            KFImage(URL(string: item.imageUrl))
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 120)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                            Button{
                                
                            }label: {
                                ZStack{
                                    Circle()
                                        .fill(.white)
                                        .frame(width: 45, height: 45)
                                        Image(systemName: "plus")
                                        .fontWeight(.semibold)
                                    
                                        .foregroundStyle(.black)
                                }
                                .padding(.all, 8)
                                
                            }
                            .shadow(radius: 10)
                        }
                    }
                    Divider()
                }
                .padding(.horizontal)
            }
        }
    }
}
