.class Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$3;
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
    .line 123
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$3;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.aokp.romcontrol.ACTION_RIBBON_DIALOG_DISMISS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, refreshRibbon:Landroid/content/Intent;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$3;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$3;->this$0:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->dismiss()V

    .line 130
    return-void
.end method
