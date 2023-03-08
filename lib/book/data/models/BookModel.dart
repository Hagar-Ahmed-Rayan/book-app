import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "IhJQngEACAAJ"
/// etag : "yn1TFx/ymck"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/IhJQngEACAAJ"
/// volumeInfo : {"title":"Quantum Computer Science","subtitle":"An Introduction","authors":["N. David Mermin"],"publisher":"Cambridge University Press","publishedDate":"2007-08-30","description":"In the 1990's it was realized that quantum physics has some spectacular applications in computer science. This book is a concise introduction to quantum computation, developing the basic elements of this new branch of computational theory without assuming any background in physics. It begins with an introduction to the quantum theory from a computer-science perspective. It illustrates the quantum-computational approach with several elementary examples of quantum speed-up, before moving to the major applications: Shor's factoring algorithm, Grover's search algorithm, and quantum error correction. The book is intended primarily for computer scientists who know nothing about quantum theory, but will also be of interest to physicists who want to learn the theory of quantum computation, and philosophers of science interested in quantum foundational issues. It evolved during six years of teaching the subject to undergraduates and graduate students in computer science, mathematics, engineering, and physics, at Cornell University.","industryIdentifiers":[{"type":"ISBN_10","identifier":"0521876583"},{"type":"ISBN_13","identifier":"9780521876582"}],"readingModes":{"text":false,"image":false},"pageCount":233,"printType":"BOOK","categories":["Science"],"averageRating":3,"ratingsCount":1,"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"preview-1.0.0","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=IhJQngEACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=IhJQngEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"},"language":"en","previewLink":"http://books.google.com/books?id=IhJQngEACAAJ&dq=computer+science&hl=&cd=1&source=gbs_api","infoLink":"http://books.google.com/books?id=IhJQngEACAAJ&dq=computer+science&hl=&source=gbs_api","canonicalVolumeLink":"https://books.google.com/books/about/Quantum_Computer_Science.html?hl=&id=IhJQngEACAAJ"}
/// saleInfo : {"country":"US","saleability":"NOT_FOR_SALE","isEbook":false}
/// accessInfo : {"country":"US","viewability":"NO_PAGES","embeddable":false,"publicDomain":false,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=IhJQngEACAAJ&hl=&source=gbs_api","accessViewStatus":"NONE","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"This book is a concise introduction to quantum computation, developing the basic elements of this new branch of computational theory without assuming any background in physics."}

class BookModel {
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo, 
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,});

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['id'] = id;
    map['etag'] = etag;
    map['selfLink'] = selfLink;
    if (volumeInfo != null) {
      map['volumeInfo'] = volumeInfo?.toJson();
    }
    if (saleInfo != null) {
      map['saleInfo'] = saleInfo?.toJson();
    }
    if (accessInfo != null) {
      map['accessInfo'] = accessInfo?.toJson();
    }
    if (searchInfo != null) {
      map['searchInfo'] = searchInfo?.toJson();
    }
    return map;
  }

}