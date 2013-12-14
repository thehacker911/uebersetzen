.class Lcom/android/settings/service/SmsCallService$2;
.super Landroid/content/BroadcastReceiver;
.source "SmsCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/service/SmsCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/service/SmsCallService;


# direct methods
.method constructor <init>(Lcom/android/settings/service/SmsCallService;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/service/SmsCallService$2;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 150
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 151
    .local v6, msgs:[Landroid/telephony/SmsMessage;
    const/4 v9, 0x0

    aget-object v5, v6, v9

    .line 152
    .local v5, msg:Landroid/telephony/SmsMessage;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, incomingNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 154
    .local v7, nawDawg:Z
    invoke-static {p1}, Lcom/android/settings/service/SmsCallHelper;->returnUserAutoText(Landroid/content/Context;)I

    move-result v8

    .line 155
    .local v8, userAutoSms:I
    invoke-static {p1}, Lcom/android/settings/service/SmsCallHelper;->returnUserTextBypass(Landroid/content/Context;)I

    move-result v1

    .line 156
    .local v1, bypassCodePref:I
    invoke-static {p1, v2}, Lcom/android/settings/service/SmsCallHelper;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 158
    .local v3, isContact:Z
    if-nez v1, :cond_0

    if-eqz v8, :cond_2

    :cond_0
    invoke-static {p1}, Lcom/android/settings/service/SmsCallHelper;->inQuietHours(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 161
    invoke-static {p1}, Lcom/android/settings/service/SmsCallHelper;->returnUserTextBypassCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, bypassCode:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, messageBody:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 164
    packed-switch v1, :pswitch_data_0

    .line 181
    :cond_1
    :goto_0
    :pswitch_0
    if-eqz v8, :cond_2

    if-nez v7, :cond_2

    .line 182
    iget-object v9, p0, Lcom/android/settings/service/SmsCallService$2;->this$0:Lcom/android/settings/service/SmsCallService;

    #calls: Lcom/android/settings/service/SmsCallService;->checkTimeAndNumber(Landroid/content/Context;Ljava/lang/String;IZ)V
    invoke-static {v9, p1, v2, v8, v3}, Lcom/android/settings/service/SmsCallService;->access$700(Lcom/android/settings/service/SmsCallService;Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 185
    .end local v0           #bypassCode:Ljava/lang/String;
    .end local v4           #messageBody:Ljava/lang/String;
    :cond_2
    return-void

    .line 169
    .restart local v0       #bypassCode:Ljava/lang/String;
    .restart local v4       #messageBody:Ljava/lang/String;
    :pswitch_1
    const/4 v7, 0x1

    .line 170
    iget-object v9, p0, Lcom/android/settings/service/SmsCallService$2;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v10, p0, Lcom/android/settings/service/SmsCallService$2;->this$0:Lcom/android/settings/service/SmsCallService;

    #calls: Lcom/android/settings/service/SmsCallService;->startAlarm(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v9, v10, v2}, Lcom/android/settings/service/SmsCallService;->access$600(Lcom/android/settings/service/SmsCallService;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :pswitch_2
    if-eqz v3, :cond_1

    .line 175
    const/4 v7, 0x1

    .line 176
    iget-object v9, p0, Lcom/android/settings/service/SmsCallService$2;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v10, p0, Lcom/android/settings/service/SmsCallService$2;->this$0:Lcom/android/settings/service/SmsCallService;

    #calls: Lcom/android/settings/service/SmsCallService;->startAlarm(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v9, v10, v2}, Lcom/android/settings/service/SmsCallService;->access$600(Lcom/android/settings/service/SmsCallService;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
