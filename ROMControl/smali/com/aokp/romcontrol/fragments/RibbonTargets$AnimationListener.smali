.class public Lcom/aokp/romcontrol/fragments/RibbonTargets$AnimationListener;
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
    name = "AnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$AnimationListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

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
    .line 788
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$AnimationListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimations:[I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$4300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)[I

    move-result-object v1

    aget v0, v1, p3

    .line 789
    .local v0, temp:I
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$AnimationListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 790
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$AnimationListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$4400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->RIBBON_ANIMATION_TYPE:[Ljava/lang/String;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$AnimationListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 797
    :goto_0
    return-void

    .line 794
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$AnimationListener;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$4500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "app_window_animation_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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
    .line 801
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
