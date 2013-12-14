.class public Lcom/aokp/romcontrol/fragments/NavRingTargets;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "NavRingTargets.java"

# interfaces
.implements Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/NavRingTargets$5;,
        Lcom/aokp/romcontrol/fragments/NavRingTargets$H;,
        Lcom/aokp/romcontrol/fragments/NavRingTargets$AmountListener;,
        Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MENU_RESET:I = 0x1

.field private static final MENU_SAVE:I = 0x2

.field public static final REQUEST_PICK_CUSTOM_ICON:I = 0xc8

.field public static final REQUEST_PICK_LANDSCAPE_ICON:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "NavRing"


# instance fields
.field private cr:Landroid/content/ContentResolver;

.field private customIcons:[Ljava/lang/String;

.field private endPosOffset:I

.field private intentCounter:I

.field private intentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private longActivities:[Ljava/lang/String;

.field private mActionCodes:[Ljava/lang/String;

.field private mActions:[Ljava/lang/String;

.field private mBoolLongPress:Z

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCurrentUIMode:I

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mHandler:Lcom/aokp/romcontrol/fragments/NavRingTargets$H;

.field private mLefty:Z

.field private mLongPressStatus:Landroid/widget/Switch;

.field private mNavRingAmount:I

.field private mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

.field private mString:Ljava/lang/String;

.field private mTarget:I

.field private mTargetIndex:I

.field private mTargetNumAmount:Landroid/widget/Spinner;

.field private startPosOffset:I

.field private targetActivities:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 70
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    .line 87
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    .line 88
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->longActivities:[Ljava/lang/String;

    .line 89
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->customIcons:[Ljava/lang/String;

    .line 95
    iput v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    .line 102
    iput v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTarget:I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentList:Ljava/util/ArrayList;

    .line 663
    new-instance v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets$H;-><init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;Lcom/aokp/romcontrol/fragments/NavRingTargets$1;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mHandler:Lcom/aokp/romcontrol/fragments/NavRingTargets$H;

    return-void
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetNumAmount:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static funcFromString(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;
    .locals 3
    .parameter "string"

    .prologue
    .line 143
    invoke-static {}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->values()[Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    move-result-object v0

    .line 144
    .local v0, allTargs:[Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 145
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    aget-object v2, v0, v1

    .line 150
    :goto_1
    return-object v2

    .line 144
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    sget-object v2, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->NOT_IN_ENUM:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    goto :goto_1
.end method

.method private getIconFileName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navring_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTempFileUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 647
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp_icon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private maybeSwapSearchIcon()V
    .locals 6

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 628
    .local v1, context:Landroid/content/Context;
    const-string v3, "search"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v1, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v2

    .line 630
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 632
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v4, "com.android.systemui.action_assist_icon"

    const v5, 0x1080296

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 640
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private resetAll()V
    .locals 4

    .prologue
    .line 378
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02ea

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b020f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0003

    new-instance v3, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;

    invoke-direct {v3, p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets$3;-><init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 408
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 409
    return-void
.end method

.method private saveAll()V
    .locals 4

    .prologue
    .line 415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 418
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING_LONG:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->longActivities:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 420
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING_ICON:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->customIcons:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->updateDrawables()V

    .line 424
    return-void
.end method

.method private setDrawables()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x1

    .line 237
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 238
    .local v0, context:Landroid/content/Context;
    const/4 v10, 0x0

    iput v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentCounter:I

    .line 239
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 240
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetNumAmount:Landroid/widget/Spinner;

    iget v11, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 241
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mLongPressStatus:Landroid/widget/Switch;

    iget-boolean v11, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mBoolLongPress:Z

    invoke-virtual {v10, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 244
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v8, storedDraw:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/multiwaveview/TargetDrawable;>;"
    const/4 v2, 0x0

    .line 247
    .local v2, endPosOffset:I
    const/4 v5, 0x0

    .line 249
    .local v5, middleBlanks:I
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mCurrentUIMode:I

    packed-switch v10, :pswitch_data_0

    .line 280
    :goto_0
    iget v7, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    .line 281
    .local v7, middleStart:I
    move v9, v7

    .line 282
    .local v9, tqty:I
    const/4 v6, 0x0

    .line 284
    .local v6, middleFinish:I
    if-lez v5, :cond_0

    .line 285
    div-int/lit8 v10, v9, 0x2

    rem-int/lit8 v11, v9, 0x2

    add-int v7, v10, v11

    .line 286
    div-int/lit8 v6, v9, 0x2

    .line 290
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startPosOffset:I

    if-ge v3, v10, :cond_4

    .line 291
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentList:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-static {v0, v14}, Lcom/android/internal/util/aokp/NavRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    .end local v3           #i:I
    .end local v6           #middleFinish:I
    .end local v7           #middleStart:I
    .end local v9           #tqty:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->isScreenPortrait()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 252
    iput v12, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startPosOffset:I

    .line 253
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    add-int/lit8 v2, v10, 0x1

    goto :goto_0

    .line 254
    :cond_1
    iget-boolean v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mLefty:Z

    if-eqz v10, :cond_2

    .line 256
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    rem-int/lit8 v10, v10, 0x2

    rsub-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startPosOffset:I

    .line 257
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    add-int/lit8 v5, v10, 0x2

    .line 258
    const/4 v2, 0x0

    goto :goto_0

    .line 261
    :cond_2
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    div-int/lit8 v10, v10, 0x2

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startPosOffset:I

    .line 262
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startPosOffset:I

    add-int/lit8 v2, v10, -0x1

    .line 264
    goto :goto_0

    .line 266
    :pswitch_1
    iget-boolean v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mLefty:Z

    if-eqz v10, :cond_3

    .line 267
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startPosOffset:I

    .line 268
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v2, v10, 0x1

    goto :goto_0

    .line 270
    :cond_3
    iput v12, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startPosOffset:I

    .line 271
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v2, v10, 0x1

    .line 273
    goto :goto_0

    .line 275
    :pswitch_2
    iput v12, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startPosOffset:I

    .line 276
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    add-int/lit8 v2, v10, 0x1

    goto :goto_0

    .line 295
    .restart local v3       #i:I
    .restart local v6       #middleFinish:I
    .restart local v7       #middleStart:I
    .restart local v9       #tqty:I
    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v7, :cond_6

    .line 297
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->customIcons:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 298
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->customIcons:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v10, v11}, Lcom/android/internal/util/aokp/NavRingHelpers;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v1

    .line 302
    .local v1, drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :goto_3
    invoke-virtual {v1, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 303
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentList:Ljava/util/ArrayList;

    iget v11, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentCounter:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentCounter:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentCounter:I

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 300
    .end local v1           #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_5
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v10, v11}, Lcom/android/internal/util/aokp/NavRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v1

    .restart local v1       #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    goto :goto_3

    .line 309
    .end local v1           #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_6
    const/4 v4, 0x0

    .local v4, j:I
    :goto_4
    if-ge v4, v5, :cond_7

    .line 310
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentList:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-static {v0, v14}, Lcom/android/internal/util/aokp/NavRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 315
    :cond_7
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_9

    .line 317
    add-int v3, v4, v7

    .line 318
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->customIcons:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 319
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->customIcons:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v10, v11}, Lcom/android/internal/util/aokp/NavRingHelpers;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v1

    .line 323
    .restart local v1       #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :goto_6
    invoke-virtual {v1, v12}, Lcom/android/internal/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 324
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentList:Ljava/util/ArrayList;

    iget v11, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentCounter:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentCounter:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentCounter:I

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 321
    .end local v1           #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_8
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    aget-object v11, v11, v3

    invoke-static {v10, v11}, Lcom/android/internal/util/aokp/NavRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v1

    .restart local v1       #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    goto :goto_6

    .line 330
    .end local v1           #drawable:Lcom/android/internal/widget/multiwaveview/TargetDrawable;
    :cond_9
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_a

    .line 331
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentList:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-static {v0, v14}, Lcom/android/internal/util/aokp/NavRingHelpers;->getTargetDrawable(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/widget/multiwaveview/TargetDrawable;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 335
    :cond_a
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v10, v8}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(Ljava/util/ArrayList;)V

    .line 336
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->maybeSwapSearchIcon()V

    .line 337
    return-void

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "entries"
    .parameter "values"

    .prologue
    .line 610
    new-instance v1, Lcom/aokp/romcontrol/fragments/NavRingTargets$4;

    invoke-direct {v1, p0, p3}, Lcom/aokp/romcontrol/fragments/NavRingTargets$4;-><init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;[Ljava/lang/String;)V

    .line 618
    .local v1, l:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 623
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 624
    return-void
.end method

.method public isScreenPortrait()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 643
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a00a8

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 193
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 195
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a00a6

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetNumAmount:Landroid/widget/Spinner;

    .line 196
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090008

    invoke-direct {v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 198
    .local v2, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 199
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, entries:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 201
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetNumAmount:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 204
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetNumAmount:Landroid/widget/Spinner;

    new-instance v4, Lcom/aokp/romcontrol/fragments/NavRingTargets$1;

    invoke-direct {v4, p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets$1;-><init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 210
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a0091

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mLongPressStatus:Landroid/widget/Switch;

    .line 211
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mLongPressStatus:Landroid/widget/Switch;

    new-instance v4, Lcom/aokp/romcontrol/fragments/NavRingTargets$2;

    invoke-direct {v4, p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets$2;-><init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->updateDrawables()V

    .line 220
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v8, 0x64

    const/4 v11, 0x1

    .line 446
    const/4 v7, -0x1

    if-ne p2, v7, :cond_5

    .line 447
    if-eq p1, v8, :cond_0

    const/16 v7, 0x65

    if-eq p1, v7, :cond_0

    const/16 v7, 0x66

    if-ne p1, v7, :cond_2

    .line 450
    :cond_0
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v7, p1, p2, p3}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 492
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 493
    :goto_1
    return-void

    .line 452
    :cond_2
    const/16 v7, 0xc8

    if-eq p1, v7, :cond_3

    const/16 v7, 0xc9

    if-ne p1, v7, :cond_1

    .line 455
    :cond_3
    iget v7, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    invoke-direct {p0, v7}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getIconFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, iconName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 458
    .local v4, iconStream:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 463
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getTempFileUri()Landroid/net/Uri;

    move-result-object v6

    .line 465
    .local v6, selectedImageUri:Landroid/net/Uri;
    :try_start_1
    const-string v7, "NavRing"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected image path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 467
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->customIcons:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 476
    new-instance v2, Ljava/io/File;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 477
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 478
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 481
    :cond_4
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0062

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 487
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->setDrawables()V

    goto/16 :goto_0

    .line 459
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #f:Ljava/io/File;
    .end local v6           #selectedImageUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 460
    .local v1, e:Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .line 468
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #selectedImageUri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 469
    .local v5, npe:Ljava/lang/NullPointerException;
    const-string v7, "NavRing"

    const-string v8, "SeletedImageUri was null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-super {p0, p1, p2, p3}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 489
    .end local v3           #iconName:Ljava/lang/String;
    .end local v4           #iconStream:Ljava/io/FileOutputStream;
    .end local v5           #npe:Ljava/lang/NullPointerException;
    .end local v6           #selectedImageUri:Landroid/net/Uri;
    :cond_5
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 346
    const/4 v0, 0x1

    const v1, 0x7f0b02e2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020029

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 351
    const/4 v0, 0x2

    const v1, 0x7f0b02e3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 356
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f040019

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 164
    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContainer:Landroid/view/ViewGroup;

    .line 165
    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->setHasOptionsMenu(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    .line 167
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    .line 170
    invoke-static {}, Lcom/android/internal/util/aokp/NavRingHelpers;->getNavRingActions()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActionCodes:[Ljava/lang/String;

    .line 171
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActionCodes:[Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActions:[Ljava/lang/String;

    .line 172
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActions:[Ljava/lang/String;

    array-length v0, v6

    .line 173
    .local v0, actionqty:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 174
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActions:[Ljava/lang/String;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActionCodes:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v7, v8}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-instance v6, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-direct {v6, p0, p0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;-><init>(Landroid/app/Fragment;Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;)V

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    .line 178
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    const-string v7, "current_ui_mode"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 179
    .local v3, tabletui:Z
    :goto_1
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    const-string v7, "force_dualpanel"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 180
    .local v1, dualpanel:Z
    if-eqz v1, :cond_3

    .line 181
    if-eqz v3, :cond_1

    const v5, 0x7f04001b

    :cond_1
    invoke-virtual {p1, v5, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 184
    :goto_2
    return-object v4

    .end local v1           #dualpanel:Z
    .end local v3           #tabletui:Z
    :cond_2
    move v3, v4

    .line 178
    goto :goto_1

    .line 184
    .restart local v1       #dualpanel:Z
    .restart local v3       #tabletui:Z
    :cond_3
    if-eqz v3, :cond_4

    const v5, 0x7f04001a

    :cond_4
    invoke-virtual {p1, v5, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    goto :goto_2
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 596
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 604
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 370
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 362
    :pswitch_0
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->resetAll()V

    goto :goto_0

    .line 365
    :pswitch_1
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->saveAll()V

    .line 366
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b020e

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 600
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onResume()V

    .line 342
    return-void
.end method

.method public onTargetChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "target"

    .prologue
    .line 607
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 8
    .parameter "v"
    .parameter "target"

    .prologue
    const v7, 0x7f0b0211

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 572
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->intentList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    .line 573
    iget-boolean v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mBoolLongPress:Z

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, stringArray:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    iget v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->longActivities:[Ljava/lang/String;

    iget v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 580
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 592
    :goto_0
    return-void

    .line 584
    .end local v0           #stringArray:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 586
    .restart local v0       #stringArray:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    iget v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 588
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onValueChange(Ljava/lang/String;)V
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    .line 514
    invoke-static {p1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->funcFromString(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    move-result-object v2

    .line 515
    .local v2, mFromString:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;
    sget-object v4, Lcom/aokp/romcontrol/fragments/NavRingTargets$5;->$SwitchMap$com$aokp$romcontrol$fragments$NavRingTargets$DialogConstant:[I

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 567
    :goto_0
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->setDrawables()V

    .line 568
    return-void

    .line 517
    :pswitch_0
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto :goto_0

    .line 520
    :pswitch_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTarget:I

    .line 521
    sget-object v4, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING:[Ljava/lang/String;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mString:Ljava/lang/String;

    .line 522
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0212

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActions:[Ljava/lang/String;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :pswitch_2
    iput v8, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTarget:I

    .line 528
    sget-object v4, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING_LONG:[Ljava/lang/String;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mString:Ljava/lang/String;

    .line 529
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0213

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActions:[Ljava/lang/String;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :pswitch_3
    const/16 v3, 0x55

    .line 535
    .local v3, width:I
    move v0, v3

    .line 537
    .local v0, height:I
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 538
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v4, "aspectX"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string v4, "aspectY"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    const-string v4, "outputX"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    const-string v4, "outputY"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    const-string v4, "scale"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    const-string v4, "output"

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getTempFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 546
    const-string v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    const-string v4, "NavRing"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "started for result, should output to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getTempFileUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v4, 0xc8

    invoke-virtual {p0, v1, v4}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 551
    .end local v0           #height:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #width:I
    :pswitch_4
    iget v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTarget:I

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 553
    :pswitch_5
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aput-object p1, v4, v5

    goto/16 :goto_0

    .line 556
    :pswitch_6
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->longActivities:[Ljava/lang/String;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aput-object p1, v4, v5

    .line 557
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0214

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 551
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "bmp"
    .parameter "isApplication"

    .prologue
    .line 428
    iget v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTarget:I

    packed-switch v0, :pswitch_data_0

    .line 442
    :goto_0
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->setDrawables()V

    .line 443
    return-void

    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    iget v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aput-object p1, v0, v1

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->longActivities:[Ljava/lang/String;

    iget v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mTargetIndex:I

    aput-object p1, v0, v1

    .line 434
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDrawables()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 496
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->targetActivities:[Ljava/lang/String;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 499
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->longActivities:[Ljava/lang/String;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING_LONG:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 501
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->customIcons:[Ljava/lang/String;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->SYSTEMUI_NAVRING_ICON:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    const-string v2, "systemui_navring_long_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mBoolLongPress:Z

    .line 507
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    const-string v2, "systemui_navring_amount"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mNavRingAmount:I

    .line 509
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;

    const-string v2, "current_ui_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets;->mCurrentUIMode:I

    .line 510
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->setDrawables()V

    .line 511
    return-void
.end method
