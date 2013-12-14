.class Lcom/aokp/romcontrol/fragments/Lockscreens$H;
.super Landroid/os/Handler;
.source "Lockscreens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/Lockscreens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;


# direct methods
.method private constructor <init>(Lcom/aokp/romcontrol/fragments/Lockscreens;)V
    .locals 0
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$H;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aokp/romcontrol/fragments/Lockscreens;Lcom/aokp/romcontrol/fragments/Lockscreens$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1130
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/Lockscreens$H;-><init>(Lcom/aokp/romcontrol/fragments/Lockscreens;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1132
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1134
    return-void
.end method
