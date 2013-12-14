.class Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$6;
.super Ljava/lang/Object;
.source "ArrangeTogglesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->showToggleSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

.field final synthetic val$allToggles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$6;->val$allToggles:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$6;->val$allToggles:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    .local v0, toggleKey:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 257
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->addToggle(Landroid/content/Context;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->removeToggle(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
