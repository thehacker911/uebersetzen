.class Lcom/aokp/romcontrol/fragments/UserInterface$3;
.super Ljava/lang/Object;
.source "UserInterface.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/UserInterface;->openBootAnimationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/UserInterface;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$3;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 476
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$3;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/fragments/UserInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 477
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v3, test:Landroid/content/Intent;
    const-string v4, "file/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 481
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 483
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "file/*"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$3;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    const/16 v5, 0xcb

    invoke-virtual {v4, v0, v5}, Lcom/aokp/romcontrol/fragments/UserInterface;->startActivityForResult(Landroid/content/Intent;I)V

    .line 491
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$3;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$300(Lcom/aokp/romcontrol/fragments/UserInterface;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00c3

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
