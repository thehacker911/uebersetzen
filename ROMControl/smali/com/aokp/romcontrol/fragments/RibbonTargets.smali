.class public Lcom/aokp/romcontrol/fragments/RibbonTargets;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "RibbonTargets.java"

# interfaces
.implements Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/RibbonTargets$34;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$IconLocationListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$LocationListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$IconSizeListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$AnimationListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$ColumnsListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongPressListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonLongSwipeListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDismissListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$TimeOutListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonChooserListener;,
        Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;
    }
.end annotation


# static fields
.field private static final PARAMS_TOGGLE:Landroid/widget/LinearLayout$LayoutParams; = null

.field private static final PARAMS_TOGGLE_SCROLL:Landroid/widget/LinearLayout$LayoutParams; = null

.field public static final REQUEST_PICK_CUSTOM_ICON:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "Ribbon Targets"


# instance fields
.field private allToggles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allTogglesStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arrayNum:I

.field private colorPref:I

.field private filter:Landroid/content/IntentFilter;

.field private llbuttons:Landroid/widget/LinearLayout;

.field private mActionCodes:[Ljava/lang/String;

.field private mActions:[Ljava/lang/String;

.field private mAddButton:Landroid/widget/ImageButton;

.field private mAnimations:[I

.field private mAnimationsStrings:[Ljava/lang/String;

.field private mAppWindowSpace:Landroid/widget/SeekBar;

.field private mAppWindowSpaceText:Landroid/widget/TextView;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonColorize:Landroid/widget/Switch;

.field private mButtonColorizeText:Landroid/widget/TextView;

.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private mButtonInstructions:Landroid/widget/LinearLayout;

.field private mChoice:I

.field private mCloneButton:Landroid/widget/ImageButton;

.field private mCommandButtons:Landroid/view/View$OnClickListener;

.field private mCommandButtonsCon:Landroid/widget/LinearLayout;

.field mCustomIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDragHandleHeight:Landroid/widget/SeekBar;

.field private mDragHandleHeightText:Landroid/widget/TextView;

.field private mDragHandleOpacity:Landroid/widget/SeekBar;

.field private mDragHandleOpacityText:Landroid/widget/TextView;

.field private mDragHandleWidth:Landroid/widget/SeekBar;

.field private mDragHandleWidthText:Landroid/widget/TextView;

.field private mEnableBottomSwitch:Landroid/widget/Switch;

.field private mEnableBottomText:Landroid/widget/TextView;

.field private mEnableBottomWarning:Landroid/widget/TextView;

.field private mEnableLeftSwitch:Landroid/widget/Switch;

.field private mEnableLeftText:Landroid/widget/TextView;

.field private mEnableRightSwitch:Landroid/widget/Switch;

.field private mEnableRightText:Landroid/widget/TextView;

.field private mEnableText:Landroid/widget/TextView;

.field private mEnableTextSwitch:Landroid/widget/Switch;

.field private mEnableVib:Landroid/widget/TextView;

.field private mEnableVibSwitch:Landroid/widget/Switch;

.field private mFinishedSettingUp:Ljava/lang/Runnable;

.field private mGoodName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHiddenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconLocation:Landroid/widget/Spinner;

.field private mIconLocationText:Landroid/widget/TextView;

.field private mIconSize:Landroid/widget/Spinner;

.field private mIconSizeText:Landroid/widget/TextView;

.field private mLocation:Landroid/widget/Spinner;

.field private mLocationText:Landroid/widget/TextView;

.field mLongTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuRearrange:Landroid/view/MenuItem;

.field private mMenuReset:Landroid/view/MenuItem;

.field private mMenuToggles:Landroid/view/MenuItem;

.field private mPackMan:Landroid/content/pm/PackageManager;

.field private mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetButton:Landroid/widget/ImageButton;

.field mResources:Landroid/content/res/Resources;

.field private mRibbonAnimDur:Landroid/widget/SeekBar;

.field private mRibbonAnimDurText:Landroid/widget/TextView;

.field private mRibbonAnimation:Landroid/widget/Spinner;

.field private mRibbonAnimationText:Landroid/widget/TextView;

.field private mRibbonChooser:Landroid/widget/Spinner;

.field private mRibbonClickListener:Landroid/view/View$OnClickListener;

.field private mRibbonColor:Landroid/widget/Button;

.field private mRibbonColorText:Landroid/widget/TextView;

.field private mRibbonDialogReceiver:Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;

.field private mRibbonDismiss:Landroid/widget/Spinner;

.field private mRibbonDismissText:Landroid/widget/TextView;

.field private mRibbonHideIme:Landroid/widget/Switch;

.field private mRibbonHideImeText:Landroid/widget/TextView;

.field private mRibbonIconSpace:Landroid/widget/SeekBar;

.field private mRibbonIconSpaceText:Landroid/widget/TextView;

.field private mRibbonIconVibrate:Landroid/widget/Switch;

.field private mRibbonIconVibrateText:Landroid/widget/TextView;

.field private mRibbonLongPress:Landroid/widget/Spinner;

.field private mRibbonLongPressText:Landroid/widget/TextView;

.field private mRibbonLongSwipe:Landroid/widget/Spinner;

.field private mRibbonLongSwipeText:Landroid/widget/TextView;

.field private mRibbonOpacity:Landroid/widget/SeekBar;

.field private mRibbonOpacityText:Landroid/widget/TextView;

.field private mSaveButton:Landroid/widget/ImageButton;

.field private mSelectedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetupFinished:Z

.field mShortTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNum:I

.field private mTextColor:Landroid/widget/Button;

.field private mTextColorText:Landroid/widget/TextView;

.field private mTextWindowColor:Landroid/widget/Button;

.field private mTextWindowColorText:Landroid/widget/TextView;

.field private mTimeOut:Landroid/widget/Spinner;

.field private mTimeOutText:Landroid/widget/TextView;

.field private mTogglesButton:Landroid/widget/Switch;

.field private mTogglesButtonText:Landroid/widget/TextView;

.field private mWindowAnimDur:Landroid/widget/SeekBar;

.field private mWindowAnimDurText:Landroid/widget/TextView;

.field private mWindowColor:Landroid/widget/Button;

.field private mWindowColorText:Landroid/widget/TextView;

.field private mWindowColumns:Landroid/widget/Spinner;

.field private mWindowColumnsText:Landroid/widget/TextView;

.field private mWindowOpacity:Landroid/widget/SeekBar;

.field private mWindowOpacityText:Landroid/widget/TextView;

.field private metrics:Landroid/util/DisplayMetrics;

.field private ribbonColor:I

.field private ribbonNumber:I

.field private sToggles:Landroid/os/Bundle;

.field private targetsLayout:Landroid/widget/LinearLayout;

.field private textColor:I

.field private windowColor:I

.field private windowTextColor:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, -0x2

    .line 194
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->PARAMS_TOGGLE:Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->PARAMS_TOGGLE_SCROLL:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    .line 98
    iput v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    .line 99
    iput v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mChoice:I

    .line 163
    iput v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHandler:Landroid/os/Handler;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allToggles:Ljava/util/ArrayList;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allTogglesStrings:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->sToggles:Landroid/os/Bundle;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHiddenApps:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSelectedApps:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    .line 702
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$25;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$25;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mFinishedSettingUp:Ljava/lang/Runnable;

    .line 1644
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$28;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonClickListener:Landroid/view/View$OnClickListener;

    .line 1662
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$29;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtons:Landroid/view/View$OnClickListener;

    .line 2028
    return-void
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/RibbonTargets;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->onTogglesUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->textColor:I

    return v0
.end method

.method static synthetic access$1200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonChooser:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    return v0
.end method

.method static synthetic access$2200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    return v0
.end method

.method static synthetic access$2302(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    return p1
.end method

.method static synthetic access$2400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$302(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->colorPref:I

    return p1
.end method

.method static synthetic access$3100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSetupFinished:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/aokp/romcontrol/fragments/RibbonTargets;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSetupFinished:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mFinishedSettingUp:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mChoice:I

    return p1
.end method

.method static synthetic access$3900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Lcom/aokp/romcontrol/util/ShortcutPickerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimations:[I

    return-object v0
.end method

.method static synthetic access$4400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonColor:I

    return v0
.end method

.method static synthetic access$5000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    return v0
.end method

.method static synthetic access$5702(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    return p1
.end method

.method static synthetic access$5800(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->targetsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->showMultiSelectDialog()V

    return-void
.end method

.method static synthetic access$6300(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->saveButtons()V

    return-void
.end method

.method static synthetic access$6400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSelectedApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHiddenApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowTextColor:I

    return v0
.end method

.method public static funcFromString(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;
    .locals 3
    .parameter "string"

    .prologue
    .line 251
    invoke-static {}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->values()[Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    move-result-object v0

    .line 252
    .local v0, allTargs:[Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 253
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    aget-object v2, v0, v1

    .line 258
    :goto_1
    return-object v2

    .line 252
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_1
    sget-object v2, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->AWESOME_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    goto :goto_1
.end method

.method public static getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 1958
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1960
    .local v2, res:Landroid/content/res/Resources;
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1961
    .local v0, f:Ljava/io/File;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1963
    .local v1, front:Landroid/graphics/drawable/Drawable;
    return-object v1
.end method

.method private getCustomIcon(Ljava/lang/String;)Landroid/widget/ImageButton;
    .locals 2
    .parameter "uri"

    .prologue
    .line 1513
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1514
    .local v0, ib:Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1515
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1516
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1517
    return-object v0
.end method

.method private getIconFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ribbon_icon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 2
    .parameter "d"

    .prologue
    .line 1505
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1506
    .local v0, ib:Landroid/widget/ImageButton;
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1507
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1508
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1509
    return-object v0
.end method

.method private getImageButton(Ljava/lang/String;)Landroid/widget/ImageButton;
    .locals 2
    .parameter "uri"

    .prologue
    .line 1497
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 1498
    .local v0, ib:Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/internal/util/aokp/NavBarHelpers;->getIconImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1500
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1501
    return-object v0
.end method

.method private getRibbonNumber()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 316
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 317
    iput v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    if-ne v0, v2, :cond_2

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    goto :goto_0

    .line 320
    :cond_2
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 321
    const/4 v0, 0x1

    iput v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    goto :goto_0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"

    .prologue
    const/high16 v11, 0x41c0

    const/4 v10, 0x0

    .line 1967
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1969
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1971
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 1972
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1973
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1974
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1975
    .local v5, rectF:Landroid/graphics/RectF;
    const/high16 v6, 0x41c0

    .line 1976
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1977
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1978
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1979
    invoke-virtual {v0, v5, v11, v11, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1980
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1981
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1982
    return-object v2
.end method

.method private getTempFileUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 1918
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp_icon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method private lookupToggle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ident"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->sToggles:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->sToggles:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 909
    .end local p1
    :cond_0
    return-object p1
.end method

.method private onTogglesUpdate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "toggleInfo"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allToggles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 914
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->sToggles:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 915
    const-string v0, "toggles"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allToggles:Ljava/util/ArrayList;

    .line 916
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->sToggles:Landroid/os/Bundle;

    .line 917
    return-void
.end method

.method private saveButtons()V
    .locals 4

    .prologue
    .line 1521
    const-string v0, "Ribbon Targets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving ribbon targets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    const-string v0, "Ribbon Targets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving ribbon targets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const-string v0, "Ribbon Targets"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving ribbon targets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_SHORT:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putArrayList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1526
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_LONG:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putArrayList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1528
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_ICONS:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putArrayList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1530
    return-void
.end method

.method private showHideAppsDialog()V
    .locals 17

    .prologue
    .line 1822
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1823
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHiddenApps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 1825
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v15, "app_window_hidden_apps"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getArrayList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHiddenApps:Ljava/util/ArrayList;

    .line 1827
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    .local v2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1829
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    const/4 v15, 0x0

    invoke-direct {v9, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1830
    .local v9, mainIntent:Landroid/content/Intent;
    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    const/4 v14, 0x0

    invoke-virtual {v13, v9, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 1832
    .local v12, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_1

    .line 1833
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 1834
    .local v11, p:Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1835
    .local v1, activity:Landroid/content/pm/ActivityInfo;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    .local v10, name:Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v7, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1839
    .local v7, intent:Landroid/content/Intent;
    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1840
    const/high16 v14, 0x1020

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1842
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1843
    if-eqz v7, :cond_0

    .line 1844
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1848
    .end local v1           #activity:Landroid/content/pm/ActivityInfo;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v10           #name:Landroid/content/ComponentName;
    .end local v11           #p:Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v6, v14, :cond_2

    .line 1849
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1851
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    sget-object v15, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1855
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v8, v14, [Ljava/lang/String;

    .line 1856
    .local v8, itemStrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v4, v14, [Z

    .line 1859
    .local v4, checkedItems:[Z
    const/4 v6, 0x0

    :goto_2
    array-length v14, v8

    if-ge v6, v14, :cond_3

    .line 1860
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v8, v6

    .line 1859
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1864
    :cond_3
    const/4 v6, 0x0

    :goto_3
    array-length v14, v4

    if-ge v6, v14, :cond_4

    .line 1865
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mHiddenApps:Ljava/util/ArrayList;

    aget-object v15, v8, v6

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    aput-boolean v14, v4, v6

    .line 1864
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1868
    :cond_4
    const v14, 0x7f0b024e

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1869
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1870
    new-instance v14, Lcom/aokp/romcontrol/fragments/RibbonTargets$32;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$32;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1878
    const v14, 0x7f0b012e

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1879
    new-instance v14, Lcom/aokp/romcontrol/fragments/RibbonTargets$33;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$33;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual {v3, v8, v4, v14}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1891
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1892
    .local v5, d:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1893
    return-void
.end method

.method private showMultiSelectDialog()V
    .locals 18

    .prologue
    .line 1729
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1730
    .local v3, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1731
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSelectedApps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1732
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1733
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1734
    .local v2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1735
    .local v14, pm:Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v10, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1736
    .local v10, mainIntent:Landroid/content/Intent;
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1737
    const/4 v15, 0x0

    invoke-virtual {v14, v10, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 1738
    .local v13, packs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_1

    .line 1739
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1740
    .local v12, p:Landroid/content/pm/ResolveInfo;
    iget-object v1, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1741
    .local v1, activity:Landroid/content/pm/ActivityInfo;
    new-instance v11, Landroid/content/ComponentName;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    .local v11, name:Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v7, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1745
    .local v7, intent:Landroid/content/Intent;
    const-string v15, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1746
    const/high16 v15, 0x1020

    invoke-virtual {v7, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1748
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1749
    if-eqz v7, :cond_0

    .line 1750
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1738
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1754
    .end local v1           #activity:Landroid/content/pm/ActivityInfo;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v11           #name:Landroid/content/ComponentName;
    .end local v12           #p:Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_2

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1754
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1758
    :cond_2
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_3

    .line 1759
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1762
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    sget-object v16, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1763
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 1764
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1765
    .local v9, j:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1763
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1767
    .end local v9           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    sget-object v16, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static/range {v15 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    array-length v15, v15

    add-int/lit8 v6, v15, -0x3

    :goto_4
    const/4 v15, -0x1

    if-le v6, v15, :cond_5

    .line 1772
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mApps:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1773
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v6

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1771
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 1777
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v8, v15, [Ljava/lang/String;

    .line 1778
    .local v8, itemStrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    new-array v4, v15, [Z

    .line 1781
    .local v4, checkedItems:[Z
    const/4 v6, 0x0

    :goto_5
    array-length v15, v8

    if-ge v6, v15, :cond_6

    .line 1782
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mGoodName:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v8, v6

    .line 1781
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1786
    :cond_6
    const/4 v6, 0x0

    :goto_6
    array-length v15, v4

    if-ge v6, v15, :cond_7

    .line 1787
    const/4 v15, 0x0

    aput-boolean v15, v4, v6

    .line 1786
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1790
    :cond_7
    const v15, 0x7f0b0255

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1791
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1792
    new-instance v15, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$30;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual {v3, v15}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1804
    const v15, 0x7f0b012e

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1805
    new-instance v15, Lcom/aokp/romcontrol/fragments/RibbonTargets$31;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$31;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual {v3, v8, v4, v15}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1817
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 1818
    .local v5, d:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1819
    return-void
.end method

.method private updateSwitches()V
    .locals 10

    .prologue
    const v9, 0x7f0b0049

    const v8, 0x7f0b0046

    const v7, 0x7f0b0044

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 944
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1110041

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 946
    .local v0, hasNavBarByDefault:Z
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "nav_hide_enable"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 948
    .local v1, navBarAutoHide:Z
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "navigation_bar_show"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 950
    .local v2, navBarEnabled:Z
    iget v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    packed-switch v3, :pswitch_data_0

    .line 1244
    :pswitch_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuRearrange:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    .line 1245
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuRearrange:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1247
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuReset:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1248
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuToggles:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1250
    :cond_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideImeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1251
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideIme:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1252
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1253
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButton:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1254
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1255
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1256
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimationText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1257
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1258
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismissText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1259
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1260
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1262
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPressText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1263
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1264
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1265
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1266
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1267
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1268
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1269
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1270
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1271
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1272
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1273
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1274
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1275
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1276
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1277
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidthText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeightText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1279
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1281
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1282
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1283
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1284
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1285
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1286
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVib:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1287
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVibSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1288
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOutText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1289
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonInstructions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1290
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtonsCon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1291
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->llbuttons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1292
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrateText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_10

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1293
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrate:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_11

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1294
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1295
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1296
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1298
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1299
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1300
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableTextSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1301
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1302
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1303
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorize:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1304
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1305
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1306
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1307
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1308
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1310
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumnsText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1311
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1312
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1313
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1314
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1315
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1319
    :goto_2
    return-void

    .line 952
    :pswitch_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuRearrange:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 953
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuReset:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 954
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuToggles:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 955
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    .line 956
    :cond_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    if-eqz v1, :cond_2

    .line 958
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomWarning:Landroid/widget/TextView;

    const v6, 0x7f0b023f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 963
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideImeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 964
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideIme:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 965
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 966
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 967
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimationText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 968
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 969
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismissText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 970
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 971
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 972
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButton:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 973
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 974
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 975
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPressText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 976
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 977
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 978
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 979
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 980
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 981
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 982
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 983
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 984
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 985
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 986
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 987
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 988
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidthText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 990
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeightText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 991
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 992
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 993
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 994
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 995
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 996
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 997
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 998
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOutText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 999
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVib:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_4

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1000
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVibSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1001
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonInstructions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1002
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtonsCon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1003
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->llbuttons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1004
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrateText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_6
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrate:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_7
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1006
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1008
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1010
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1012
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableTextSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1013
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorize:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1016
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1018
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1019
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1020
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1021
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1022
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumnsText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1024
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1025
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1026
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 961
    :cond_3
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_4
    move v3, v5

    .line 999
    goto/16 :goto_4

    :cond_5
    move v3, v5

    .line 1000
    goto/16 :goto_5

    :cond_6
    move v3, v5

    .line 1004
    goto/16 :goto_6

    :cond_7
    move v3, v5

    .line 1005
    goto/16 :goto_7

    .line 1030
    :pswitch_2
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuRearrange:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1031
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuReset:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1032
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuToggles:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1033
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideImeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1034
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideIme:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1035
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1036
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButton:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1037
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1038
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1039
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimationText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1041
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismissText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1042
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1043
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1044
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1045
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPressText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1047
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1048
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1049
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1051
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1052
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1053
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1054
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1055
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1056
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1057
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1058
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1059
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1060
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidthText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1061
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeightText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1062
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1064
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1065
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1066
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1067
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1069
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOutText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1070
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVib:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_8
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1071
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVibSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_9
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1072
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonInstructions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1073
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtonsCon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1074
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->llbuttons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1075
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrateText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_a

    move v3, v4

    :goto_a
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrate:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_b

    move v3, v4

    :goto_b
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1077
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1078
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1079
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1080
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1081
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1082
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1083
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableTextSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1084
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorize:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1087
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1088
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1089
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1090
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1091
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1092
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1093
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumnsText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1094
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1095
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1096
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1097
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1098
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_8
    move v3, v5

    .line 1070
    goto/16 :goto_8

    :cond_9
    move v3, v5

    .line 1071
    goto/16 :goto_9

    :cond_a
    move v3, v5

    .line 1075
    goto/16 :goto_a

    :cond_b
    move v3, v5

    .line 1076
    goto :goto_b

    .line 1101
    :pswitch_3
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuRearrange:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1102
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuReset:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1103
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuToggles:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0048

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1104
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideImeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideIme:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1106
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1107
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButton:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1108
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1109
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1110
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimationText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1111
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1112
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismissText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1113
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1114
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1115
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1116
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPressText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1117
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1118
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1119
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1120
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1121
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1122
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1123
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1124
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1125
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1126
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1127
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1128
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1129
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1130
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1131
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidthText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1132
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeightText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1133
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1134
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1135
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1136
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1137
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1138
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1139
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1140
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOutText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVib:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_c

    move v3, v4

    :goto_c
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVibSwitch:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_d

    move v3, v4

    :goto_d
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1143
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonInstructions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1144
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtonsCon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1145
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->llbuttons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1146
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrateText:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_e

    move v3, v4

    :goto_e
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1147
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrate:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->hasVibration:Z

    if-eqz v3, :cond_f

    move v3, v4

    :goto_f
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1148
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1150
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1152
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1154
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableTextSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1155
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1156
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1157
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorize:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1158
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1159
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1160
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1161
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1162
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1163
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1164
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumnsText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1166
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1168
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1169
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    move v3, v5

    .line 1141
    goto/16 :goto_c

    :cond_d
    move v3, v5

    .line 1142
    goto/16 :goto_d

    :cond_e
    move v3, v5

    .line 1146
    goto/16 :goto_e

    :cond_f
    move v3, v5

    .line 1147
    goto :goto_f

    .line 1172
    :pswitch_4
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuRearrange:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1173
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuReset:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0045

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1174
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuToggles:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1175
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideImeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1176
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideIme:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1177
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButtonText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1178
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButton:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1179
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1180
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1181
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimationText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1182
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1183
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismissText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1184
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1185
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1186
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1187
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPressText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1189
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomWarning:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1190
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1191
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1193
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1194
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1195
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1196
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1197
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1198
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1199
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1200
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1201
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1202
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidthText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1203
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeightText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1204
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1205
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1206
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1207
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1208
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1209
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocationText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1210
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1211
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVib:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1212
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVibSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1213
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOutText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1215
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonInstructions:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1216
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtonsCon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1217
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->llbuttons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1218
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrateText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1219
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrate:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1220
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1221
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1222
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1223
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1224
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1225
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1226
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableTextSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1227
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1228
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorizeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1229
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorize:Landroid/widget/Switch;

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setVisibility(I)V

    .line 1230
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1231
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1232
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColorText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1233
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1234
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacityText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1235
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1236
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumnsText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1237
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1238
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDurText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1239
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1240
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpaceText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1241
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    move v3, v5

    .line 1292
    goto/16 :goto_0

    :cond_11
    move v3, v5

    .line 1293
    goto/16 :goto_1

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public cloneDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "entries"
    .parameter "values"

    .prologue
    .line 1606
    new-instance v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;

    invoke-direct {v1, p0, p3}, Lcom/aokp/romcontrol/fragments/RibbonTargets$27;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;[Ljava/lang/String;)V

    .line 1636
    .local v1, l:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1641
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1642
    return-void
.end method

.method public createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "entries"
    .parameter "values"

    .prologue
    .line 1589
    new-instance v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$26;

    invoke-direct {v1, p0, p3}, Lcom/aokp/romcontrol/fragments/RibbonTargets$26;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;[Ljava/lang/String;)V

    .line 1597
    .local v1, l:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1602
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1603
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v8, 0x64

    .line 1986
    const/4 v7, -0x1

    if-ne p2, v7, :cond_4

    .line 1987
    if-eq p1, v8, :cond_0

    const/16 v7, 0x65

    if-eq p1, v7, :cond_0

    const/16 v7, 0x66

    if-ne p1, v7, :cond_2

    .line 1990
    :cond_0
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v7, p1, p2, p3}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 2025
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2026
    :goto_1
    return-void

    .line 1992
    :cond_2
    const/16 v7, 0xc8

    if-ne p1, v7, :cond_1

    .line 1994
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getIconFileName()Ljava/lang/String;

    move-result-object v3

    .line 1995
    .local v3, iconName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1997
    .local v4, iconStream:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2002
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getTempFileUri()Landroid/net/Uri;

    move-result-object v6

    .line 2004
    .local v6, selectedImageUri:Landroid/net/Uri;
    :try_start_1
    const-string v7, "Ribbon Targets"

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

    .line 2005
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2006
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2012
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2015
    new-instance v2, Ljava/io/File;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2017
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2020
    :cond_3
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    goto :goto_0

    .line 1998
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #f:Ljava/io/File;
    .end local v6           #selectedImageUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 1999
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 2007
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #selectedImageUri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 2008
    .local v5, npe:Ljava/lang/NullPointerException;
    const-string v7, "Ribbon Targets"

    const-string v8, "SeletedImageUri was null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-super {p0, p1, p2, p3}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 2022
    .end local v3           #iconName:Ljava/lang/String;
    .end local v4           #iconStream:Ljava/io/FileOutputStream;
    .end local v5           #npe:Ljava/lang/NullPointerException;
    .end local v6           #selectedImageUri:Landroid/net/Uri;
    :cond_4
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    goto/16 :goto_0
.end method

.method public onColorChanged(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 1929
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->colorPref:I

    packed-switch v0, :pswitch_data_0

    .line 1955
    :goto_0
    return-void

    .line 1931
    :pswitch_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->SWIPE_RIBBON_COLOR:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1933
    iput p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonColor:I

    .line 1934
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 1937
    :pswitch_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TEXT_COLOR:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1939
    iput p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->textColor:I

    .line 1940
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 1943
    :pswitch_2
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v1, "app_window_color_bg"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1945
    iput p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowColor:I

    .line 1946
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 1949
    :pswitch_3
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v1, "app_window_color_text"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1951
    iput p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowTextColor:I

    .line 1952
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 1929
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 263
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setHasOptionsMenu(Z)V

    .line 265
    new-instance v5, Lcom/aokp/romcontrol/fragments/RibbonTargets$1;

    invoke-direct {v5, p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$1;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.android.systemui.statusbar.toggles.ACTION_BROADCAST_TOGGLES"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.systemui.statusbar.toggles.ACTION_REQUEST_TOGGLES"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v4, request:Landroid/content/Intent;
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    const v5, 0x7f0b0015

    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setTitle(I)V

    .line 284
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 286
    .local v3, prefs:Landroid/preference/PreferenceScreen;
    new-instance v5, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-direct {v5, p0, p0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;-><init>(Landroid/app/Fragment;Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;)V

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    .line 287
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mPackMan:Landroid/content/pm/PackageManager;

    .line 288
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mResources:Landroid/content/res/Resources;

    .line 290
    new-instance v5, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;

    invoke-direct {v5, p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDialogReceiver:Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;

    .line 291
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->filter:Landroid/content/IntentFilter;

    .line 292
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->filter:Landroid/content/IntentFilter;

    const-string v6, "com.aokp.romcontrol.ACTION_RIBBON_DIALOG_DISMISS"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDialogReceiver:Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->metrics:Landroid/util/DisplayMetrics;

    .line 296
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->wm:Landroid/view/WindowManager;

    .line 297
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->wm:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 300
    invoke-static {}, Lcom/android/internal/util/aokp/NavBarHelpers;->getNavBarActions()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;

    .line 301
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    .line 302
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    array-length v0, v5

    .line 303
    .local v0, actionqty:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 304
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getAnimationsList()[I

    move-result-object v5

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimations:[I

    .line 308
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimations:[I

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimationsStrings:[Ljava/lang/String;

    .line 309
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimations:[I

    array-length v1, v5

    .line 310
    .local v1, animqty:I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 311
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimationsStrings:[Ljava/lang/String;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimations:[I

    aget v7, v7, v2

    invoke-static {v6, v7}, Lcom/android/internal/util/aokp/AwesomeAnimationHelper;->getProperName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    :cond_1
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 848
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 849
    const v0, 0x7f0d0003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 850
    const v0, 0x7f0a011f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuRearrange:Landroid/view/MenuItem;

    .line 851
    const v0, 0x7f0a011e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuReset:Landroid/view/MenuItem;

    .line 852
    const v0, 0x7f0a0120

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mMenuToggles:Landroid/view/MenuItem;

    .line 853
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 26
    .parameter "inflater"
    .parameter "container"
    .parameter "savedinstanceState"

    .prologue
    .line 328
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setHasOptionsMenu(Z)V

    .line 329
    const v21, 0x7f04001e

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, p2

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 330
    .local v17, ll:Landroid/view/View;
    const v21, 0x7f0a0012

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mResetButton:Landroid/widget/ImageButton;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mResetButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtons:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    const v21, 0x7f0a0013

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAddButton:Landroid/widget/ImageButton;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAddButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtons:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const v21, 0x7f0a0014

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSaveButton:Landroid/widget/ImageButton;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mSaveButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtons:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    const v21, 0x7f0a00ae

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageButton;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCloneButton:Landroid/widget/ImageButton;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCloneButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtons:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v21, 0x7f0a00aa

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonContainer:Landroid/widget/LinearLayout;

    .line 339
    const v21, 0x7f0a00af

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonInstructions:Landroid/widget/LinearLayout;

    .line 340
    const v21, 0x7f0a00ad

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCommandButtonsCon:Landroid/widget/LinearLayout;

    .line 341
    const v21, 0x7f0a00b0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->llbuttons:Landroid/widget/LinearLayout;

    .line 342
    const v21, 0x7f0a00ac

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonChooser:Landroid/widget/Spinner;

    .line 343
    new-instance v20, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1090008

    invoke-direct/range {v20 .. v22}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 345
    .local v20, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v21, 0x1090009

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 346
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060023

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 347
    .local v11, entries:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    array-length v0, v11

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_0

    .line 348
    aget-object v21, v11, v14

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 347
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 350
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonChooser:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonChooser:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$2;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 358
    const v21, 0x7f0a00e2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColorText:Landroid/widget/TextView;

    .line 359
    const v21, 0x7f0a00e3

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$3;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    const v21, 0x7f0a00ec

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColorText:Landroid/widget/TextView;

    .line 371
    const v21, 0x7f0a00ed

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$4;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    const v21, 0x7f0a00ee

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColorText:Landroid/widget/TextView;

    .line 383
    const v21, 0x7f0a00ef

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$5;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$5;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v21, 0x7f0a00e4

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColorText:Landroid/widget/TextView;

    .line 395
    const v21, 0x7f0a00e5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$6;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    const v21, 0x7f0a00cc

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOutText:Landroid/widget/TextView;

    .line 407
    const v21, 0x7f0a00cd

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    .line 408
    new-instance v12, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1090008

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v12, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 410
    .local v12, hideAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v21, 0x1090009

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f06006e

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 413
    .local v13, hideEntries:[Ljava/lang/String;
    const/4 v14, 0x0

    :goto_1
    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_1

    .line 414
    aget-object v21, v13, v14

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 413
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 416
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$7;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 423
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1090008

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 425
    .local v4, actionsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v21, 0x1090009

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 426
    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_2

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v14

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 426
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 430
    :cond_2
    const v21, 0x7f0a00c4

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipeText:Landroid/widget/TextView;

    .line 431
    const v21, 0x7f0a00c5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$8;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 439
    const v21, 0x7f0a00c6

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPressText:Landroid/widget/TextView;

    .line 440
    const v21, 0x7f0a00c7

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$9;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 448
    const v21, 0x7f0a00c8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismissText:Landroid/widget/TextView;

    .line 449
    new-instance v9, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1090008

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v9, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 451
    .local v9, dismissAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v21, 0x1090009

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060076

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 454
    .local v10, dismissEntries:[Ljava/lang/String;
    const/4 v14, 0x0

    :goto_3
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_3

    .line 455
    aget-object v21, v10, v14

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 454
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 457
    :cond_3
    const v21, 0x7f0a00c9

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$10;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$10;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 465
    const v21, 0x7f0a00d4

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumnsText:Landroid/widget/TextView;

    .line 466
    const v21, 0x7f0a00d5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    .line 467
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1090008

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 469
    .local v6, columnsAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v21, 0x1090009

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060078

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, columnsEntries:[Ljava/lang/String;
    const/4 v14, 0x0

    :goto_4
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_4

    .line 473
    aget-object v21, v7, v14

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 472
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 475
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$11;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$11;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060079

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 484
    .local v8, columnsValues:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColumns:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v24, "app_window_columns"

    const/16 v25, 0x5

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->setSelection(I)V

    .line 488
    const v21, 0x7f0a00b1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomWarning:Landroid/widget/TextView;

    .line 490
    const v21, 0x7f0a00b2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomText:Landroid/widget/TextView;

    .line 491
    const v21, 0x7f0a00b3

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomSwitch:Landroid/widget/Switch;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomSwitch:Landroid/widget/Switch;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    sget-object v23, Landroid/provider/Settings$System;->ENABLE_RIBBON_LOCATION:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setChecked(Z)V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableBottomSwitch:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$12;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$12;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 504
    const v21, 0x7f0a00b4

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftText:Landroid/widget/TextView;

    .line 505
    const v21, 0x7f0a00b5

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftSwitch:Landroid/widget/Switch;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftSwitch:Landroid/widget/Switch;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    sget-object v23, Landroid/provider/Settings$System;->ENABLE_RIBBON_LOCATION:[Ljava/lang/String;

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setChecked(Z)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableLeftSwitch:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$13;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$13;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 516
    const v21, 0x7f0a00b6

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightText:Landroid/widget/TextView;

    .line 517
    const v21, 0x7f0a00b7

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightSwitch:Landroid/widget/Switch;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightSwitch:Landroid/widget/Switch;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    sget-object v23, Landroid/provider/Settings$System;->ENABLE_RIBBON_LOCATION:[Ljava/lang/String;

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setChecked(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableRightSwitch:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$14;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$14;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 528
    const v21, 0x7f0a00c2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideImeText:Landroid/widget/TextView;

    .line 529
    const v21, 0x7f0a00c3

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideIme:Landroid/widget/Switch;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideIme:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$15;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$15;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 539
    const v21, 0x7f0a00bc

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableText:Landroid/widget/TextView;

    .line 540
    const v21, 0x7f0a00bd

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableTextSwitch:Landroid/widget/Switch;

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableTextSwitch:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$16;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$16;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 550
    const v21, 0x7f0a00b8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVib:Landroid/widget/TextView;

    .line 551
    const v21, 0x7f0a00b9

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVibSwitch:Landroid/widget/Switch;

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVibSwitch:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$17;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$17;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 561
    const v21, 0x7f0a00ba

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrateText:Landroid/widget/TextView;

    .line 562
    const v21, 0x7f0a00bb

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrate:Landroid/widget/Switch;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrate:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$18;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$18;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 572
    const v21, 0x7f0a00be

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorizeText:Landroid/widget/TextView;

    .line 573
    const v21, 0x7f0a00bf

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorize:Landroid/widget/Switch;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorize:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$19;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$19;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 583
    const v21, 0x7f0a00c0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButtonText:Landroid/widget/TextView;

    .line 584
    const v21, 0x7f0a00c1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Switch;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButton:Landroid/widget/Switch;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButton:Landroid/widget/Switch;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$20;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$20;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 593
    const v21, 0x7f0a00ca

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSizeText:Landroid/widget/TextView;

    .line 594
    const v21, 0x7f0a00cb

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    .line 595
    new-instance v15, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1090008

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 597
    .local v15, iconAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v21, 0x1090009

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060072

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 600
    .local v16, iconEntries:[Ljava/lang/String;
    const/4 v14, 0x0

    :goto_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_5

    .line 601
    aget-object v21, v16, v14

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 600
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 603
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$21;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$21;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 610
    const v21, 0x7f0a00ce

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocationText:Landroid/widget/TextView;

    .line 611
    const v21, 0x7f0a00cf

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    .line 612
    new-instance v18, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1090008

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 614
    .local v18, locAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v21, 0x1090009

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f060074

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 617
    .local v19, locEntries:[Ljava/lang/String;
    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_6

    .line 618
    aget-object v21, v19, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 617
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 620
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$22;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$22;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 627
    const v21, 0x7f0a00d2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimationText:Landroid/widget/TextView;

    .line 628
    const v21, 0x7f0a00d3

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    .line 629
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const v22, 0x1090008

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 631
    .local v5, animAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v21, 0x1090009

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 632
    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimationsStrings:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_7

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimationsStrings:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v14

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 632
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 635
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$23;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$23;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 642
    const v21, 0x7f0a00d0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocationText:Landroid/widget/TextView;

    .line 643
    const v21, 0x7f0a00d1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Spinner;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    move-object/from16 v21, v0

    new-instance v22, Lcom/aokp/romcontrol/fragments/RibbonTargets$24;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets$24;-><init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 651
    const v21, 0x7f0a00ea

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpaceText:Landroid/widget/TextView;

    .line 652
    const v21, 0x7f0a00d8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacityText:Landroid/widget/TextView;

    .line 653
    const v21, 0x7f0a00de

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacityText:Landroid/widget/TextView;

    .line 654
    const v21, 0x7f0a00e0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDurText:Landroid/widget/TextView;

    .line 655
    const v21, 0x7f0a00e8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDurText:Landroid/widget/TextView;

    .line 656
    const v21, 0x7f0a00da

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidthText:Landroid/widget/TextView;

    .line 657
    const v21, 0x7f0a00dc

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeightText:Landroid/widget/TextView;

    .line 658
    const v21, 0x7f0a00d6

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpaceText:Landroid/widget/TextView;

    .line 659
    const v21, 0x7f0a00d9

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    .line 660
    const v21, 0x7f0a00eb

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    .line 661
    const v21, 0x7f0a00df

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    .line 662
    const v21, 0x7f0a00e1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    .line 663
    const v21, 0x7f0a00e9

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    .line 664
    const v21, 0x7f0a00db

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    .line 665
    const v21, 0x7f0a00dd

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    .line 666
    const v21, 0x7f0a00d7

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 675
    const v21, 0x7f0a00e6

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacityText:Landroid/widget/TextView;

    .line 676
    const v21, 0x7f0a00e7

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/SeekBar;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 678
    const v21, 0x7f0a00e3

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    .line 679
    const v21, 0x7f0a00e2

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColorText:Landroid/widget/TextView;

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setupButtons()V

    .line 681
    return-object v17
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 932
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 934
    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDialogReceiver:Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDialogReceiver:Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 938
    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDialogReceiver:Lcom/aokp/romcontrol/fragments/RibbonTargets$RibbonDialogReceiver;

    .line 940
    :cond_1
    invoke-super {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onDestroy()V

    .line 941
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x1

    .line 857
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 901
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 859
    :pswitch_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->resetRibbon()V

    .line 860
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->setupButtons()V

    .line 861
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    move v1, v12

    .line 862
    goto :goto_0

    .line 864
    :pswitch_1
    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 865
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v3, aTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 867
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "**null**"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 871
    :cond_0
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/util/aokp/NavBarHelpers;->getProperSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 875
    :cond_1
    new-instance v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    invoke-direct {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;-><init>()V

    .line 876
    .local v0, fragment:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    iget v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    invoke-virtual/range {v0 .. v7}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->setResources(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 878
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "rearrange"

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .end local v0           #fragment:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;
    .end local v3           #aTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #i:I
    :goto_3
    move v1, v12

    .line 882
    goto :goto_0

    .line 880
    :cond_2
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->showHideAppsDialog()V

    goto :goto_3

    .line 884
    :pswitch_2
    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 885
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allTogglesStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 886
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_4
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allToggles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 887
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allTogglesStrings:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allToggles:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->lookupToggle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 889
    :cond_4
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->SWIPE_RIBBON_TOGGLES:[Ljava/lang/String;

    iget v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v2, v2, v4

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getArrayList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 891
    .local v9, mToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    invoke-direct {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;-><init>()V

    .line 892
    .local v0, fragment:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allToggles:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->allTogglesStrings:Ljava/util/ArrayList;

    iget v10, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->setResources(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 894
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "toggles"

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .end local v0           #fragment:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;
    .end local v9           #mToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #i:I
    :goto_5
    move v1, v12

    .line 899
    goto/16 :goto_0

    .line 896
    :cond_5
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    const v2, 0x7f0b004a

    invoke-static {v1, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a011e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 1689
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_DRAG_HANDLE_OPACITY:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1718
    :cond_0
    :goto_0
    return-void

    .line 1692
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_2

    .line 1693
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->SWIPE_RIBBON_OPACITY:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1695
    :cond_2
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_3

    .line 1696
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v1, "app_window_opacity"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1697
    :cond_3
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_4

    .line 1698
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_DRAG_HANDLE_WEIGHT:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1701
    :cond_4
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_5

    .line 1702
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_DRAG_HANDLE_HEIGHT:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1705
    :cond_5
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_6

    .line 1706
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_ICON_SPACE:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1708
    :cond_6
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_7

    .line 1709
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_ANIMATION_DURATION:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1712
    :cond_7
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_8

    .line 1713
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v1, "app_window_animation_duration"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1715
    :cond_8
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v1, "app_window_spacing"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 926
    invoke-super {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onResume()V

    .line 927
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    .line 928
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1722
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1726
    return-void
.end method

.method public onValueChange(Ljava/lang/String;)V
    .locals 8
    .parameter "uri"

    .prologue
    const v7, 0x7f0b0211

    const/4 v6, 0x1

    .line 1533
    invoke-static {p1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->funcFromString(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    move-result-object v2

    .line 1534
    .local v2, mFromString:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;
    sget-object v4, Lcom/aokp/romcontrol/fragments/RibbonTargets$34;->$SwitchMap$com$aokp$romcontrol$fragments$RibbonTargets$DialogConstant:[I

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1585
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    .line 1586
    return-void

    .line 1536
    :pswitch_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mChoice:I

    .line 1537
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    :pswitch_1
    iput v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mChoice:I

    .line 1543
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActions:[Ljava/lang/String;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1548
    :pswitch_2
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    goto :goto_0

    .line 1551
    :pswitch_3
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1552
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1553
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1556
    :pswitch_4
    const/16 v3, 0x5a

    .line 1557
    .local v3, width:I
    move v0, v3

    .line 1559
    .local v0, height:I
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1560
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1562
    const-string v4, "aspectX"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1563
    const-string v4, "aspectY"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1564
    const-string v4, "outputX"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1565
    const-string v4, "outputY"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1566
    const-string v4, "scale"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1567
    const-string v4, "output"

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getTempFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1568
    const-string v4, "outputFormat"

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1569
    const-string v4, "Ribbon Targets"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "started for result, should output to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getTempFileUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/16 v4, 0xc8

    invoke-virtual {p0, v1, v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1573
    .end local v0           #height:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #width:I
    :pswitch_5
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    add-int/lit8 v5, v5, 0x1

    const-string v6, "**null**"

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1574
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    add-int/lit8 v5, v5, 0x1

    const-string v6, "**null**"

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1575
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    add-int/lit8 v5, v5, 0x1

    const-string v6, "**null**"

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1578
    :pswitch_6
    iget v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mChoice:I

    if-ne v4, v6, :cond_0

    .line 1579
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1581
    :cond_0
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    iget v5, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-virtual {v4, v5, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public refreshButtons()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1461
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->llbuttons:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1462
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->targetsLayout:Landroid/widget/LinearLayout;

    .line 1463
    new-instance v6, Landroid/widget/HorizontalScrollView;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 1464
    .local v6, targetScrollView:Landroid/widget/HorizontalScrollView;
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->targetsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1465
    invoke-virtual {v6, v10}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1466
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1467
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 1468
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1469
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "**null**"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1470
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->targetsLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getCustomIcon(Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v8

    sget-object v10, Lcom/aokp/romcontrol/fragments/RibbonTargets;->PARAMS_TOGGLE_SCROLL:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v9, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1467
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1472
    :cond_0
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v10, "**null**"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    :goto_2
    invoke-static {v9, v8}, Lcom/android/internal/util/aokp/NavBarHelpers;->getIconImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1475
    .local v5, mIcon:Landroid/graphics/drawable/Drawable;
    const/high16 v8, 0x4240

    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->metrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v2, v8

    .line 1476
    .local v2, desiredSize:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 1477
    .local v7, width:I
    if-le v7, v2, :cond_1

    move-object v8, v5

    .line 1478
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1479
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 1480
    const/4 v8, 0x0

    invoke-static {v1, v2, v2, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1482
    .local v0, bitmapOrig:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5           #mIcon:Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v5, v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1486
    .end local v0           #bitmapOrig:Landroid/graphics/Bitmap;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .restart local v5       #mIcon:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->targetsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getImageButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v9

    sget-object v10, Lcom/aokp/romcontrol/fragments/RibbonTargets;->PARAMS_TOGGLE_SCROLL:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1472
    .end local v2           #desiredSize:I
    .end local v5           #mIcon:Landroid/graphics/drawable/Drawable;
    .end local v7           #width:I
    :cond_2
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_2

    .line 1489
    :cond_3
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->targetsLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getImageButton(Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v8

    sget-object v10, Lcom/aokp/romcontrol/fragments/RibbonTargets;->PARAMS_TOGGLE_SCROLL:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v9, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1492
    :cond_4
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->targetsLayout:Landroid/widget/LinearLayout;

    sget-object v9, Lcom/aokp/romcontrol/fragments/RibbonTargets;->PARAMS_TOGGLE:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v8, v9}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->llbuttons:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1494
    return-void
.end method

.method public resetRibbon()V
    .locals 3

    .prologue
    .line 1322
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_SHORT:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1325
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_LONG:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1327
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->ENABLE_RIBBON_TEXT:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 1329
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_ICON_SIZE:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1330
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TEXT_COLOR:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1331
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_ICONS:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1336
    :goto_0
    return-void

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v1, "app_window_hidden_apps"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setupButtons()V
    .locals 15

    .prologue
    const/16 v14, 0x32

    const/4 v10, 0x5

    const/high16 v13, -0x100

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1339
    iget v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    const/16 v7, 0xa

    if-ge v6, v7, :cond_3

    .line 1340
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getRibbonNumber()V

    .line 1341
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->updateSwitches()V

    .line 1342
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1343
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1344
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1345
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Settings$System;->RIBBON_TARGETS_SHORT:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getArrayList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    .line 1347
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Settings$System;->RIBBON_TARGETS_LONG:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getArrayList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    .line 1349
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Settings$System;->RIBBON_TARGETS_ICONS:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getArrayList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mCustomIcons:Ljava/util/ArrayList;

    .line 1352
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconSpace:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_ICON_SPACE:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1354
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimDur:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_ANIMATION_DURATION:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1357
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableTextSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->ENABLE_RIBBON_TEXT:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1359
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Settings$System;->RIBBON_TEXT_COLOR:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v7, v7, v8

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->textColor:I

    .line 1361
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextColor:Landroid/widget/Button;

    iget v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->textColor:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1362
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060073

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1365
    .local v4, iconValues:[Ljava/lang/String;
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconSize:Landroid/widget/Spinner;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->RIBBON_ICON_SIZE:[Ljava/lang/String;

    iget v10, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v9, v9, v10

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1369
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonIconVibrate:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_ICON_VIBRATE:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1372
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Settings$System;->RIBBON_ICON_COLORIZE:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->arrayNum:I

    aget-object v7, v7, v8

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    .line 1374
    .local v1, colorize:Z
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mButtonColorize:Landroid/widget/Switch;

    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1376
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Settings$System;->SWIPE_RIBBON_COLOR:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v7, v7, v8

    invoke-static {v6, v7, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonColor:I

    .line 1378
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonColor:Landroid/widget/Button;

    iget v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonColor:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1380
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06006f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1383
    .local v3, hideValues:[Ljava/lang/String;
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTimeOut:Landroid/widget/Spinner;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->RIBBON_HIDE_TIMEOUT:[Ljava/lang/String;

    iget v10, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v9, v9, v10

    const/16 v10, 0x1388

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1387
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060077

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1389
    .local v2, dismissValues:[Ljava/lang/String;
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonDismiss:Landroid/widget/Spinner;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->RIBBON_DISMISS:[Ljava/lang/String;

    iget v10, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v9, v9, v10

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1393
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mActionCodes:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1394
    .local v0, codes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Settings$System;->RIBBON_LONG_SWIPE:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1396
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_LONG_SWIPE:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1401
    :goto_0
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Settings$System;->RIBBON_LONG_PRESS:[Ljava/lang/String;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1403
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_LONG_PRESS:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1408
    :goto_1
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTogglesButton:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_TOGGLE_BUTTON_LOCATION:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1411
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonHideIme:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_HIDE_IME:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1414
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimations:[I

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->RIBBON_ANIMATION_TYPE:[Ljava/lang/String;

    iget v10, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v9, v9, v10

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1417
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060075

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1419
    .local v5, locValues:[Ljava/lang/String;
    iget v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 1420
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mIconLocation:Landroid/widget/Spinner;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->RIBBON_ICON_LOCATION:[Ljava/lang/String;

    iget v10, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v9, v9, v10

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1424
    :cond_0
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLocation:Landroid/widget/Spinner;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v9, Landroid/provider/Settings$System;->RIBBON_DRAG_HANDLE_LOCATION:[Ljava/lang/String;

    iget v10, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v9, v9, v10

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1427
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonOpacity:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->SWIPE_RIBBON_OPACITY:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    const/16 v9, 0x64

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1429
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleOpacity:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_DRAG_HANDLE_OPACITY:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1432
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleWidth:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_DRAG_HANDLE_WEIGHT:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    const/16 v9, 0x1e

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1435
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mDragHandleHeight:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->RIBBON_DRAG_HANDLE_HEIGHT:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1438
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mEnableVibSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/Settings$System;->SWIPE_RIBBON_VIBRATE:[Ljava/lang/String;

    iget v9, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v8, v8, v9

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1458
    .end local v0           #codes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #colorize:Z
    .end local v2           #dismissValues:[Ljava/lang/String;
    .end local v3           #hideValues:[Ljava/lang/String;
    .end local v4           #iconValues:[Ljava/lang/String;
    .end local v5           #locValues:[Ljava/lang/String;
    :goto_2
    return-void

    .line 1399
    .restart local v0       #codes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #colorize:Z
    .restart local v2       #dismissValues:[Ljava/lang/String;
    .restart local v3       #hideValues:[Ljava/lang/String;
    .restart local v4       #iconValues:[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongSwipe:Landroid/widget/Spinner;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 1406
    :cond_2
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonLongPress:Landroid/widget/Spinner;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_1

    .line 1442
    .end local v0           #codes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #colorize:Z
    .end local v2           #dismissValues:[Ljava/lang/String;
    .end local v3           #hideValues:[Ljava/lang/String;
    .end local v4           #iconValues:[Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->updateSwitches()V

    .line 1443
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v7, "app_window_color_bg"

    invoke-static {v6, v7, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowColor:I

    .line 1445
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowColor:Landroid/widget/Button;

    iget v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowColor:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1446
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "app_window_color_text"

    const v8, -0xff0001

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowTextColor:I

    .line 1448
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTextWindowColor:Landroid/widget/Button;

    iget v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->windowTextColor:I

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1449
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAppWindowSpace:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "app_window_spacing"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1451
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowOpacity:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "app_window_opacity"

    const/16 v9, 0x64

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1453
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mWindowAnimDur:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "app_window_animation_duration"

    const/16 v9, 0x4b

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1455
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mRibbonAnimation:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mAnimations:[I

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    const-string v9, "app_window_animation_type"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "bmp"
    .parameter "isApplication"

    .prologue
    .line 1897
    iget v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mChoice:I

    packed-switch v0, :pswitch_data_0

    .line 1913
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->refreshButtons()V

    .line 1914
    return-void

    .line 1899
    :pswitch_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mShortTargets:Ljava/util/ArrayList;

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1902
    :pswitch_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mLongTargets:Ljava/util/ArrayList;

    iget v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mTargetNum:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1905
    :pswitch_2
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_LONG_SWIPE:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1909
    :pswitch_3
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_LONG_PRESS:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonNumber:I

    aget-object v1, v1, v2

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1897
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
