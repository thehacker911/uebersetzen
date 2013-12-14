.class public Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RibbonChooserListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, values:[Ljava/lang/String;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    aget-object v2, v0, p3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I
    invoke-static {v1, v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2302(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I

    .line 688
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    const/4 v2, 0x0

    #setter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSetupFinished:Z
    invoke-static {v1, v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$3202(Lcom/aokp/romcontrol/fragments/RibbonTargets;Z)Z

    .line 689
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setupButtons()V

    .line 690
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    .line 691
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$3400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mFinishedSettingUp:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$3300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 692
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
