.class public Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;
.super Ljava/lang/Object;
.source "AppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppViewHolder"
.end annotation


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public checkBox:Landroid/widget/CheckBox;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;
    .locals 3
    .parameter "inflater"
    .parameter "convertView"

    .prologue
    .line 236
    if-nez p1, :cond_0

    .line 237
    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 241
    new-instance v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;

    invoke-direct {v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;-><init>()V

    .line 242
    .local v0, holder:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;
    iput-object p1, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->rootView:Landroid/view/View;

    .line 243
    const v1, 0x7f0a0009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 244
    const v1, 0x7f0a0008

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 245
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 246
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    .end local v0           #holder:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;

    move-object v0, v1

    goto :goto_0
.end method
