.class Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;
.super Ljava/lang/Object;
.source "UserInterface.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 895
    invoke-static {}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$1300()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_alpha_config"

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v5, v5, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 899
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 900
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 903
    :cond_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 904
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v3, v3, v7

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 907
    :cond_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-boolean v3, v3, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->linkTransparencies:Z

    if-eqz v3, :cond_2

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, config:Ljava/lang/String;
    invoke-static {}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$1300()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_alpha_config"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 912
    invoke-static {}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$1300()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_alpha_config"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 926
    .end local v0           #config:Ljava/lang/String;
    :goto_0
    return-void

    .line 915
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, sbConfig:Ljava/lang/String;
    invoke-static {}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$1300()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_alpha_config"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->getCurrentAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, nbConfig:Ljava/lang/String;
    invoke-static {}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$1300()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_alpha_config"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
