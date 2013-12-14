.class Lcom/aokp/romcontrol/fragments/RibbonTargets$17;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 552
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$17;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "v"
    .parameter "checked"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$17;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->SWIPE_RIBBON_VIBRATE:[Ljava/lang/String;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$17;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 558
    return-void
.end method
