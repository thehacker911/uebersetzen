.class Lcom/aokp/romcontrol/fragments/LEDControl$5;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/LEDControl;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/LEDControl;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$5;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "v"
    .parameter "checked"

    .prologue
    .line 191
    const-string v1, "persist.sys.enable-charging-led"

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Lcom/aokp/romcontrol/util/Helpers;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void

    .line 191
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
