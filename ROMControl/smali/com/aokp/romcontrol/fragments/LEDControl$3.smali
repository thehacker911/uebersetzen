.class Lcom/aokp/romcontrol/fragments/LEDControl$3;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/LEDControl;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/LEDControl;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$3;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 162
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$3;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b025c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 164
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$3;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->timeArray:[Ljava/lang/String;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$200(Lcom/aokp/romcontrol/fragments/LEDControl;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aokp/romcontrol/fragments/LEDControl$3$1;

    invoke-direct {v3, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$3$1;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 172
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 173
    return-void
.end method
