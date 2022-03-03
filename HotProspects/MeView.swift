//
//  MeView.swift
//  HotProspects
//
//  Created by Ken Muyesu on 03/03/2022.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct MeView: View {
    
    @State private var name = "Anon"
    @State private var emailAddress = "anon@anonymous.io"
    @State private var qrCode = UIImage()
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Your name here", text: $name)
                    .textContentType(.name)
                    .font(.title)
                
                Image(uiImage: qrCode)
                    .interpolation(.none) //neat!
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .contextMenu {
                        Button {
                            //save my QR code
                            //let image = generateQRCode(from: "\(name)\n\(emailAddress)")
                            let imageSaver = ImageSaver()
                            imageSaver.writeToPhotoAlbum(image: qrCode)
                        } label: {
                            Label("Save to Photos", systemImage: "square.and.arrow.down")
                        }
                    }
                
                TextField("Your email address", text: $emailAddress)
                    .textContentType(.emailAddress)
                    .font(.title)
            }
            .navigationTitle("Your code")
            .onAppear(perform: updateCode)
            .onChange(of: name) { _ in updateCode() }
            .onChange(of: emailAddress) { _ in updateCode()}
        }
    }
    
    func generateQRCode(from string: String) -> UIImage {
        filter.message = Data(string.utf8)
        
        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
//                qrCode = UIImage(cgImage: cgimg)
//                return qrCode
            }
        }
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
    
    func updateCode() {
        qrCode = generateQRCode(from: "\(name)\n\(emailAddress)")
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
