.class Lcom/aokp/romcontrol/service/FlipService$4;
.super Ljava/lang/Object;
.source "FlipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/service/FlipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/service/FlipService;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/service/FlipService;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/aokp/romcontrol/service/FlipService$4;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/aokp/romcontrol/service/FlipService$4;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #calls: Lcom/aokp/romcontrol/service/FlipService;->getSensorManager()Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/aokp/romcontrol/service/FlipService;->access$1200(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aokp/romcontrol/service/FlipService$4;->this$0:Lcom/aokp/romcontrol/service/FlipService;

    #getter for: Lcom/aokp/romcontrol/service/FlipService;->sl:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/aokp/romcontrol/service/FlipService;->access$1100(Lcom/aokp/romcontrol/service/FlipService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 262
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aokp/romcontrol/service/FlipService;->mSecondReg:Z

    .line 263
    return-void
.end method
