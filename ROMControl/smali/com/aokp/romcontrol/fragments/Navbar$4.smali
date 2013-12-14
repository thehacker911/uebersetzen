.class Lcom/aokp/romcontrol/fragments/Navbar$4;
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
    .line 797
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Navbar$4;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 801
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 802
    .local v0, command:I
    packed-switch v0, :pswitch_data_0

    .line 816
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$4;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshButtons()V

    .line 817
    return-void

    .line 804
    :pswitch_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$4;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->loadButtons()V
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$500(Lcom/aokp/romcontrol/fragments/Navbar;)V

    goto :goto_0

    .line 807
    :pswitch_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$4;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    #getter for: Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$100(Lcom/aokp/romcontrol/fragments/Navbar;)I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 808
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$4;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    new-instance v2, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar$4;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    const-string v4, "**null**"

    const-string v5, "**null**"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;-><init>(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$4;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$108(Lcom/aokp/romcontrol/fragments/Navbar;)I

    goto :goto_0

    .line 813
    :pswitch_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$4;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->saveButtons()V
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$600(Lcom/aokp/romcontrol/fragments/Navbar;)V

    goto :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x7f0a0012
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
