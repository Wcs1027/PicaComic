import 'package:flutter/material.dart';
import 'package:pica_comic/tools/translations.dart';

Widget showLoading(BuildContext context, {bool withScaffold=false}){
  if(withScaffold){
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }else{
    return Center(
      child: SizedBox(
        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const LinearProgressIndicator(),
            const SizedBox(height: 16,),
            Center(
              child: Text("加载中".tl),
            ),
            const SizedBox(height: 4,),
            TextButton(onPressed: () => Navigator.pop(context), child: Text("取消".tl))
          ],
        ),
      ),
    );
  }
}