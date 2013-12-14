.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$3;
.super Ljava/lang/Object;
.source "ArrangeRibbonTogglesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 116
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$3;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$3;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    #calls: Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->saveToggles()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->access$000(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V

    .line 120
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$3;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->dismiss()V

    .line 121
    return-void
.end method
