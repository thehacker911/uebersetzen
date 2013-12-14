.class final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4;
.super Ljava/lang/Object;
.source "UrlImageViewHelper.java"

# interfaces
.implements Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "filename"
    .parameter "loader"
    .parameter "completion"

    .prologue
    .line 378
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4$1;-><init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 449
    .local v0, downloader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    #calls: Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->executeTask(Landroid/os/AsyncTask;)V
    invoke-static {v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$600(Landroid/os/AsyncTask;)V

    .line 450
    return-void
.end method
