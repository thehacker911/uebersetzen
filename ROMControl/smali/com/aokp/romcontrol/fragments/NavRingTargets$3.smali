.class Lcom/aokp/romcontrol/fragments/NavRingTargets$3;
.super Ljava/lang/Object;
.source "NavRingTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/NavRingTargets;->resetAll()V
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
    .line 382
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 385
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->access$200(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->access$200(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING_LONG:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->access$200(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING_ICON:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->access$200(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_ASSIST:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v3}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->access$200(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "systemui_navring_amount"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->updateDrawables()V

    .line 400
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0210

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 403
    return-void
.end method
