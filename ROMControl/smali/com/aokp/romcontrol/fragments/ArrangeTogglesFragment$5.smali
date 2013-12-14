.class Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$5;
.super Ljava/lang/Object;
.source "ArrangeTogglesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$5;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 246
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$5;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    #calls: Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->updateToggleList()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->access$200(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V

    .line 247
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$5;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->notifyDataSetChanged()V

    .line 248
    return-void
.end method
