.class Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "WidgetConfigurationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6
    .parameter "page"

    .prologue
    .line 261
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;

    invoke-virtual {v2, p1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->getHeight(I)I

    move-result v0

    .line 262
    .local v0, dp:I
    int-to-float v2, v0

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    .line 263
    .local v1, px:F
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iput p1, v2, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    .line 264
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    #getter for: Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->access$200(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    float-to-int v5, v1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    #calls: Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->updateSummary(I)V
    invoke-static {v2, p1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->access$300(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V

    .line 266
    return-void
.end method
