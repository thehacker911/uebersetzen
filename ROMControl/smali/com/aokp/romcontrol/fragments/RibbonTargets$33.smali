.class Lcom/aokp/romcontrol/fragments/RibbonTargets$33;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->showHideAppsDialog()V
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
    .line 1880
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$33;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 1883
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$33;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6800(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1884
    .local v0, toggleKey:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$33;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHiddenApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    :goto_0
    return-void

    .line 1887
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$33;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHiddenApps:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$6700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
