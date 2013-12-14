.class Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 47
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 50
    const-string v3, "appWidgetId"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 51
    .local v2, widgetId:I
    if-nez v2, :cond_0

    .line 68
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget v4, v4, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    invoke-virtual {v3}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->getWidgetId()I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 56
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v1, delete:Landroid/content/Intent;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget v4, v4, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    invoke-virtual {v3}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->getWidgetId()I

    move-result v0

    .line 58
    .local v0, dealloc:I
    const-string v3, "appWidgetId"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    const-string v3, "com.android.systemui.ACTION_DEALLOCATE_ID"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 61
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget v4, v4, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    .end local v0           #dealloc:I
    .end local v1           #delete:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget v4, v4, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    new-instance v5, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {v5, v6, v2}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    #calls: Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->saveWidgets()V
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->access$000(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    .line 65
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    #calls: Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->refreshParams()V
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->access$100(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    .line 66
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    #getter for: Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->access$200(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget v4, v4, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 67
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget v4, v4, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    #calls: Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->updateSummary(I)V
    invoke-static {v3, v4}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->access$300(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V

    goto :goto_0
.end method
