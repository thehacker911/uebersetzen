.class Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "ArrangeTogglesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationDragSortController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    .line 191
    iget-object v0, p1, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const v1, 0x7f0a006e

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->setRemoveEnabled(Z)V

    .line 194
    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->setSortEnabled(Z)V

    .line 195
    const v0, 0x363636

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->setBackgroundColor(I)V

    .line 196
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, p1, v2, v3}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-object v0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0
    .parameter "floatView"

    .prologue
    .line 213
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .parameter "floatView"
    .parameter "floatPoint"
    .parameter "touchPoint"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatAlpha(F)V

    .line 202
    return-void
.end method
