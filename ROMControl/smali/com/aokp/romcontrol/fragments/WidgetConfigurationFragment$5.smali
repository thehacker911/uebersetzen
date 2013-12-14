.class Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$5;
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
    .line 101
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$5;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$5;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->resetNavBarWidgets()V

    .line 105
    return-void
.end method
