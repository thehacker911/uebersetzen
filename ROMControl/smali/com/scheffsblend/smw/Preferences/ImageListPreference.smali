.class public Lcom/scheffsblend/smw/Preferences/ImageListPreference;
.super Landroid/preference/ListPreference;
.source "ImageListPreference.java"


# instance fields
.field private mSummaryImageResourceId:I

.field private resourceIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v8, p0, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->resourceIds:[I

    .line 29
    sget-object v4, Lcom/aokp/romcontrol/R$styleable;->ImageListPreference:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 31
    .local v3, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->mSummaryImageResourceId:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, imageNames:[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->resourceIds:[I

    .line 38
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 39
    aget-object v4, v2, v0

    aget-object v5, v2, v0

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    aget-object v6, v2, v0

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, imageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->resourceIds:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v1           #imageName:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040021

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f0a00f2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 56
    .local v1, mSummaryImage:Landroid/widget/ImageView;
    iget v2, p0, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->mSummaryImageResourceId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .parameter "builder"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 68
    .local v5, index:I
    new-instance v0, Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;

    invoke-virtual {p0}, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000f

    invoke-virtual {p0}, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/scheffsblend/smw/Preferences/ImageListPreference;->resourceIds:[I

    invoke-direct/range {v0 .. v5}, Lcom/scheffsblend/smw/Preferences/ImageArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[II)V

    .line 72
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 74
    return-void
.end method
