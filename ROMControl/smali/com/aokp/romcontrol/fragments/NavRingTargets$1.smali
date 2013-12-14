.class Lcom/aokp/romcontrol/fragments/NavRingTargets$1;
.super Ljava/lang/Object;
.source "NavRingTargets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/NavRingTargets;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$1;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$1;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetNumAmount:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->access$100(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Lcom/aokp/romcontrol/fragments/NavRingTargets$AmountListener;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$1;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-direct {v1, v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets$AmountListener;-><init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 207
    return-void
.end method
