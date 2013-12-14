.class Lcom/aokp/romcontrol/fragments/NavRingTargets$2;
.super Ljava/lang/Object;
.source "NavRingTargets.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/NavRingTargets;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$2;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "checked"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$2;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->access$200(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_navring_long_enable"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 216
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$2;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->updateDrawables()V

    .line 217
    return-void
.end method
