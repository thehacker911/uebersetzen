.class Lcom/aokp/romcontrol/fragments/RibbonTargets$30;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->showMultiSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1795
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1796
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSelectedApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1797
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSelectedApps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    const-string v2, "**null**"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    const-string v2, "**null**"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1801
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    .line 1802
    return-void
.end method
