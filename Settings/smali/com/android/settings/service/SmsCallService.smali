.class public Lcom/android/settings/service/SmsCallService;
.super Landroid/app/Service;
.source "SmsCallService.java"


# static fields
.field private static mTelephony:Landroid/telephony/TelephonyManager;


# instance fields
.field private mBypassCallCount:I

.field private mDay:I

.field private mIncomingCall:Z

.field private mIncomingNumber:Ljava/lang/String;

.field private mKeepCounting:Z

.field private mMinuteSent:I

.field private mMinutes:I

.field private mNumberSent:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private smsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/service/SmsCallService;->mIncomingCall:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z

    .line 56
    new-instance v0, Lcom/android/settings/service/SmsCallService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/service/SmsCallService$1;-><init>(Lcom/android/settings/service/SmsCallService;)V

    iput-object v0, p0, Lcom/android/settings/service/SmsCallService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 146
    new-instance v0, Lcom/android/settings/service/SmsCallService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/service/SmsCallService$2;-><init>(Lcom/android/settings/service/SmsCallService;)V

    iput-object v0, p0, Lcom/android/settings/service/SmsCallService;->smsReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/service/SmsCallService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/settings/service/SmsCallService;->mIncomingCall:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/service/SmsCallService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings/service/SmsCallService;->mIncomingCall:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/service/SmsCallService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService;->mIncomingNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/service/SmsCallService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/service/SmsCallService;->mIncomingNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/service/SmsCallService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/service/SmsCallService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/settings/service/SmsCallService;->mKeepCounting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/service/SmsCallService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/service/SmsCallService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/settings/service/SmsCallService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/service/SmsCallService;->mBypassCallCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/service/SmsCallService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/service/SmsCallService;->mDay:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/service/SmsCallService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings/service/SmsCallService;->mDay:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/service/SmsCallService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/settings/service/SmsCallService;->mMinutes:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/service/SmsCallService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/android/settings/service/SmsCallService;->mMinutes:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/service/SmsCallService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/service/SmsCallService;->startAlarm(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/service/SmsCallService;Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/service/SmsCallService;->checkTimeAndNumber(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method private checkTimeAndNumber(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2
    .parameter "context"
    .parameter "incomingNumber"
    .parameter "userSetting"
    .parameter "isContact"

    .prologue
    .line 225
    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnTimeInMinutes()I

    move-result v0

    .line 226
    .local v0, minutesNow:I
    iget v1, p0, Lcom/android/settings/service/SmsCallService;->mMinuteSent:I

    if-eq v0, v1, :cond_1

    .line 227
    iput-object p2, p0, Lcom/android/settings/service/SmsCallService;->mNumberSent:Ljava/lang/String;

    .line 228
    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnTimeInMinutes()I

    move-result v1

    iput v1, p0, Lcom/android/settings/service/SmsCallService;->mMinuteSent:I

    .line 229
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/service/SmsCallHelper;->checkSmsQualifiers(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/settings/service/SmsCallService;->mNumberSent:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    iput-object p2, p0, Lcom/android/settings/service/SmsCallService;->mNumberSent:Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnTimeInMinutes()I

    move-result v1

    iput v1, p0, Lcom/android/settings/service/SmsCallService;->mMinuteSent:I

    .line 236
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/service/SmsCallHelper;->checkSmsQualifiers(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private startAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-static {p1, p2}, Lcom/android/settings/service/SmsCallHelper;->returnContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 245
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    const-class v2, Lcom/android/settings/service/BypassAlarm;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 249
    const-string v2, "number"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/settings/service/SmsCallService;->startActivity(Landroid/content/Intent;)V

    .line 251
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 190
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/service/SmsCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/android/settings/service/SmsCallService;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 192
    sget-object v1, Lcom/android/settings/service/SmsCallService;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/service/SmsCallService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 194
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/settings/service/SmsCallService;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/service/SmsCallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 200
    sget-object v0, Lcom/android/settings/service/SmsCallService;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/android/settings/service/SmsCallService;->mTelephony:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/service/SmsCallService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/service/SmsCallService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 204
    iget-object v0, p0, Lcom/android/settings/service/SmsCallService;->smsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/service/SmsCallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 206
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method
