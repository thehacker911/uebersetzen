.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$5;
.super Ljava/lang/Object;
.source "ArrangeRibbonTogglesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->showToggleSelectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$5;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 242
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$5;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    #calls: Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->saveToggles()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->access$000(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V

    .line 243
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$5;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->notifyDataSetChanged()V

    .line 244
    return-void
.end method
