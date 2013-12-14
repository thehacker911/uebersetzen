.class Lcom/aokp/romcontrol/fragments/RibbonTargets$28;
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
    .line 1644
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1647
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->targetsLayout:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5800(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    #setter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I
    invoke-static {v3, v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5702(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I

    .line 1648
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1649
    .local v1, sText:Ljava/lang/String;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1650
    .local v0, lText:Ljava/lang/String;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1652
    .local v2, stringArray:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1656
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0211

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1659
    return-void
.end method
