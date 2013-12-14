.class Lcom/aokp/romcontrol/fragments/UserInterface$7;
.super Landroid/os/Handler;
.source "UserInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/UserInterface;
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
    .line 712
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$7;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$7;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$7;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mError:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$7;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mErrormsg:Ljava/lang/String;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$700(Lcom/aokp/romcontrol/fragments/UserInterface;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    return-void
.end method
