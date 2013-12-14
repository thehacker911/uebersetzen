.class Lcom/aokp/romcontrol/fragments/RibbonTargets$27;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->cloneDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1609
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->val$values:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1610
    .local v1, tempInt:I
    const-string v5, "Ribbon Targets"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$4900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->RIBBON_TARGETS_SHORT:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1613
    .local v3, tempShort:Ljava/lang/String;
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->RIBBON_TARGETS_LONG:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1615
    .local v2, tempLong:Ljava/lang/String;
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->RIBBON_TARGETS_ICONS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, tempIcons:Ljava/lang/String;
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->RIBBON_TARGETS_SHORT:[Ljava/lang/String;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I
    invoke-static {v7}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1620
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->RIBBON_TARGETS_LONG:[Ljava/lang/String;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I
    invoke-static {v7}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1623
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->RIBBON_ICON_SPACE:[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x5

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1625
    .local v4, tempSpace:I
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->RIBBON_ICON_SPACE:[Ljava/lang/String;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I
    invoke-static {v7}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1627
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$5600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Settings$System;->RIBBON_TARGETS_ICONS:[Ljava/lang/String;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I
    invoke-static {v7}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v7

    aget-object v6, v6, v7

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1630
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setupButtons()V

    .line 1631
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    .line 1632
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1633
    return-void
.end method
