.class Lcom/aokp/romcontrol/fragments/LEDControl$4;
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
    .line 176
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$4;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "v"
    .parameter "checked"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$4;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "led_screen_on"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
