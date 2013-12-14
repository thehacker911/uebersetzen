.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;
.super Lcom/mobeta/android/dslv/DragSortController;
.source "ArrangeRibbonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigurationDragSortController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    .line 192
    iget-object v0, p1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const v1, 0x7f0a006e

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;III)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->setRemoveEnabled(Z)V

    .line 195
    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->setSortEnabled(Z)V

    .line 196
    const v0, 0x363636

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->setBackgroundColor(I)V

    .line 197
    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v3, v3, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, p1, v2, v3}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    return-object v0
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 0
    .parameter "floatView"

    .prologue
    .line 214
    return-void
.end method

.method public onDragFloatView(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .parameter "floatView"
    .parameter "floatPoint"
    .parameter "touchPoint"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const v1, 0x3f4ccccd

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatAlpha(F)V

    .line 203
    return-void
.end method
