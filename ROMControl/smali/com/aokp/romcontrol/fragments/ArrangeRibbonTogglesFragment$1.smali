.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$1;
.super Ljava/lang/Object;
.source "ArrangeRibbonTogglesFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


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
    .line 93
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, sName:Ljava/lang/String;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method
