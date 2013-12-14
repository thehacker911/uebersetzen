.class Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;
.super Landroid/os/AsyncTask;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4;

.field final synthetic val$completion:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$loader:Ljava/lang/Runnable;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->this$0:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$filename:Ljava/lang/String;

    iput-object p5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$loader:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$completion:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 378
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 19
    .parameter "params"

    .prologue
    .line 381
    const/4 v11, 0x0

    .line 382
    .local v11, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 383
    .local v6, fos:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 385
    .local v2, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 387
    .local v3, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 414
    .end local v3           #cr:Landroid/content/ContentResolver;
    :goto_0
    if-eqz v11, :cond_0

    .line 415
    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$filename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {v11, v7}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9

    move-object v6, v7

    .line 419
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$loader:Ljava/lang/Runnable;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 420
    const/16 v16, 0x0

    .line 425
    if-eqz v2, :cond_1

    .line 426
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 428
    :cond_1
    if-eqz v11, :cond_2

    .line 430
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 435
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 437
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 440
    :cond_3
    :goto_2
    return-object v16

    .line 389
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    .line 390
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$url:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 391
    .local v8, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 392
    .local v9, httpParams:Lorg/apache/http/params/HttpParams;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v9, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 394
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$500()Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 395
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$500()Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v16 .. v18}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;->getHeadersForRequest(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 396
    .local v13, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    if-eqz v13, :cond_7

    .line 397
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/http/NameValuePair;

    .line 398
    .local v12, pair:Lorg/apache/http/NameValuePair;
    invoke-interface {v12}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v12}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v9, v0, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    .line 421
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #pair:Lorg/apache/http/NameValuePair;
    .end local v13           #props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    :catch_0
    move-exception v4

    .line 422
    .local v4, e:Ljava/lang/Throwable;
    :goto_4
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "Error thrown while getting drawable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 423
    const/16 v16, 0x0

    .line 425
    if-eqz v2, :cond_5

    .line 426
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 428
    :cond_5
    if-eqz v11, :cond_6

    .line 430
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 435
    .end local v4           #e:Ljava/lang/Throwable;
    :cond_6
    :goto_5
    if-eqz v6, :cond_3

    .line 437
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 438
    :catch_1
    move-exception v4

    .line 439
    .local v4, e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Failed to close file output stream"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 403
    .end local v4           #e:Ljava/io/IOException;
    .restart local v8       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v9       #httpParams:Lorg/apache/http/params/HttpParams;
    :cond_7
    :try_start_9
    invoke-virtual {v8, v9}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 404
    invoke-virtual {v2, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 405
    .local v14, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    move-result v15

    .line 407
    .local v15, status:I
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    .line 408
    const/16 v16, 0x0

    .line 425
    if-eqz v2, :cond_8

    .line 426
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 428
    :cond_8
    if-eqz v11, :cond_9

    .line 430
    :try_start_a
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 435
    :cond_9
    :goto_6
    if-eqz v6, :cond_3

    .line 437
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 438
    :catch_2
    move-exception v4

    .line 439
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Failed to close file output stream"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 431
    .end local v4           #e:Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 432
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Failed to close input stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 410
    .end local v4           #e:Ljava/io/IOException;
    :cond_a
    :try_start_c
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 411
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    move-result-object v11

    goto/16 :goto_0

    .line 431
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v8           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v9           #httpParams:Lorg/apache/http/params/HttpParams;
    .end local v14           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    :catch_4
    move-exception v4

    .line 432
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Failed to close input stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 438
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 439
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Failed to close file output stream"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 431
    .local v4, e:Ljava/lang/Throwable;
    :catch_6
    move-exception v4

    .line 432
    .local v4, e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Failed to close input stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 425
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v16

    :goto_7
    if-eqz v2, :cond_b

    .line 426
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 428
    :cond_b
    if-eqz v11, :cond_c

    .line 430
    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 435
    :cond_c
    :goto_8
    if-eqz v6, :cond_d

    .line 437
    :try_start_e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 440
    :cond_d
    :goto_9
    throw v16

    .line 431
    :catch_7
    move-exception v4

    .line 432
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Failed to close input stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 438
    .end local v4           #e:Ljava/io/IOException;
    :catch_8
    move-exception v4

    .line 439
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Failed to close file output stream"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 425
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v16

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 421
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v4

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 378
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;->val$completion:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 447
    return-void
.end method
