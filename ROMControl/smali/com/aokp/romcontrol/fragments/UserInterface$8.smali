.class Lcom/aokp/romcontrol/fragments/UserInterface$8;
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
    .line 720
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$8;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$8;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$8;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$600(Lcom/aokp/romcontrol/fragments/UserInterface;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$8;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$8;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/UserInterface;->mError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$8;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mAnimationPart1:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$600(Lcom/aokp/romcontrol/fragments/UserInterface;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 727
    return-void
.end method
