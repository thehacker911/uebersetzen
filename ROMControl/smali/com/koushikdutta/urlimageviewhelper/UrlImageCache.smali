.class public final Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;
.super Lcom/koushikdutta/urlimageviewhelper/SoftReferenceHashTable;
.source "UrlImageCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/urlimageviewhelper/SoftReferenceHashTable",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    invoke-direct {v0}, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;-><init>()V

    sput-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;->mInstance:Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/koushikdutta/urlimageviewhelper/SoftReferenceHashTable;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;->mInstance:Lcom/koushikdutta/urlimageviewhelper/UrlImageCache;

    return-object v0
.end method
