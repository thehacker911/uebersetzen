.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;
.super Ljava/lang/Object;
.source "ArrangeRibbonFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 93
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->aTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, aName:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->aTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->sTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    .local v3, sName:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->sTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->lTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, lName:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->lTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->cTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, cName:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->cTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 105
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v4, v4, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method
