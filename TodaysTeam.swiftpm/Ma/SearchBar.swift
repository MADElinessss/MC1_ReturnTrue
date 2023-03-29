
import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
            TextField("오늘의 팀 통합검색", text: $text)
                .foregroundColor(.primary)
//            Button(action: {
//                self.text = ""
//            }){
//                Image(systemName: "xmark.circle.fill")
//                    .foregroundColor(.gray)
//            }
        }
        .padding(EdgeInsets(top: 8, leading: 2, bottom: 8, trailing: 6))
        .background(Color(.systemGray6))
        .cornerRadius(5.0)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
