.class Lcom/aokp/romcontrol/fragments/Navbar$1;
.super Ljava/lang/Object;
.source "Navbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/Navbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Navbar;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Navbar;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    #setter for: Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$002(Lcom/aokp/romcontrol/fragments/Navbar;I)I

    .line 595
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    #getter for: Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/Navbar;->access$000(Lcom/aokp/romcontrol/fragments/Navbar;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    #getter for: Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/Navbar;->access$000(Lcom/aokp/romcontrol/fragments/Navbar;)I

    move-result v0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    #getter for: Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$100(Lcom/aokp/romcontrol/fragments/Navbar;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar$1;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    #getter for: Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/Navbar;->access$000(Lcom/aokp/romcontrol/fragments/Navbar;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->createDialog(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V
    invoke-static {v1, v0}, Lcom/aokp/romcontrol/fragments/Navbar;->access$200(Lcom/aokp/romcontrol/fragments/Navbar;Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V

    .line 598
    :cond_0
    return-void
.end method
