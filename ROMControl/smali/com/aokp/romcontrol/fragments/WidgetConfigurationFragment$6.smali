.class Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$6;
.super Ljava/lang/Object;
.source "WidgetConfigurationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 201
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    #calls: Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->requestNewWidget()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->access$700(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    .line 204
    return-void
.end method
