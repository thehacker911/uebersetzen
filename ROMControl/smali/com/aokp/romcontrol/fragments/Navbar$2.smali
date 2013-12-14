.class Lcom/aokp/romcontrol/fragments/Navbar$2;
.super Ljava/lang/Object;
.source "Navbar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Navbar;->createDialog(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Navbar;

.field final synthetic val$button:Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Navbar;Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Navbar$2;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/Navbar$2;->val$button:Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$2;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$2;->val$button:Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->onDialogClick(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;I)V
    invoke-static {v0, v1, p2}, Lcom/aokp/romcontrol/fragments/Navbar;->access$300(Lcom/aokp/romcontrol/fragments/Navbar;Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;I)V

    .line 713
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 714
    return-void
.end method
