.class Lcom/aokp/romcontrol/fragments/RibbonTargets$25;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;
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
    .line 702
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$25;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$25;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    const/4 v1, 0x1

    #setter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSetupFinished:Z
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$3202(Lcom/aokp/romcontrol/fragments/RibbonTargets;Z)Z

    .line 705
    return-void
.end method
