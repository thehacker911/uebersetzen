.class public Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ImageArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private resourceIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[II)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"
    .parameter "ids"
    .parameter "i"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;->index:I

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;->resourceIds:[I

    .line 38
    iput p5, p0, Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;->index:I

    .line 39
    iput-object p4, p0, Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;->resourceIds:[I

    .line 40
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 47
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f04000f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, row:Landroid/view/View;
    const v3, 0x7f0a0058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;->resourceIds:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    return-object v2
.end method
