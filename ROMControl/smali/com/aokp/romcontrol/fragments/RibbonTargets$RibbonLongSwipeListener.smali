.class public Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;
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
    name = "RibbonLongSwipeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 736
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSetupFinished:Z
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$3200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$3700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, p3

    .line 738
    .local v0, temp:Ljava/lang/String;
    sget-object v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->CUSTOM_APP:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    const/4 v2, 0x2

    #setter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mChoice:I
    invoke-static {v1, v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$3802(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I

    .line 740
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$3900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    .line 747
    .end local v0           #temp:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 742
    .restart local v0       #temp:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$4000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->RIBBON_LONG_SWIPE:[Ljava/lang/String;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
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
    .line 751
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
