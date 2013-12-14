.class Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;
.super Ljava/lang/Object;
.source "StatusBarToggles.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/StatusBarToggles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    #setter for: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$102(Lcom/aokp/romcontrol/fragments/StatusBarToggles;I)I

    .line 492
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #getter for: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$100(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #getter for: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$100(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I

    move-result v0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #getter for: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$200(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #getter for: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$100(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->createDialog(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V
    invoke-static {v1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$300(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V

    .line 495
    :cond_0
    return-void
.end method
