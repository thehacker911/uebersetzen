.class Lcom/android/settings/QuietHours$1;
.super Ljava/lang/Object;
.source "QuietHours.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/QuietHours;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/QuietHours;


# direct methods
.method constructor <init>(Lcom/android/settings/QuietHours;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/QuietHours$1;->this$0:Lcom/android/settings/QuietHours;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 218
    const-string v0, "auto_sms_call"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auto_sms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "call_bypass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sms_bypass"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/QuietHours$1;->this$0:Lcom/android/settings/QuietHours;

    #getter for: Lcom/android/settings/QuietHours;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/QuietHours;->access$000(Lcom/android/settings/QuietHours;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/service/SmsCallHelper;->scheduleService(Landroid/content/Context;)V

    .line 224
    :cond_1
    const-string v0, "sms_bypass_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/settings/QuietHours$1;->this$0:Lcom/android/settings/QuietHours;

    #calls: Lcom/android/settings/QuietHours;->setSmsBypassCodeSummary()V
    invoke-static {v0}, Lcom/android/settings/QuietHours;->access$100(Lcom/android/settings/QuietHours;)V

    .line 227
    :cond_2
    return-void
.end method
