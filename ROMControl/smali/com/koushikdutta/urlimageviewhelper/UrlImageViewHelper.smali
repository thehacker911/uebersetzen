.class public final Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;
.super Ljava/lang/Object;
.source "UrlImageViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;,
        Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;,
        Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;,
        Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;
    }
.end annotation


# static fields
.field public static final CACHE_DURATION_FIVE_DAYS:I = 0x19bfcc00

.field public static final CACHE_DURATION_FOUR_DAYS:I = 0x14997000

.field public static final CACHE_DURATION_INFINITE:I = 0x7fffffff

.field public static final CACHE_DURATION_ONE_DAY:I = 0x5265c00

.field public static final CACHE_DURATION_ONE_WEEK:I = 0x240c8400

.field public static final CACHE_DURATION_SIX_DAYS:I = 0x1ee62800

.field public static final CACHE_DURATION_THREE_DAYS:I = 0xf731400

.field public static final CACHE_DURATION_TWO_DAYS:I = 0xa4cb800

.field private static mAllCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeadCache:Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;

.field private static mDefaultDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

.field private static mDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

.field private static mHasCleaned:Z

.field private static mLiveCache:Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

.field static mMetrics:Landroid/util/DisplayMetrics;

.field private static mPendingDownloads:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mPendingViews:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestPropertiesCallback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

.field static mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    sput-boolean v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mHasCleaned:Z

    .line 375
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4;

    invoke-direct {v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$4;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDefaultDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

    .line 479
    invoke-static {}, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;->getInstance()Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mLiveCache:Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    .line 482
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mAllCache:Ljava/util/HashSet;

    .line 513
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDefaultDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

    .line 527
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    .line 528
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->loadDrawableFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$300()Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mLiveCache:Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$500()Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mRequestPropertiesCallback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    return-object v0
.end method

.method static synthetic access$600(Landroid/os/AsyncTask;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->executeTask(Landroid/os/AsyncTask;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mAllCache:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800()Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;

    return-object v0
.end method

.method private static cleanup(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 193
    sget-boolean v7, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mHasCleaned:Z

    if-eqz v7, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v7, 0x1

    sput-boolean v7, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mHasCleaned:Z

    .line 198
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, files:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 201
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v3, v0, v5

    .line 202
    .local v3, file:Ljava/lang/String;
    const-string v7, ".urlimage"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 201
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 205
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v2, f:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    const-wide/32 v11, 0x240c8400

    add-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 210
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #file:Ljava/lang/String;
    .end local v4           #files:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catch_0
    move-exception v1

    .line 211
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 51
    .local v1, stuff:[B
    const/4 v0, 0x0

    .line 52
    .local v0, read:I
    const/4 v2, 0x0

    .line 53
    .local v2, total:I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 55
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 56
    add-int/2addr v2, v0

    goto :goto_0

    .line 58
    :cond_0
    return v2
.end method

.method private static executeTask(Landroid/os/AsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 517
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 520
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->executeTaskHoneycomb(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method private static executeTaskHoneycomb(Landroid/os/AsyncTask;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 525
    return-void
.end method

.method public static getDefaultDownloader()Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;
    .locals 1

    .prologue
    .line 476
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

    return-object v0
.end method

.method public static getFilenameForUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urlimage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeapSize(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 484
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public static getRequestPropertiesCallback()Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mRequestPropertiesCallback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    return-object v0
.end method

.method private static isNullOrEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 183
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadDrawableFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "url"
    .parameter "filename"
    .parameter "targetWidth"
    .parameter "targetHeight"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 74
    invoke-static {p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->prepareResources(Landroid/content/Context;)V

    .line 79
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 80
    .local v3, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 81
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 82
    .local v5, stream:Ljava/io/FileInputStream;
    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 83
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 84
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #stream:Ljava/io/FileInputStream;
    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v5       #stream:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 86
    .local v4, scale:I
    :goto_0
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/2addr v6, v4

    if-gt v6, p3, :cond_0

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/2addr v6, v4

    if-le v6, p4, :cond_1

    .line 87
    :cond_0
    const-string v6, "UrlImageViewHelper"

    const-string v8, "downsampling"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    .end local v3           #o:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 91
    .restart local v3       #o:Landroid/graphics/BitmapFactory$Options;
    shl-int v6, v9, v4

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 92
    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v6, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 96
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v6, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    invoke-direct {v6, p1, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;-><init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #scale:I
    .end local v5           #stream:Ljava/io/FileInputStream;
    :goto_1
    return-object v6

    .line 98
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    move-object v6, v7

    .line 99
    goto :goto_1
.end method

.method public static loadUrlDrawable(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 121
    const-wide/32 v4, 0xf731400

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 122
    return-void
.end method

.method public static loadUrlDrawable(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "cacheDurationMs"

    .prologue
    const/4 v1, 0x0

    .line 133
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-wide v4, p2

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 134
    return-void
.end method

.method public static loadUrlDrawable(Landroid/content/Context;Ljava/lang/String;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "cacheDurationMs"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 168
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 169
    return-void
.end method

.method public static loadUrlDrawable(Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 156
    const-wide/32 v4, 0xf731400

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 157
    return-void
.end method

.method private static prepareResources(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 64
    sget-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    if-eqz v2, :cond_0

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    move-object v0, p0

    .line 67
    check-cast v0, Landroid/app/Activity;

    .line 68
    .local v0, act:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sget-object v3, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 70
    .local v1, mgr:Landroid/content/res/AssetManager;
    new-instance v2, Landroid/content/res/Resources;

    sget-object v3, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v2, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public static setRequestPropertiesCallback(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 463
    sput-object p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mRequestPropertiesCallback:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$RequestPropertiesCallback;

    .line 464
    return-void
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJ)V
    .locals 7
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultResource"
    .parameter "cacheDurationMs"

    .prologue
    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 143
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 144
    :cond_0
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 145
    return-void
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultResource"
    .parameter "cacheDurationMs"
    .parameter "callback"

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 178
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 179
    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 180
    return-void
.end method

.method private static setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 30
    .parameter "context"
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"
    .parameter "cacheDurationMs"
    .parameter "callback"

    .prologue
    .line 221
    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->cleanup(Landroid/content/Context;)V

    .line 223
    invoke-static/range {p2 .. p2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    if-eqz p1, :cond_0

    .line 225
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    const-string v5, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    .line 230
    .local v28, wm:Landroid/view/WindowManager;
    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    .line 231
    .local v22, display:Landroid/view/Display;
    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getWidth()I

    move-result v27

    .line 232
    .local v27, tw:I
    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getHeight()I

    move-result v26

    .line 234
    .local v26, th:I
    sget-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;

    if-nez v5, :cond_2

    .line 235
    new-instance v5, Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;

    invoke-static/range {p0 .. p0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->getHeapSize(Landroid/content/Context;)I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-direct {v5, v6}, Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;-><init>(I)V

    sput-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;

    .line 237
    :cond_2
    sget-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDeadCache:Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/graphics/drawable/BitmapDrawable;

    .line 238
    .local v29, zd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v29, :cond_5

    .line 242
    sget-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mAllCache:Ljava/util/HashSet;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 243
    new-instance v23, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$ZombieDrawable;-><init>(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 249
    .local v23, drawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v23, :cond_6

    .line 252
    if-eqz p1, :cond_3

    .line 253
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :cond_3
    if-eqz p6, :cond_0

    .line 255
    const/4 v5, 0x1

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;->onLoaded(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    goto :goto_0

    .line 242
    .end local v23           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 246
    :cond_5
    sget-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mLiveCache:Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/drawable/Drawable;

    .restart local v23       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 262
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->getFilenameForUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, filename:Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 266
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :cond_7
    if-eqz p1, :cond_8

    .line 274
    sget-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingViews:Ljava/util/Hashtable;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_8
    sget-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 277
    .local v21, currentDownload:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    if-eqz v21, :cond_9

    .line 283
    if-eqz p1, :cond_0

    .line 284
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 288
    :cond_9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v14, downloads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/ImageView;>;"
    if-eqz p1, :cond_a

    .line 290
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_a
    sget-object v5, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mPendingDownloads:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    if-gtz v27, :cond_d

    const v8, 0x7fffffff

    .line 294
    .local v8, targetWidth:I
    :goto_3
    if-gtz v26, :cond_e

    const v9, 0x7fffffff

    .line 295
    .local v9, targetHeight:I
    :goto_4
    new-instance v4, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 306
    .local v4, loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;
    new-instance v10, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;

    move-object v11, v4

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    move-object/from16 v15, p6

    invoke-direct/range {v10 .. v15}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$2;-><init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/util/ArrayList;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 336
    .local v10, completion:Ljava/lang/Runnable;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    .local v24, file:Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 339
    const-wide/32 v5, 0x7fffffff

    cmp-long v5, p4, v5

    if-eqz v5, :cond_b

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    add-long v11, v11, p4

    cmp-long v5, v5, v11

    if-gez v5, :cond_c

    .line 343
    :cond_b
    new-instance v25, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v10}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$3;-><init>(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;Ljava/lang/Runnable;)V

    .line 352
    .local v25, fileloader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static/range {v25 .. v25}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->executeTask(Landroid/os/AsyncTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 360
    .end local v25           #fileloader:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :catch_0
    move-exception v5

    .line 364
    :cond_c
    sget-object v15, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-object/from16 v18, v7

    move-object/from16 v19, v4

    move-object/from16 v20, v10

    invoke-interface/range {v15 .. v20}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;->download(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .end local v4           #loader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$Loader;
    .end local v8           #targetWidth:I
    .end local v9           #targetHeight:I
    .end local v10           #completion:Ljava/lang/Runnable;
    .end local v24           #file:Ljava/io/File;
    :cond_d
    move/from16 v8, v27

    .line 293
    goto :goto_3

    .restart local v8       #targetWidth:I
    :cond_e
    move/from16 v9, v26

    .line 294
    goto :goto_4
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 7
    .parameter "imageView"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 118
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 6
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultResource"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJ)V

    .line 114
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;IJ)V
    .locals 6
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultResource"
    .parameter "cacheDurationMs"

    .prologue
    .line 129
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJ)V

    .line 130
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;IJLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultResource"
    .parameter "cacheDurationMs"
    .parameter "callback"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 165
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultResource"
    .parameter "callback"

    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;IJLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 149
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 126
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;J)V
    .locals 7
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"
    .parameter "cacheDurationMs"

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 138
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"
    .parameter "cacheDurationMs"
    .parameter "callback"

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 173
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7
    .parameter "imageView"
    .parameter "url"
    .parameter "defaultDrawable"
    .parameter "callback"

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 161
    return-void
.end method

.method public static setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V
    .locals 7
    .parameter "imageView"
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const-wide/32 v4, 0xf731400

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 153
    return-void
.end method

.method public static useDefaultDownloader()V
    .locals 1

    .prologue
    .line 472
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDefaultDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

    .line 473
    return-void
.end method

.method public static useDownloader(Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;)V
    .locals 0
    .parameter "downloader"

    .prologue
    .line 468
    sput-object p0, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->mDownloader:Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper$UrlDownloader;

    .line 469
    return-void
.end method
