.class Lcom/aokp/romcontrol/fragments/Lockscreens$8;
.super Ljava/lang/Object;
.source "Lockscreens.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Lockscreens;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Lockscreens;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$8;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "checked"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$8;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #getter for: Lcom/aokp/romcontrol/fragments/Lockscreens;->cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$600(Lcom/aokp/romcontrol/fragments/Lockscreens;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_all_widgets"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 355
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$8;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #calls: Lcom/aokp/romcontrol/fragments/Lockscreens;->updateSwitches()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$700(Lcom/aokp/romcontrol/fragments/Lockscreens;)V

    .line 356
    return-void
.end method
