.class Lcom/android/settings/service/SmsCallService$1;
.super Landroid/telephony/PhoneStateListener;
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
    .line 56
    iput-object p1, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    if-ne p1, v6, :cond_3

    .line 61
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mIncomingCall:Z
    invoke-static {v0, v6}, Lcom/android/settings/service/SmsCallService;->access$002(Lcom/android/settings/service/SmsCallService;Z)Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mIncomingNumber:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/settings/service/SmsCallService;->access$102(Lcom/android/settings/service/SmsCallService;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {v0}, Lcom/android/settings/service/SmsCallHelper;->returnUserCallBypass(Landroid/content/Context;)I

    move-result v0

    .line 64
    iget-object v1, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mIncomingNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/service/SmsCallService;->access$100(Lcom/android/settings/service/SmsCallService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/service/SmsCallHelper;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 66
    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z
    invoke-static {v2}, Lcom/android/settings/service/SmsCallService;->access$200(Lcom/android/settings/service/SmsCallService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z
    invoke-static {v2, v6}, Lcom/android/settings/service/SmsCallService;->access$202(Lcom/android/settings/service/SmsCallService;Z)Z

    .line 68
    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I
    invoke-static {v2, v5}, Lcom/android/settings/service/SmsCallService;->access$302(Lcom/android/settings/service/SmsCallService;I)I

    .line 69
    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnDayOfMonth()I

    move-result v3

    #setter for: Lcom/android/settings/service/SmsCallService;->mDay:I
    invoke-static {v2, v3}, Lcom/android/settings/service/SmsCallService;->access$402(Lcom/android/settings/service/SmsCallService;I)I

    .line 70
    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnTimeInMinutes()I

    move-result v3

    #setter for: Lcom/android/settings/service/SmsCallService;->mMinutes:I
    invoke-static {v2, v3}, Lcom/android/settings/service/SmsCallService;->access$502(Lcom/android/settings/service/SmsCallService;I)I

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v3, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mMinutes:I
    invoke-static {v3}, Lcom/android/settings/service/SmsCallService;->access$500(Lcom/android/settings/service/SmsCallService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mDay:I
    invoke-static {v4}, Lcom/android/settings/service/SmsCallService;->access$400(Lcom/android/settings/service/SmsCallService;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/service/SmsCallHelper;->returnTimeConstraintMet(Landroid/content/Context;II)Z

    move-result v2

    .line 75
    if-eqz v2, :cond_6

    .line 76
    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I
    invoke-static {v0}, Lcom/android/settings/service/SmsCallService;->access$300(Lcom/android/settings/service/SmsCallService;)I

    move-result v0

    if-nez v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z
    invoke-static {v0, v5}, Lcom/android/settings/service/SmsCallService;->access$202(Lcom/android/settings/service/SmsCallService;Z)Z

    .line 111
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I
    invoke-static {v0}, Lcom/android/settings/service/SmsCallService;->access$300(Lcom/android/settings/service/SmsCallService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {v1}, Lcom/android/settings/service/SmsCallHelper;->returnUserCallBypassCount(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {v0}, Lcom/android/settings/service/SmsCallHelper;->inQuietHours(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 116
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mIncomingCall:Z
    invoke-static {v0, v5}, Lcom/android/settings/service/SmsCallService;->access$002(Lcom/android/settings/service/SmsCallService;Z)Z

    .line 117
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z
    invoke-static {v0, v5}, Lcom/android/settings/service/SmsCallService;->access$202(Lcom/android/settings/service/SmsCallService;Z)Z

    .line 118
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v1, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mIncomingNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/service/SmsCallService;->access$100(Lcom/android/settings/service/SmsCallService;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/settings/service/SmsCallService;->startAlarm(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/service/SmsCallService;->access$600(Lcom/android/settings/service/SmsCallService;Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mIncomingCall:Z
    invoke-static {v0, v5}, Lcom/android/settings/service/SmsCallService;->access$002(Lcom/android/settings/service/SmsCallService;Z)Z

    .line 126
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z
    invoke-static {v0, v5}, Lcom/android/settings/service/SmsCallService;->access$202(Lcom/android/settings/service/SmsCallService;Z)Z

    .line 127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    const-class v2, Lcom/android/settings/service/AlarmService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-virtual {v1, v0}, Lcom/android/settings/service/SmsCallService;->stopService(Landroid/content/Intent;)Z

    .line 130
    :cond_4
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mIncomingCall:Z
    invoke-static {v0}, Lcom/android/settings/service/SmsCallService;->access$000(Lcom/android/settings/service/SmsCallService;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mIncomingCall:Z
    invoke-static {v0, v5}, Lcom/android/settings/service/SmsCallService;->access$002(Lcom/android/settings/service/SmsCallService;Z)Z

    .line 133
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {v0}, Lcom/android/settings/service/SmsCallHelper;->returnUserAutoCall(Landroid/content/Context;)I

    move-result v0

    .line 135
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {v1}, Lcom/android/settings/service/SmsCallHelper;->inQuietHours(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    iget-object v1, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mIncomingNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/service/SmsCallService;->access$100(Lcom/android/settings/service/SmsCallService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/service/SmsCallHelper;->isContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v3, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    iget-object v4, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #getter for: Lcom/android/settings/service/SmsCallService;->mIncomingNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/service/SmsCallService;->access$100(Lcom/android/settings/service/SmsCallService;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings/service/SmsCallService;->checkTimeAndNumber(Landroid/content/Context;Ljava/lang/String;IZ)V
    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/settings/service/SmsCallService;->access$700(Lcom/android/settings/service/SmsCallService;Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 142
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 143
    return-void

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {v0}, Lcom/android/settings/service/SmsCallService;->access$308(Lcom/android/settings/service/SmsCallService;)I

    goto/16 :goto_0

    .line 83
    :pswitch_2
    if-eqz v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {v0}, Lcom/android/settings/service/SmsCallService;->access$308(Lcom/android/settings/service/SmsCallService;)I

    goto/16 :goto_0

    .line 93
    :cond_6
    packed-switch v0, :pswitch_data_1

    .line 108
    :goto_2
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnDayOfMonth()I

    move-result v1

    #setter for: Lcom/android/settings/service/SmsCallService;->mDay:I
    invoke-static {v0, v1}, Lcom/android/settings/service/SmsCallService;->access$402(Lcom/android/settings/service/SmsCallService;I)I

    .line 109
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnTimeInMinutes()I

    move-result v1

    #setter for: Lcom/android/settings/service/SmsCallService;->mMinutes:I
    invoke-static {v0, v1}, Lcom/android/settings/service/SmsCallService;->access$502(Lcom/android/settings/service/SmsCallService;I)I

    goto/16 :goto_1

    .line 97
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I
    invoke-static {v0, v6}, Lcom/android/settings/service/SmsCallService;->access$302(Lcom/android/settings/service/SmsCallService;I)I

    goto :goto_2

    .line 100
    :pswitch_5
    if-eqz v1, :cond_7

    .line 101
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I
    invoke-static {v0, v6}, Lcom/android/settings/service/SmsCallService;->access$302(Lcom/android/settings/service/SmsCallService;I)I

    goto :goto_2

    .line 104
    :cond_7
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService$1;->this$0:Lcom/android/settings/service/SmsCallService;

    #setter for: Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z
    invoke-static {v0, v5}, Lcom/android/settings/service/SmsCallService;->access$202(Lcom/android/settings/service/SmsCallService;Z)Z

    goto :goto_2

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 93
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
