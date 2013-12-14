.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$6;
.super Ljava/lang/Object;
.source "ArrangeRibbonTogglesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


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
    .line 248
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

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
    .line 251
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    .local v0, toggleKey:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 253
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$6;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
