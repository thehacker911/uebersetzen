.class Lcom/aokp/romcontrol/fragments/Lockscreens$31;
.super Ljava/lang/Object;
.source "Lockscreens.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Lockscreens;->resetAll()V
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
    .line 720
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$31;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 723
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$31;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #getter for: Lcom/aokp/romcontrol/fragments/Lockscreens;->cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$600(Lcom/aokp/romcontrol/fragments/Lockscreens;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_TARGETS_SHORT:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 726
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$31;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #getter for: Lcom/aokp/romcontrol/fragments/Lockscreens;->cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$600(Lcom/aokp/romcontrol/fragments/Lockscreens;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_TARGETS_LONG:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 728
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$31;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #getter for: Lcom/aokp/romcontrol/fragments/Lockscreens;->cr:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$600(Lcom/aokp/romcontrol/fragments/Lockscreens;)Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->LOCKSCREEN_TARGETS_ICON:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$31;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/Lockscreens;->updateDrawables()V

    .line 733
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$31;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #getter for: Lcom/aokp/romcontrol/fragments/Lockscreens;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$200(Lcom/aokp/romcontrol/fragments/Lockscreens;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b02e6

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 736
    return-void
.end method
