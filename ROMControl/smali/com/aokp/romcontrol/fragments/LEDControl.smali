.class public Lcom/aokp/romcontrol/fragments/LEDControl;
.super Landroid/app/Fragment;
.source "LEDControl.java"

# interfaces
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;
.implements Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;,
        Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;,
        Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PROP_CHARGING_LED:Ljava/lang/String; = "persist.sys.enable-charging-led"

.field private static final PROP_LED_BRIGHTNESS:Ljava/lang/String; = "persist.sys.led-brightness"

.field private static final TAG:Ljava/lang/String; = "LEDControl"


# instance fields
.field private appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blinkOn:Z

.field private brightnessArray:[Ljava/lang/String;

.field private brightnessOutput:[I

.field private currentSelectedApp:I

.field private customAppList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;",
            ">;"
        }
    .end annotation
.end field

.field private defaultColor:I

.field private hasBrightnessFeature:Z

.field private hasChargingFeature:Z

.field private listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mBrightnessNumberpicker:Landroid/widget/NumberPicker;

.field private mChargingLedOn:Landroid/widget/Switch;

.field private mContainer:Landroid/view/ViewGroup;

.field private mEditApp:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mLEDButton:Landroid/widget/ImageView;

.field private mLedBrightness:Landroid/widget/Button;

.field private mLedScreenOn:Landroid/widget/Switch;

.field private mLedTest:Landroid/widget/Button;

.field private mListApps:Landroid/widget/Spinner;

.field private mOffTime:Landroid/widget/Button;

.field private mOnTime:Landroid/widget/Button;

.field private mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

.field private mRegister:Z

.field private mResources:Landroid/content/res/Resources;

.field private offBlink:I

.field private onBlink:I

.field private stopLed:Z

.field private testLedReceiver:Landroid/content/BroadcastReceiver;

.field private timeArray:[Ljava/lang/String;

.field private timeOutput:[I

.field private unicornApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z

    .line 315
    new-instance v0, Lcom/aokp/romcontrol/fragments/LEDControl$8;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$8;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mHandler:Landroid/os/Handler;

    .line 584
    new-instance v0, Lcom/aokp/romcontrol/fragments/LEDControl$10;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$10;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->testLedReceiver:Landroid/content/BroadcastReceiver;

    .line 609
    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/LEDControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I

    return v0
.end method

.method static synthetic access$1000(Lcom/aokp/romcontrol/fragments/LEDControl;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->brightnessOutput:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/aokp/romcontrol/fragments/LEDControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->blinkOn:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/aokp/romcontrol/fragments/LEDControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->blinkOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLEDButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/aokp/romcontrol/fragments/LEDControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->stopLed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/aokp/romcontrol/fragments/LEDControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->onBlink:I

    return v0
.end method

.method static synthetic access$1600(Lcom/aokp/romcontrol/fragments/LEDControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->offBlink:I

    return v0
.end method

.method static synthetic access$1700(Lcom/aokp/romcontrol/fragments/LEDControl;)Lcom/aokp/romcontrol/util/ShortcutPickerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/aokp/romcontrol/fragments/LEDControl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/LEDControl;->updateLEDforNew(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->editButtonVisibility()V

    return-void
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/LEDControl;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->timeArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->adapterRefreshSetting()V

    return-void
.end method

.method static synthetic access$2300(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->saveCustomApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/aokp/romcontrol/fragments/LEDControl;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->timeOutput:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->refreshSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/aokp/romcontrol/fragments/LEDControl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z

    return v0
.end method

.method static synthetic access$502(Lcom/aokp/romcontrol/fragments/LEDControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mRegister:Z

    return p1
.end method

.method static synthetic access$600(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->testLedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aokp/romcontrol/fragments/LEDControl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    return v0
.end method

.method static synthetic access$702(Lcom/aokp/romcontrol/fragments/LEDControl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    return p1
.end method

.method static synthetic access$800(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aokp/romcontrol/fragments/LEDControl;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->brightnessArray:[Ljava/lang/String;

    return-object v0
.end method

.method private adapterRefreshSetting()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->listAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->listAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 309
    iget v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 310
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mListApps:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 313
    :cond_1
    return-void
.end method

.method private addCustomApp(Ljava/lang/String;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 429
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;

    .line 430
    .local v0, custom:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;

    .end local v0           #custom:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    iget v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I

    invoke-direct {v0, p1, v1}, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;-><init>(Ljava/lang/String;I)V

    .line 432
    .restart local v0       #custom:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/LEDControl;->putAppInUnicornList(Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method private addCustomApp(Ljava/lang/String;I)V
    .locals 2
    .parameter "app"
    .parameter "color"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;

    .line 440
    .local v0, custom:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;

    .end local v0           #custom:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    invoke-direct {v0, p1, p2}, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;-><init>(Ljava/lang/String;I)V

    .line 442
    .restart local v0       #custom:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/LEDControl;->putAppInUnicornList(Ljava/lang/String;)V

    .line 446
    :cond_0
    return-void
.end method

.method private editButtonVisibility()V
    .locals 2

    .prologue
    .line 646
    iget v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mEditApp:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mEditApp:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private getTimeString(I)Ljava/lang/String;
    .locals 6
    .parameter "milliSeconds"

    .prologue
    .line 383
    int-to-float v3, p1

    const/high16 v4, 0x447a

    div-float v1, v3, v4

    .line 384
    .local v1, seconds:F
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v3, "0.#"

    invoke-direct {v0, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, df:Ljava/text/DecimalFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b025d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, time:Ljava/lang/String;
    return-object v2
.end method

.method private parseExistingAppList()V
    .locals 10

    .prologue
    .line 464
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "led_custom_values"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 467
    .local v3, currentApps:Ljava/lang/String;
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0261

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    const-string v8, "+App"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    if-eqz v3, :cond_2

    .line 475
    const-string v7, "\\|"

    invoke-static {v3, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, array:[Ljava/lang/String;
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, v1, v4

    .line 477
    .local v5, item:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 476
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    :cond_1
    invoke-static {v5}, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->fromString(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;

    move-result-object v0

    .line 481
    .local v0, app:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    if-eqz v0, :cond_0

    .line 482
    iget-object v7, v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->appPackage:Ljava/lang/String;

    iget v8, v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->appColor:I

    invoke-direct {p0, v7, v8}, Lcom/aokp/romcontrol/fragments/LEDControl;->addCustomApp(Ljava/lang/String;I)V

    goto :goto_1

    .line 486
    .end local v0           #app:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #array:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #item:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    return-void
.end method

.method private putAppInUnicornList(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 449
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 452
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 456
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 459
    .local v1, applicationName:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 460
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->adapterRefreshSetting()V

    .line 461
    return-void

    .line 453
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 454
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 456
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v4, "unknown"

    goto :goto_1
.end method

.method private refreshSettings()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 391
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mResources:Landroid/content/res/Resources;

    const v6, 0x10e001e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 393
    .local v2, on:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mResources:Landroid/content/res/Resources;

    const v6, 0x10e001f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 395
    .local v1, off:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "notification_light_on"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->onBlink:I

    .line 397
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "notification_light_off"

    invoke-static {v3, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->offBlink:I

    .line 400
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mOnTime:Landroid/widget/Button;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->onBlink:I

    invoke-direct {p0, v6}, Lcom/aokp/romcontrol/fragments/LEDControl;->getTimeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mOffTime:Landroid/widget/Button;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->offBlink:I

    invoke-direct {p0, v6}, Lcom/aokp/romcontrol/fragments/LEDControl;->getTimeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLEDButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v7}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 403
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLedScreenOn:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "led_screen_on"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 406
    const-string v3, "persist.sys.enable-charging-led"

    const-string v6, "0"

    invoke-static {v3, v6}, Lcom/aokp/romcontrol/util/Helpers;->getSystemProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, charging_led_enabled:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 408
    const-string v0, "0"

    .line 410
    :cond_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mChargingLedOn:Landroid/widget/Switch;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 411
    return-void

    .end local v0           #charging_led_enabled:Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 403
    goto :goto_0

    .restart local v0       #charging_led_enabled:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 410
    goto :goto_1
.end method

.method private saveCustomApps()V
    .locals 6

    .prologue
    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v2, moveToSettings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 416
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;

    .line 417
    .local v0, ca:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    .end local v0           #ca:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    :cond_0
    const-string v4, "|"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 423
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_custom_values"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 426
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateLEDforNew(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 489
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 490
    add-int/lit8 v2, p1, -0x1

    .line 491
    .local v2, key:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 492
    .local v1, hashKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;

    .line 493
    .local v0, custom:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    iget v3, v0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->appColor:I

    iput v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I

    .line 505
    .end local v0           #custom:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    .end local v1           #hashKey:Ljava/lang/String;
    .end local v2           #key:I
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    if-nez p1, :cond_0

    .line 498
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_color"

    iget v5, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->defaultColor:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 108
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mOnTime:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mOffTime:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0060

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mEditApp:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a006d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLedTest:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLEDButton:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLedScreenOn:Landroid/widget/Switch;

    .line 114
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mChargingLedOn:Landroid/widget/Switch;

    .line 115
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mListApps:Landroid/widget/Spinner;

    .line 116
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0068

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLedBrightness:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->timeArray:[Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->timeOutput:[I

    .line 119
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->brightnessArray:[Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->brightnessOutput:[I

    .line 121
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mResources:Landroid/content/res/Resources;

    const v1, 0x106006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->defaultColor:I

    .line 124
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_color"

    iget v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->defaultColor:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I

    .line 127
    new-instance v0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-direct {v0, p0, p0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;-><init>(Landroid/app/Fragment;Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;

    .line 132
    iput v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    .line 134
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLEDButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$1;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$1;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLEDButton:Landroid/widget/ImageView;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mOnTime:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$2;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$2;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mOffTime:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$3;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$3;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLedScreenOn:Landroid/widget/Switch;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$4;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$4;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->hasChargingFeature:Z

    .line 188
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->hasChargingFeature:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mChargingLedOn:Landroid/widget/Switch;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$5;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$5;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    :goto_0
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->parseExistingAppList()V

    .line 203
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->listAdapter:Landroid/widget/ArrayAdapter;

    .line 205
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->listAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 206
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->adapterRefreshSetting()V

    .line 207
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mListApps:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 209
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mListApps:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 210
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mListApps:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setLongClickable(Z)V

    .line 211
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mListApps:Landroid/widget/Spinner;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 213
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mEditApp:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->editButtonVisibility()V

    .line 216
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLedTest:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$6;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$6;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->hasBrightnessFeature:Z

    .line 267
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->hasBrightnessFeature:Z

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLedBrightness:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/LEDControl$7;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$7;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :goto_1
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->refreshSettings()V

    .line 300
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->startLed()V

    .line 301
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mChargingLedOn:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mLedBrightness:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 677
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 684
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 685
    return-void

    .line 679
    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_0

    .line 681
    :cond_2
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 682
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mListApps:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public onColorChanged(I)V
    .locals 5
    .parameter "color"

    .prologue
    .line 360
    iget v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    if-nez v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_color"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_color"

    iget v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->defaultColor:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I

    .line 379
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->refreshSettings()V

    .line 380
    return-void

    .line 365
    :cond_1
    iget v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 370
    iput p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I

    .line 371
    iget v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    add-int/lit8 v1, v2, -0x1

    .line 372
    .local v1, realAppInt:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    .local v0, hashKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 374
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;

    iget v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 375
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    invoke-direct {p0, v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->addCustomApp(Ljava/lang/String;)V

    .line 377
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->saveCustomApps()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 98
    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mContainer:Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    .line 100
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mResources:Landroid/content/res/Resources;

    .line 101
    const v0, 0x7f040010

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->stopLed:Z

    .line 353
    return-void
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "icon"
    .parameter "isApplication"

    .prologue
    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 659
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {p1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 660
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 670
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_0

    .line 671
    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->addCustomApp(Ljava/lang/String;)V

    .line 672
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/LEDControl;->saveCustomApps()V

    .line 674
    :cond_0
    return-void

    .line 667
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public startLed()V
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/aokp/romcontrol/fragments/LEDControl$9;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$9;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/LEDControl$9;->start()V

    .line 348
    return-void
.end method
