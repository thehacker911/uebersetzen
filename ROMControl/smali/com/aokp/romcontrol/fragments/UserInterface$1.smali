.class Lcom/aokp/romcontrol/fragments/UserInterface$1;
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
    .line 451
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$1;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$1;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$1;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$000(Lcom/aokp/romcontrol/fragments/UserInterface;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/aokp/romcontrol/fragments/UserInterface;->installBootAnim(Landroid/content/DialogInterface;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$100(Lcom/aokp/romcontrol/fragments/UserInterface;Landroid/content/DialogInterface;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$1;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #calls: Lcom/aokp/romcontrol/fragments/UserInterface;->resetBootAnimation()Z
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$200(Lcom/aokp/romcontrol/fragments/UserInterface;)Z

    .line 456
    return-void
.end method
