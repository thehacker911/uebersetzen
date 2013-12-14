.class Lcom/aokp/romcontrol/fragments/RibbonTargets$32;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->showHideAppsDialog()V
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
    .line 1870
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$32;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1873
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1874
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$32;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_window_hidden_apps"

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$32;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHiddenApps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putArrayList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1876
    return-void
.end method
