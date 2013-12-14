.class Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$2;
.super Ljava/lang/Object;
.source "WidgetConfigurationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 80
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$2;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$2;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$2;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    iget v1, v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    #calls: Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->shiftleftWidget(I)V
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->access$400(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V

    .line 84
    return-void
.end method
