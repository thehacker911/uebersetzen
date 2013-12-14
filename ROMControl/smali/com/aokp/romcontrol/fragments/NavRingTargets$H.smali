.class Lcom/aokp/romcontrol/fragments/NavRingTargets$H;
.super Landroid/os/Handler;
.source "NavRingTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/NavRingTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;


# direct methods
.method private constructor <init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$H;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;Lcom/aokp/romcontrol/fragments/NavRingTargets$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/NavRingTargets$H;-><init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 658
    iget v0, p1, Landroid/os/Message;->what:I

    .line 660
    return-void
.end method
