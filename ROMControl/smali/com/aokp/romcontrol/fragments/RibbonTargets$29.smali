.class Lcom/aokp/romcontrol/fragments/RibbonTargets$29;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1665
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1666
    .local v0, command:I
    sparse-switch v0, :sswitch_data_0

    .line 1682
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    .line 1683
    return-void

    .line 1668
    :sswitch_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setupButtons()V

    goto :goto_0

    .line 1671
    :sswitch_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #calls: Lcom/aokp/romcontrol/fragments/RibbonTargets;->showMultiSelectDialog()V
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    goto :goto_0

    .line 1674
    :sswitch_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #calls: Lcom/aokp/romcontrol/fragments/RibbonTargets;->saveButtons()V
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    goto :goto_0

    .line 1677
    :sswitch_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v3}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->cloneDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1666
    :sswitch_data_0
    .sparse-switch
        0x7f0a0012 -> :sswitch_0
        0x7f0a0013 -> :sswitch_1
        0x7f0a0014 -> :sswitch_2
        0x7f0a00ae -> :sswitch_3
    .end sparse-switch
.end method
