.class public Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WidgetConfigurationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 274
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "collection"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 337
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 358
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHeight(I)I
    .locals 2
    .parameter "pos"

    .prologue
    const/4 v0, -0x1

    .line 286
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->getHeight()I

    move-result v0

    .line 292
    .local v0, validHeight:I
    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter "collection"
    .parameter "position"

    .prologue
    .line 310
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p2, v2, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->getView()Landroid/widget/ImageView;

    move-result-object v0

    .line 314
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 318
    .local v1, vparent:Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 320
    .end local v1           #vparent:Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mDoPrefClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 342
    instance-of v0, p2, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    if-eqz v0, :cond_0

    .line 343
    check-cast p2, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    .end local p2
    invoke-virtual {p2}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->getView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 345
    :goto_0
    return v0

    .restart local p2
    :cond_0
    check-cast p2, Landroid/view/View;

    .end local p2
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 362
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 366
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 371
    return-void
.end method
