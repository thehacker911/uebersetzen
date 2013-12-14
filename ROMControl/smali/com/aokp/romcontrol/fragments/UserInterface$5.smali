.class Lcom/aokp/romcontrol/fragments/UserInterface$5;
.super Ljava/lang/Object;
.source "UserInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 518
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$5;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$5;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$5;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mBootAnimationPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$000(Lcom/aokp/romcontrol/fragments/UserInterface;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/aokp/romcontrol/fragments/UserInterface;->createPreview(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$400(Lcom/aokp/romcontrol/fragments/UserInterface;Ljava/lang/String;)V

    .line 522
    return-void
.end method
