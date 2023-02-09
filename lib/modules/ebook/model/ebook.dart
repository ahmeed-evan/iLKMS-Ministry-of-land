

import 'dart:convert';

Ebook ebookFromJson(str) => Ebook.fromJson(json.decode(str));

class Ebook {
  String? _ebookId;
  String? _lawsName;
  String? _ebookName;
  String? _ebookCover;
  String? _categoryName;
  String? _ebookPublication;
  String? _author;
  String? _ebookDescription;
  String? _ebookFile;
  int? _ebookLikeUserCounter;
  int? _ebookDislikeUserCounter;
  int? _ebookShareUserCounter;
  int? _ebookViewerCounter;
  int? _ebookCommentCounter;

  Ebook(
      {String? ebookId,
        String? lawsName,
        String? ebookName,
        String? ebookCover,
        String? categoryName,
        String? ebookPublication,
        String? author,
        String? ebookDescription,
        String? ebookFile,
        int? ebookLikeUserCounter,
        int? ebookDislikeUserCounter,
        int? ebookShareUserCounter,
        int? ebookViewerCounter,
        int? ebookCommentCounter}) {
    if (ebookId != null) {
      this._ebookId = ebookId;
    }
    if (lawsName != null) {
      this._lawsName = lawsName;
    }
    if (ebookName != null) {
      this._ebookName = ebookName;
    }
    if (ebookCover != null) {
      this._ebookCover = ebookCover;
    }
    if (categoryName != null) {
      this._categoryName = categoryName;
    }
    if (ebookPublication != null) {
      this._ebookPublication = ebookPublication;
    }
    if (author != null) {
      this._author = author;
    }
    if (ebookDescription != null) {
      this._ebookDescription = ebookDescription;
    }
    if (ebookFile != null) {
      this._ebookFile = ebookFile;
    }
    if (ebookLikeUserCounter != null) {
      this._ebookLikeUserCounter = ebookLikeUserCounter;
    }
    if (ebookDislikeUserCounter != null) {
      this._ebookDislikeUserCounter = ebookDislikeUserCounter;
    }
    if (ebookShareUserCounter != null) {
      this._ebookShareUserCounter = ebookShareUserCounter;
    }
    if (ebookViewerCounter != null) {
      this._ebookViewerCounter = ebookViewerCounter;
    }
    if (ebookCommentCounter != null) {
      this._ebookCommentCounter = ebookCommentCounter;
    }
  }

  String? get ebookId => _ebookId;
  set ebookId(String? ebookId) => _ebookId = ebookId;
  String? get lawsName => _lawsName;
  set lawsName(String? lawsName) => _lawsName = lawsName;
  String? get ebookName => _ebookName;
  set ebookName(String? ebookName) => _ebookName = ebookName;
  String? get ebookCover => _ebookCover;
  set ebookCover(String? ebookCover) => _ebookCover = ebookCover;
  String? get categoryName => _categoryName;
  set categoryName(String? categoryName) => _categoryName = categoryName;
  String? get ebookPublication => _ebookPublication;
  set ebookPublication(String? ebookPublication) =>
      _ebookPublication = ebookPublication;
  String? get author => _author;
  set author(String? author) => _author = author;
  String? get ebookDescription => _ebookDescription;
  set ebookDescription(String? ebookDescription) =>
      _ebookDescription = ebookDescription;
  String? get ebookFile => _ebookFile;
  set ebookFile(String? ebookFile) => _ebookFile = ebookFile;
  int? get ebookLikeUserCounter => _ebookLikeUserCounter;
  set ebookLikeUserCounter(int? ebookLikeUserCounter) =>
      _ebookLikeUserCounter = ebookLikeUserCounter;
  int? get ebookDislikeUserCounter => _ebookDislikeUserCounter;
  set ebookDislikeUserCounter(int? ebookDislikeUserCounter) =>
      _ebookDislikeUserCounter = ebookDislikeUserCounter;
  int? get ebookShareUserCounter => _ebookShareUserCounter;
  set ebookShareUserCounter(int? ebookShareUserCounter) =>
      _ebookShareUserCounter = ebookShareUserCounter;
  int? get ebookViewerCounter => _ebookViewerCounter;
  set ebookViewerCounter(int? ebookViewerCounter) =>
      _ebookViewerCounter = ebookViewerCounter;
  int? get ebookCommentCounter => _ebookCommentCounter;
  set ebookCommentCounter(int? ebookCommentCounter) =>
      _ebookCommentCounter = ebookCommentCounter;

  Ebook.fromJson(Map<String, dynamic> json) {
    _ebookId = json['ebook_id'];
    _lawsName = json['laws_name'];
    _ebookName = json['ebook_name'];
    _ebookCover = json['ebook_cover'];
    _categoryName = json['category_name'];
    _ebookPublication = json['ebook_publication'];
    _author = json['author'];
    _ebookDescription = json['ebook_description'];
    _ebookFile = json['ebook_file'];
    _ebookLikeUserCounter = json['ebook_like_user_counter'];
    _ebookDislikeUserCounter = json['ebook_dislike_user_counter'];
    _ebookShareUserCounter = json['ebook_share_user_counter'];
    _ebookViewerCounter = json['ebook_viewer_counter'];
    _ebookCommentCounter = json['ebook_comment_counter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ebook_id'] = this._ebookId;
    data['laws_name'] = this._lawsName;
    data['ebook_name'] = this._ebookName;
    data['ebook_cover'] = this._ebookCover;
    data['category_name'] = this._categoryName;
    data['ebook_publication'] = this._ebookPublication;
    data['author'] = this._author;
    data['ebook_description'] = this._ebookDescription;
    data['ebook_file'] = this._ebookFile;
    data['ebook_like_user_counter'] = this._ebookLikeUserCounter;
    data['ebook_dislike_user_counter'] = this._ebookDislikeUserCounter;
    data['ebook_share_user_counter'] = this._ebookShareUserCounter;
    data['ebook_viewer_counter'] = this._ebookViewerCounter;
    data['ebook_comment_counter'] = this._ebookCommentCounter;
    return data;
  }
}