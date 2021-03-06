.class public Lcom/android/settings/deviceinfo/msim/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mDataState:I

.field private mHandler:Landroid/os/Handler;

.field private mNumPhones:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRes:Landroid/content/res/Resources;

.field private mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "network_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    iput v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mNumPhones:I

    .line 99
    iput v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mDataState:I

    .line 126
    new-instance v0, Lcom/android/settings/deviceinfo/msim/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus$1;-><init>(Lcom/android/settings/deviceinfo/msim/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/msim/MSimStatus;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mDataState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/msim/MSimStatus;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->updateDataState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/msim/MSimStatus;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->updateNetworkType(I)V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .parameter "t"

    .prologue
    const-wide/16 v5, 0x3c

    .line 374
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 375
    .local v2, s:I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 376
    .local v1, m:I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 378
    .local v0, h:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 224
    new-instance v0, Lcom/android/settings/deviceinfo/msim/MSimStatus$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus$2;-><init>(Lcom/android/settings/deviceinfo/msim/MSimStatus;I)V

    .line 235
    .local v0, phoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 366
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 367
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 244
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 341
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 342
    .local v1, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 344
    .local v2, btAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, address:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0           #address:Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 348
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 349
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    const v3, 0x7f08038a

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 331
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 332
    .local v1, ipAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    const v2, 0x7f08038a

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 264
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget-object p2, Lcom/android/settings/deviceinfo/msim/MSimStatus;->sUnknown:Ljava/lang/String;

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 320
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 321
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 323
    .local v1, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 325
    .local v2, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 326
    .local v0, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    return-void

    .line 325
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    .restart local v0       #macAddress:Ljava/lang/String;
    :cond_1
    const v4, 0x7f08038a

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 305
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 306
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 308
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 310
    .local v4, root:Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 311
    .local v3, ps:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    .end local v3           #ps:Landroid/preference/Preference;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 314
    .local v5, wimaxMacAddressPref:Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f08038a

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, macAddress:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState()V
    .locals 3

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, display:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mDataState:I

    packed-switch v1, :pswitch_data_0

    .line 301
    :goto_0
    const-string v1, "data_state"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void

    .line 288
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f08007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f08007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    goto :goto_0

    .line 294
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f08007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    goto :goto_0

    .line 297
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f08007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType(I)V
    .locals 2
    .parameter "subscription"

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, networktype:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    const-string v1, "network_type"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    new-instance v8, Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;

    invoke-direct {v8, p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;-><init>(Lcom/android/settings/deviceinfo/msim/MSimStatus;)V

    iput-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 145
    const-string v8, "phone_msim"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/MSimTelephonyManager;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    .line 147
    const v8, 0x7f05000f

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->addPreferencesFromResource(I)V

    .line 149
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v8

    iput v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mNumPhones:I

    .line 150
    iget v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mNumPhones:I

    new-array v8, v8, [Landroid/telephony/PhoneStateListener;

    iput-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mNumPhones:I

    if-ge v1, v8, :cond_0

    .line 153
    iget-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v9

    aput-object v9, v8, v1

    .line 154
    iget-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v9, v9, v1

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_0
    const-string v8, "battery_level"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 159
    const-string v8, "battery_status"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 161
    const-string v8, "button_aboutphone_msim_status"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 162
    .local v6, selectSub:Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_1

    .line 163
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 164
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "PACKAGE"

    const-string v9, "com.android.settings"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v8, "TARGET_CLASS"

    const-string v9, "com.android.settings.deviceinfo.msim.MSimSubscriptionStatus"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    .line 170
    sget-object v8, Lcom/android/settings/deviceinfo/msim/MSimStatus;->sUnknown:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 171
    iget-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f080061

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/deviceinfo/msim/MSimStatus;->sUnknown:Ljava/lang/String;

    .line 174
    :cond_2
    const-string v8, "up_time"

    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 177
    sget-object v0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v4, v0, v2

    .line 178
    .local v4, key:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #len$:I
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setWimaxStatus()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setWifiStatus()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setBtStatus()V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setIpAddressStatus()V

    .line 187
    sget-object v7, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 188
    .local v7, serial:Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 189
    const-string v8, "serial_number"

    invoke-direct {p0, v8, v7}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_2
    return-void

    .line 191
    :cond_4
    const-string v8, "serial_number"

    invoke-direct {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 212
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->updateDataState()V

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mTelephonyManager:Landroid/telephony/MSimTelephonyManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 355
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 356
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 358
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 359
    const-wide/16 v2, 0x1

    .line 362
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    return-void
.end method
