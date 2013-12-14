.class public Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 202
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 203
    #getter for: Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;
    invoke-static {p1}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$300(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 204
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    #getter for: Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$300(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->getItem(I)Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 210
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v2, p2}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;

    move-result-object v0

    .line 211
    .local v0, holder:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;
    iget-object p2, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->rootView:Landroid/view/View;

    .line 212
    invoke-virtual {p0, p1}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->getItem(I)Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;

    move-result-object v1

    .line 213
    .local v1, info:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
    iget-object v2, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, v1, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    :goto_0
    iget-object v2, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    #getter for: Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$200(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    #getter for: Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->access$100(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    return-object p2

    .line 217
    :cond_0
    iget-object v2, v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
