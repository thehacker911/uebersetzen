.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$4;
.super Ljava/lang/Object;
.source "ArrangeRibbonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 134
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$4;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$4;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    #calls: Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->saveButtons()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->access$000(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)V

    .line 138
    return-void
.end method
