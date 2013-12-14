.class final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;
.super Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$targetHeight:I

.field final synthetic val$targetWidth:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    iput p4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$targetWidth:I

    iput p5, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$targetHeight:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;-><init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$filename:Ljava/lang/String;

    iget v3, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$targetWidth:I

    iget v4, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->val$targetHeight:I

    #calls: Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->loadDrawableFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;->result:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method
