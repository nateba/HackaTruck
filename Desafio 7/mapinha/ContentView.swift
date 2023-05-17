//
//  ContentView.swift
//  Challenge5
//
//  Created by Student21 on 13/04/23.
//

import SwiftUI
import MapKit
struct ContentView: View {
    @State private var region = MKCoordinateRegion( center: CLLocationCoordinate2D(
        latitude: 37.541034,
        longitude: 127.001678
    ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.2,
            longitudeDelta: 0.2)
    )
    @State private var showSheet = false
    @State private var localAtual = Local(name: "Seoul", logo: "DosanPark",latitude: 37.541034, longitude: 127.001678, descricao: "Descricao")
    
    let local = [
        Local(name: "DosanPark", logo: "DosanPark",latitude: 37.524151, longitude: 127.035346, descricao: "https://picsum.photos/200"),
        Local(name: "HaeBang", logo: "HaeBang",latitude: 37.578796, longitude: 126.976897, descricao: "https://picsum.photos/200"),
        Local(name: "YoungSan", logo: "YoungSan",latitude: 37.530658, longitude: 126.974907, descricao: "https://picsum.photos/200"),
 ]
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.blue,.white], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                Text("BEM VINDO A SEOUL").font(.largeTitle).shadow(color: .pink, radius: 4.0)
                Map(coordinateRegion: $region, annotationItems: local){ local in
                    MapAnnotation(coordinate: local.cordenada,content: {
                        Image(systemName: "pin.circle.fill").foregroundColor(.red)
                            .onTapGesture {
                                self.showSheet = true
                            }
                        Text(local.name)
                    }
                    )
                }.frame(width:380 ,height: 500).shadow(color: .blue, radius: 4.0)//map view
                    .sheet(isPresented: $showSheet){
                        VStack{
                            Text("\(localAtual.name)")
                                .font(.title)
                                .bold()
                            Image(localAtual.logo)
                                .resizable()
                                .frame(width: 70, height: 50)
                            Text(localAtual.descricao)
                                .font(.title)
                        }
                    }
                HStack{
                    ForEach(local, id: \.id) { local in
                        Spacer()
                        Button {localAtual = local
                            region.center.latitude = local.latitude
                            region.center.longitude =
                            local.longitude
                        } label: {
                            Image(local.logo)
                                .resizable()
                                .frame(width: 70, height: 50)
                        }
                        Spacer()
                    }
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom)
            }      .padding(.top, 100).ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
