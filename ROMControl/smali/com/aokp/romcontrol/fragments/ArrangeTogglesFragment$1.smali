.class Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;
.super Ljava/lang/Object;
.source "ArrangeTogglesFragment.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 89
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    .line 92
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->toggles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->toggles:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->toggles:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->setTogglesFromStringArray(Landroid/content/Context;Ljava/util/List;)V

    .line 95
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->notifyDataSetChanged()V

    .line 96
    return-void
.end method
