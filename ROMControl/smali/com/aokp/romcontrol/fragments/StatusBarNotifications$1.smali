.class Lcom/aokp/romcontrol/fragments/StatusBarNotifications$1;
.super Ljava/lang/Object;
.source "StatusBarNotifications.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$1;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekbar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$1;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    #setter for: Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->mSeekbarProgress:I
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->access$002(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;I)I

    .line 174
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekbar"

    .prologue
    .line 182
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekbar"

    .prologue
    .line 178
    return-void
.end method
