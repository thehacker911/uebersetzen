.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$2;
.super Ljava/lang/Object;
.source "ArrangeRibbonFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$dragSortController:Lcom/mobeta/android/dslv/DragSortController;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;Lcom/mobeta/android/dslv/DragSortController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$2;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$2;->val$dragSortController:Lcom/mobeta/android/dslv/DragSortController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$2;->val$dragSortController:Lcom/mobeta/android/dslv/DragSortController;

    invoke-virtual {v0, p1, p2}, Lcom/mobeta/android/dslv/DragSortController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
