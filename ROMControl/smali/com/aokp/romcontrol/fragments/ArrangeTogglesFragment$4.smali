.class Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$4;
.super Ljava/lang/Object;
.source "ArrangeTogglesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 140
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$4;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$4;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    #calls: Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->showToggleSelectionDialog()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->access$000(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V

    .line 144
    return-void
.end method
