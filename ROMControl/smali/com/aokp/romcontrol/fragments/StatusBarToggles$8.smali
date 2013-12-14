.class Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;
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
    .line 634
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 639
    .local v0, command:I
    packed-switch v0, :pswitch_data_0

    .line 653
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshButtons()V

    .line 654
    return-void

    .line 641
    :pswitch_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->loadButtons()V
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$600(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    goto :goto_0

    .line 644
    :pswitch_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #getter for: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$200(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 645
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    new-instance v2, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    const-string v4, "**null**"

    const-string v5, "**null**"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$208(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I

    goto :goto_0

    .line 650
    :pswitch_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->saveButtons()V
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$700(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    goto :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x7f0a0012
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
