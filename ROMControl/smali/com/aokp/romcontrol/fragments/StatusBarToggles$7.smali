.class Lcom/aokp/romcontrol/fragments/StatusBarToggles$7;
.super Ljava/lang/Object;
.source "StatusBarToggles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/StatusBarToggles;->createActionDialog(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

.field final synthetic val$button:Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$7;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$7;->val$button:Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$7;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$7;->val$button:Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->onActionDialogClick(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;I)V
    invoke-static {v0, v1, p2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$500(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;I)V

    .line 574
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 575
    return-void
.end method
