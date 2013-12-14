.class Lcom/aokp/romcontrol/fragments/LEDControl$6;
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
    .line 216
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 219
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$500(Lcom/aokp/romcontrol/fragments/LEDControl;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->testLedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$600(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    const/4 v5, 0x0

    #setter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z
    invoke-static {v4, v5}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$502(Lcom/aokp/romcontrol/fragments/LEDControl;Z)Z

    .line 224
    :cond_0
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$500(Lcom/aokp/romcontrol/fragments/LEDControl;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->testLedReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$600(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 230
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    const/4 v5, 0x1

    #setter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z
    invoke-static {v4, v5}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$502(Lcom/aokp/romcontrol/fragments/LEDControl;Z)Z

    .line 233
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_1
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$700(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v3

    .line 234
    .local v3, place:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b0268

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 236
    const/high16 v4, 0x7f03

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 237
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$800(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, appName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-virtual {v5}, Lcom/aokp/romcontrol/fragments/LEDControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0269

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/LEDControl$6;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-virtual {v5}, Lcom/aokp/romcontrol/fragments/LEDControl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b026a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 241
    const v4, 0x7f0b026b

    new-instance v5, Lcom/aokp/romcontrol/fragments/LEDControl$6$1;

    invoke-direct {v5, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$6$1;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl$6;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    new-instance v4, Lcom/aokp/romcontrol/fragments/LEDControl$6$2;

    invoke-direct {v4, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$6$2;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl$6;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 262
    return-void
.end method
