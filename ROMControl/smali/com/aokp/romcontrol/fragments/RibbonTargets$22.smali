.class Lcom/aokp/romcontrol/fragments/RibbonTargets$22;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 621
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$22;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$22;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$2900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$LocationListener;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$22;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {v1, v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets$LocationListener;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 624
    return-void
.end method
