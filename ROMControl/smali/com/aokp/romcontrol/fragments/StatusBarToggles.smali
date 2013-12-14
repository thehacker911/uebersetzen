.class public Lcom/aokp/romcontrol/fragments/StatusBarToggles;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "StatusBarToggles.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;,
        Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;
    }
.end annotation


# static fields
.field private static final PREF_CHOOSE_FASTTOGGLE_SIDE:Ljava/lang/String; = "choose_fast_toggle_side"

.field private static final PREF_COLLAPSE_ALL:Ljava/lang/String; = "collapse_shade_all"

.field private static final PREF_COLLAPSE_BAR:Ljava/lang/String; = "collapse_bar"

.field private static final PREF_CUSTOM_BUTTONS:Ljava/lang/String; = "custom_buttons"

.field private static final PREF_CUSTOM_CAT:Ljava/lang/String; = "custom_toggle"

.field private static final PREF_CUSTOM_TOGGLE:Ljava/lang/String; = "custom_toggle_pref"

.field private static final PREF_DCLICK_ACTION:Ljava/lang/String; = "dclick_action"

.field private static final PREF_ENABLE_FASTTOGGLE:Ljava/lang/String; = "enable_fast_toggle"

.field private static final PREF_ENABLE_TOGGLES:Ljava/lang/String; = "enabled_toggles"

.field private static final PREF_MATCH_ICON_ACTION:Ljava/lang/String; = "match_icon_action"

.field private static final PREF_SCREENSHOT_DELAY:Ljava/lang/String; = "screenshot_delay"

.field private static final PREF_SET_BOOT_ACTION:Ljava/lang/String; = "set_boot_action"

.field private static final PREF_SWIPE_TO_SWITCH:Ljava/lang/String; = "swipe_to_switch"

.field private static final PREF_TOGGLES_PER_ROW:Ljava/lang/String; = "toggles_per_row"

.field private static final PREF_TOGGLES_STYLE:Ljava/lang/String; = "toggles_style"

.field private static final PREF_TOGGLE_FAV_CONTACT:Ljava/lang/String; = "toggle_fav_contact"

.field private static final PREF_TOGGLE_VIBRATE:Ljava/lang/String; = "quick_toggle_vibrate"

.field public static final REQUEST_PICK_CUSTOM_ICON:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "TogglesLayout"

.field private static mTogglesAreSorted:Z

.field static sToggles:Landroid/os/Bundle;


# instance fields
.field private final PICK_CONTACT:I

.field mActionCodes:[Ljava/lang/String;

.field mActions:[Ljava/lang/String;

.field private mAddButton:Landroid/widget/ImageButton;

.field mBootState:Landroid/preference/CheckBoxPreference;

.field mButtonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;",
            ">;"
        }
    .end annotation
.end field

.field mChooseFastToggleSide:Landroid/preference/ListPreference;

.field mCollapseAll:Landroid/preference/CheckBoxPreference;

.field mCollapseShade:Landroid/preference/ListPreference;

.field private mCommandButtons:Landroid/view/View$OnClickListener;

.field mCustomButtons:Landroid/preference/PreferenceGroup;

.field mCustomCat:Landroid/preference/PreferenceGroup;

.field mCustomToggles:Lcom/aokp/romcontrol/widgets/CustomTogglePref;

.field mEnabledToggles:Landroid/preference/Preference;

.field mFastToggle:Landroid/preference/CheckBoxPreference;

.field mFavContact:Landroid/preference/Preference;

.field mLayout:Landroid/preference/Preference;

.field mMatchAction:Landroid/preference/CheckBoxPreference;

.field private mNumberofToggles:I

.field mOnDoubleClick:Landroid/preference/ListPreference;

.field private mPackMan:Landroid/content/pm/PackageManager;

.field private mPendingToggle:I

.field private mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetButton:Landroid/widget/ImageButton;

.field private mResources:Landroid/content/res/Resources;

.field private mSaveButton:Landroid/widget/ImageButton;

.field mScreenshotDelay:Landroid/preference/ListPreference;

.field mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

.field private mToggleClickListener:Landroid/view/View$OnClickListener;

.field mToggleVibrate:Landroid/preference/CheckBoxPreference;

.field mToggles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTogglesPerRow:Landroid/preference/ListPreference;

.field mTogglesStyle:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesAreSorted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->PICK_CONTACT:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtonViews:Ljava/util/ArrayList;

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

    .line 487
    new-instance v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$5;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggleClickListener:Landroid/view/View$OnClickListener;

    .line 634
    new-instance v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$8;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCommandButtons:Landroid/view/View$OnClickListener;

    .line 969
    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->onTogglesUpdate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

    return v0
.end method

.method static synthetic access$1000(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/aokp/romcontrol/fragments/StatusBarToggles;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

    return p1
.end method

.method static synthetic access$1100(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    return v0
.end method

.method static synthetic access$208(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    return v0
.end method

.method static synthetic access$300(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->createDialog(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V

    return-void
.end method

.method static synthetic access$400(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->onDialogClick(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->onActionDialogClick(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->loadButtons()V

    return-void
.end method

.method static synthetic access$700(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->saveButtons()V

    return-void
.end method

.method static synthetic access$800(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->setIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized addToggle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 829
    const-class v2, Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getEnabledToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 830
    .local v0, enabledToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 833
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-static {p0, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->setTogglesFromStringArray(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    monitor-exit v2

    return-void

    .line 829
    .end local v0           #enabledToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static buildToggleMap(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 6
    .parameter "toggleInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aokp/romcontrol/objects/EasyPair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 245
    const-string v4, "toggles"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 246
    .local v1, _toggleIdents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v2, _toggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/aokp/romcontrol/objects/EasyPair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, _ident:Ljava/lang/String;
    new-instance v4, Lcom/aokp/romcontrol/objects/EasyPair;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/aokp/romcontrol/objects/EasyPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    .end local v0           #_ident:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private createActionDialog(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V
    .locals 5
    .parameter "button"

    .prologue
    .line 570
    new-instance v1, Lcom/aokp/romcontrol/fragments/StatusBarToggles$7;

    invoke-direct {v1, p0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$7;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V

    .line 578
    .local v1, l:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActions:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 583
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 584
    return-void
.end method

.method private createDialog(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V
    .locals 9
    .parameter "button"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 545
    new-instance v3, Lcom/aokp/romcontrol/fragments/StatusBarToggles$6;

    invoke-direct {v3, p0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$6;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V

    .line 553
    .local v3, l:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b0207

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, action:Ljava/lang/String;
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b0208

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, longpress:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->getLongName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 556
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->getClickName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 557
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v7

    aput-object v4, v2, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0209

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b020a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 562
    .local v2, items:[Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0206

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 566
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 567
    return-void
.end method

.method static declared-synchronized getEnabledToggles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    const-class v9, Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    monitor-enter v9

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v6, userEnabledToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "quick_toggles"

    invoke-static {v8, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 843
    .local v7, userToggles:Ljava/lang/String;
    const-string v8, "\\|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 844
    .local v4, splitter:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 845
    .local v5, toggle:Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 847
    .end local v5           #toggle:Ljava/lang/String;
    :cond_0
    sget-boolean v8, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesAreSorted:Z

    if-nez v8, :cond_1

    .line 848
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 849
    const/4 v8, 0x1

    sput-boolean v8, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesAreSorted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #splitter:[Ljava/lang/String;
    .end local v6           #userEnabledToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #userToggles:Ljava/lang/String;
    :cond_1
    :goto_1
    monitor-exit v9

    return-object v6

    .line 852
    :catch_0
    move-exception v1

    .line 853
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v8, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    const-string v10, "default_toggles"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 854
    sget-object v8, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    const-string v10, "default_toggles"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_1

    .line 857
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 839
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private getIconFileName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom_toggle_"

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

.method private getNavbarIconImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "uri"

    .prologue
    .line 688
    if-nez p1, :cond_0

    .line 689
    sget-object v1, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v1}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object p1

    .line 691
    :cond_0
    const-string v1, "**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getActionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 702
    :goto_0
    return-object v1

    .line 695
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPackMan:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 702
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 698
    :catch_1
    move-exception v0

    .line 699
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 794
    if-nez p1, :cond_0

    .line 795
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    const-string v1, "**null**"

    invoke-static {v0, v1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    .line 797
    :cond_0
    const-string v0, "**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v0, p1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTempFileUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 819
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp_icon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

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

.method private loadButtons()V
    .locals 7

    .prologue
    .line 499
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "custom_toggle_qty"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    .line 501
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 502
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    if-ge v1, v4, :cond_0

    .line 503
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->CUSTOM_PRESS_TOGGLE:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, click:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->CUSTOM_LONGPRESS_TOGGLE:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, longclick:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->CUSTOM_TOGGLE_ICONS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, iconuri:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    new-instance v5, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    invoke-direct {v5, p0, v0, v3, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    .end local v0           #click:Ljava/lang/String;
    .end local v2           #iconuri:Ljava/lang/String;
    .end local v3           #longclick:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static lookupToggle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "ident"

    .prologue
    .line 887
    sget-object v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 888
    sget-object v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 890
    .end local p1
    :cond_0
    return-object p1
.end method

.method private onActionDialogClick(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;I)V
    .locals 1
    .parameter "button"
    .parameter "command"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActions:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    .line 631
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshButtons()V

    .line 632
    return-void

    .line 625
    :cond_0
    invoke-virtual {p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->getPickLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActionCodes:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setLongPress(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActionCodes:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setClickAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDialogClick(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;I)V
    .locals 6
    .parameter "button"
    .parameter "command"

    .prologue
    const/4 v5, 0x1

    .line 587
    packed-switch p2, :pswitch_data_0

    .line 617
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshButtons()V

    .line 618
    return-void

    .line 589
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setPickLongPress(Z)V

    .line 590
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->createActionDialog(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V

    goto :goto_0

    .line 593
    :pswitch_1
    invoke-virtual {p1, v5}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setPickLongPress(Z)V

    .line 594
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->createActionDialog(Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;)V

    goto :goto_0

    .line 597
    :pswitch_2
    const/16 v2, 0x64

    .line 598
    .local v2, width:I
    move v0, v2

    .line 599
    .local v0, height:I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 600
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v3, "aspectX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    const-string v3, "aspectY"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string v3, "outputX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    const-string v3, "outputY"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    const-string v3, "scale"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    const-string v3, "output"

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getTempFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    const-string v3, "outputFormat"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-string v3, "TogglesLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started for result, should output to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getTempFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/16 v3, 0xc8

    invoke-virtual {p0, v1, v3}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 613
    .end local v0           #height:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #width:I
    :pswitch_3
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    iget v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 614
    iget v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    goto/16 :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onTogglesUpdate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "toggleInfo"

    .prologue
    .line 254
    const-string v0, "toggles"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggles:Ljava/util/ArrayList;

    .line 255
    sput-object p1, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    .line 256
    return-void
.end method

.method static declared-synchronized removeToggle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 881
    const-class v2, Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getEnabledToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 882
    .local v0, enabledToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 883
    invoke-static {p0, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->setTogglesFromStringArray(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    monitor-exit v2

    return-void

    .line 881
    .end local v0           #enabledToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private requestAvailableToggles()V
    .locals 2

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.statusbar.toggles.ACTION_REQUEST_TOGGLES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, request:Landroid/content/Intent;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method private resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "image"

    .prologue
    .line 805
    const/16 v3, 0x32

    .line 806
    .local v3, size:I
    const/4 v4, 0x1

    int-to-float v5, v3

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v2, v4

    .line 809
    .local v2, px:I
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 810
    .local v1, d:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 811
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f02002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 814
    :goto_0
    return-object v4

    .line 813
    :cond_0
    const/4 v4, 0x0

    invoke-static {v1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 814
    .local v0, bitmapOrig:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private saveButtons()V
    .locals 5

    .prologue
    .line 531
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "custom_toggle_qty"

    iget v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    if-ge v1, v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    .line 535
    .local v0, button:Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->CUSTOM_PRESS_TOGGLE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->getClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 537
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->CUSTOM_LONGPRESS_TOGGLE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->getLongAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 539
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->CUSTOM_TOGGLE_ICONS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->getIconURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v0           #button:Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;
    :cond_0
    return-void
.end method

.method private setIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 658
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 659
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 660
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 684
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v3

    .line 664
    :cond_0
    if-eqz p1, :cond_1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "file"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    .local v2, icon:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 669
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 673
    .end local v2           #icon:Ljava/io/File;
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 676
    :try_start_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPackMan:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 684
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getNavbarIconImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 679
    :catch_1
    move-exception v0

    .line 680
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method static declared-synchronized setTogglesFromStringArray(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p1, enabledToggles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v4, Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .local v1, b:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 863
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    .local v0, _toggle:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 862
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 861
    .end local v0           #_toggle:Ljava/lang/String;
    .end local v1           #b:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 870
    .restart local v1       #b:Ljava/lang/StringBuilder;
    .restart local v2       #i:I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 871
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v5, 0x21

    if-ne v3, v5, :cond_2

    .line 872
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 875
    :cond_2
    const-string v3, "TogglesLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saving toggles:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "quick_toggles"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 878
    monitor-exit v4

    return-void
.end method

.method private updateSettings()V
    .locals 13

    .prologue
    .line 989
    const/4 v8, 0x0

    .line 990
    .local v8, screenshotRibbon:Z
    const/4 v4, 0x0

    .line 991
    .local v4, favoriteRibbon:Z
    const/4 v2, 0x0

    .line 992
    .local v2, customRibbon:Z
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v11, "quick_toggles"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 993
    .local v1, currentToggles:Ljava/lang/String;
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/Settings$System;->SWIPE_RIBBON_TOGGLES:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getArrayList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 995
    .local v6, leftSwipeToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/Settings$System;->SWIPE_RIBBON_TOGGLES:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getArrayList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 997
    .local v7, rightSwipeToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/Settings$System;->SWIPE_RIBBON_TOGGLES:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getArrayList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 999
    .local v0, bottomSwipeToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v9, swipeToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/Settings$System;->ENABLE_RIBBON_LOCATION:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 1003
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1006
    :cond_0
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/Settings$System;->ENABLE_RIBBON_LOCATION:[Ljava/lang/String;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 1008
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1011
    :cond_1
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/Settings$System;->ENABLE_RIBBON_LOCATION:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 1013
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1016
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 1017
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "FAVCONTACT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1018
    const/4 v4, 0x1

    .line 1020
    :cond_3
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "SCREENSHOT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1021
    const/4 v8, 0x1

    .line 1023
    :cond_4
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "CUSTOM"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1024
    const/4 v2, 0x1

    .line 1016
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1028
    :cond_6
    if-nez v1, :cond_7

    .line 1029
    const-string v1, ""

    .line 1031
    :cond_7
    if-eqz v1, :cond_11

    .line 1032
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFavContact:Landroid/preference/Preference;

    if-eqz v10, :cond_9

    .line 1033
    const-string v10, "FAVCONTACT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    if-eqz v4, :cond_d

    .line 1034
    :cond_8
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFavContact:Landroid/preference/Preference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1035
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFavContact:Landroid/preference/Preference;

    const v11, 0x7f0b013f

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 1041
    :cond_9
    :goto_1
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    if-eqz v10, :cond_b

    .line 1042
    const-string v10, "SCREENSHOT"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    if-eqz v8, :cond_e

    .line 1043
    :cond_a
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1044
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    const v11, 0x7f0b0152

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1050
    :cond_b
    :goto_2
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomCat:Landroid/preference/PreferenceGroup;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomButtons:Landroid/preference/PreferenceGroup;

    if-eqz v10, :cond_11

    .line 1051
    const-string v10, "CUSTOM"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    if-eqz v2, :cond_f

    :cond_c
    const/4 v3, 0x1

    .line 1052
    .local v3, enabled:Z
    :goto_3
    if-eqz v3, :cond_10

    .line 1053
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomCat:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1054
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomButtons:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1055
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mBootState:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0b015f

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1056
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mMatchAction:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0b0161

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1057
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseShade:Landroid/preference/ListPreference;

    const v11, 0x7f0b016a

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1058
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mOnDoubleClick:Landroid/preference/ListPreference;

    const v11, 0x7f0b015d

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1068
    :goto_4
    const/4 v5, 0x0

    :goto_5
    const/4 v10, 0x5

    if-ge v5, v10, :cond_11

    .line 1069
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/Settings$System;->CUSTOM_PRESS_TOGGLE:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1068
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1037
    .end local v3           #enabled:Z
    :cond_d
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFavContact:Landroid/preference/Preference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1038
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFavContact:Landroid/preference/Preference;

    const v11, 0x7f0b005b

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 1046
    :cond_e
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1047
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    const v11, 0x7f0b005c

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_2

    .line 1051
    :cond_f
    const/4 v3, 0x0

    goto :goto_3

    .line 1060
    .restart local v3       #enabled:Z
    :cond_10
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomCat:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1061
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomButtons:Landroid/preference/PreferenceGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1062
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mBootState:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0b005d

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1063
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mMatchAction:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0b005d

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1064
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseShade:Landroid/preference/ListPreference;

    const v11, 0x7f0b005d

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1065
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mOnDoubleClick:Landroid/preference/ListPreference;

    const v11, 0x7f0b005d

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_4

    .line 1074
    .end local v3           #enabled:Z
    :cond_11
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 19
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 732
    const-string v4, "TogglesLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RequestCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    .line 734
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 736
    .local v5, contactData:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "lookup"

    aput-object v8, v6, v4

    .line 739
    .local v6, projection:[Ljava/lang/String;
    const-string v7, "display_name IS NOT NULL"

    .line 740
    .local v7, selection:Ljava/lang/String;
    new-instance v3, Landroid/content/CursorLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    .local v3, cursorLoader:Landroid/content/CursorLoader;
    invoke-virtual {v3}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v11

    .line 743
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 745
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 746
    const-string v4, "lookup"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 748
    .local v16, lookup_key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v8, "quick_toggle_fav_contact"

    move-object/from16 v0, v16

    invoke-static {v4, v8, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    .end local v16           #lookup_key:Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 757
    .end local v3           #cursorLoader:Landroid/content/CursorLoader;
    .end local v5           #contactData:Landroid/net/Uri;
    .end local v6           #projection:[Ljava/lang/String;
    .end local v7           #selection:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_1
    const/16 v4, 0x64

    move/from16 v0, p1

    if-eq v0, v4, :cond_2

    const/16 v4, 0x65

    move/from16 v0, p1

    if-eq v0, v4, :cond_2

    const/16 v4, 0x66

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    .line 760
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 790
    :cond_3
    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 791
    :goto_1
    return-void

    .line 752
    .restart local v3       #cursorLoader:Landroid/content/CursorLoader;
    .restart local v5       #contactData:Landroid/net/Uri;
    .restart local v6       #projection:[Ljava/lang/String;
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    .line 762
    .end local v3           #cursorLoader:Landroid/content/CursorLoader;
    .end local v5           #contactData:Landroid/net/Uri;
    .end local v6           #projection:[Ljava/lang/String;
    .end local v7           #selection:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_4
    const/16 v4, 0xc8

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 763
    move-object/from16 v0, p0

    iget v4, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getIconFileName(I)Ljava/lang/String;

    move-result-object v14

    .line 764
    .local v14, iconName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 766
    .local v15, iconStream:Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v4, v14, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 771
    invoke-direct/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getTempFileUri()Landroid/net/Uri;

    move-result-object v18

    .line 773
    .local v18, selectedImageUri:Landroid/net/Uri;
    :try_start_2
    const-string v4, "TogglesLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected image path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 775
    .local v10, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v10, v4, v8, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setIconURI(Ljava/lang/String;)V

    .line 783
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 784
    .local v13, f:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 785
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 787
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshButtons()V

    goto/16 :goto_0

    .line 767
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #f:Ljava/io/File;
    .end local v18           #selectedImageUri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 768
    .local v12, e:Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .line 776
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .restart local v18       #selectedImageUri:Landroid/net/Uri;
    :catch_1
    move-exception v17

    .line 777
    .local v17, npe:Ljava/lang/NullPointerException;
    const-string v4, "TogglesLayout"

    const-string v8, "SeletedImageUri was null."

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0b005a

    const/4 v10, 0x1

    const v9, 0x7f0b0059

    const/4 v8, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    new-instance v2, Lcom/aokp/romcontrol/fragments/StatusBarToggles$1;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$1;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.systemui.statusbar.toggles.ACTION_BROADCAST_TOGGLES"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->requestAvailableToggles()V

    .line 140
    const v2, 0x7f0b001e

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->setTitle(I)V

    .line 142
    const v2, 0x7f050010

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->addPreferencesFromResource(I)V

    .line 144
    new-instance v2, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-direct {v2, p0, p0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;-><init>(Landroid/app/Fragment;Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;)V

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    .line 145
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPackMan:Landroid/content/pm/PackageManager;

    .line 146
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResources:Landroid/content/res/Resources;

    .line 149
    invoke-static {}, Lcom/android/internal/util/aokp/NavBarHelpers;->getNavBarActions()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActionCodes:[Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActionCodes:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActions:[Ljava/lang/String;

    .line 151
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActions:[Ljava/lang/String;

    array-length v0, v2

    .line 152
    .local v0, actionqty:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 153
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActions:[Ljava/lang/String;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mActionCodes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    const-string v2, "enabled_toggles"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mEnabledToggles:Landroid/preference/Preference;

    .line 158
    const-string v2, "collapse_shade_all"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseAll:Landroid/preference/CheckBoxPreference;

    .line 159
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    const-string v2, "quick_toggle_vibrate"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggleVibrate:Landroid/preference/CheckBoxPreference;

    .line 162
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggleVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    const-string v2, "toggles_per_row"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesPerRow:Landroid/preference/ListPreference;

    .line 165
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesPerRow:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesPerRow:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "quick_toggles_per_row"

    const/4 v7, 0x3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 169
    const-string v2, "toggles_style"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesStyle:Landroid/preference/ListPreference;

    .line 170
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesStyle:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesStyle:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "toggls_style"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 174
    const-string v2, "toggles"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mLayout:Landroid/preference/Preference;

    .line 176
    const-string v2, "toggle_fav_contact"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFavContact:Landroid/preference/Preference;

    .line 178
    const-string v2, "enable_fast_toggle"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    .line 179
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    const-string v2, "choose_fast_toggle_side"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    .line 182
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "choose_fasttoggle_side"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 186
    const-string v2, "swipe_to_switch"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

    .line 187
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    const-string v2, "screenshot_delay"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    .line 190
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "screenshot_toggle_delay"

    const/16 v6, 0x1388

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 194
    const-string v2, "set_boot_action"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mBootState:Landroid/preference/CheckBoxPreference;

    .line 195
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mBootState:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 197
    const-string v2, "match_icon_action"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mMatchAction:Landroid/preference/CheckBoxPreference;

    .line 198
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mMatchAction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    const-string v2, "collapse_bar"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseShade:Landroid/preference/ListPreference;

    .line 201
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseShade:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseShade:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "collapse_shade"

    const/16 v7, 0xa

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 205
    const-string v2, "dclick_action"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mOnDoubleClick:Landroid/preference/ListPreference;

    .line 206
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mOnDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mOnDoubleClick:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "dclick_toggle_revert"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    const-string v2, "custom_toggle_pref"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/aokp/romcontrol/widgets/CustomTogglePref;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomToggles:Lcom/aokp/romcontrol/widgets/CustomTogglePref;

    .line 211
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomToggles:Lcom/aokp/romcontrol/widgets/CustomTogglePref;

    invoke-virtual {v2, p0}, Lcom/aokp/romcontrol/widgets/CustomTogglePref;->setParent(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    .line 213
    const-string v2, "custom_toggle"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomCat:Landroid/preference/PreferenceGroup;

    .line 214
    const-string v2, "custom_buttons"

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCustomButtons:Landroid/preference/PreferenceGroup;

    .line 216
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->isSW600DPScreen(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->isTabletUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    :cond_2
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesStyle:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v10, :cond_4

    .line 223
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 224
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesPerRow:Landroid/preference/ListPreference;

    invoke-virtual {v2, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 225
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 226
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 227
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesPerRow:Landroid/preference/ListPreference;

    invoke-virtual {v2, v9}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 228
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 229
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 236
    :goto_1
    iget-boolean v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->hasVibration:Z

    if-nez v2, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggleVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    :cond_3
    new-instance v2, Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$SettingsObserver;->observe()V

    .line 241
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshSettings()V

    .line 242
    return-void

    .line 231
    :cond_4
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f0b0147

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    :cond_0
    invoke-super {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onDestroy()V

    .line 272
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v5, 0x7f0b005a

    const v4, 0x7f0b0059

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 282
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesPerRow:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 283
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, val:I
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "quick_toggles_per_row"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    .end local v0           #val:I
    :cond_0
    :goto_0
    return v3

    .line 286
    .restart local p2
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseAll:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 287
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 288
    .local v0, val:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "shade_collapse_all"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 290
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "shade_collapse_all"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 292
    .end local v0           #val:Z
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggleVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_3

    .line 293
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 294
    .restart local v0       #val:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "quick_toggle_vibrate"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 296
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "quick_toggle_vibrate"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 298
    .end local v0           #val:Z
    .restart local p2
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesStyle:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_c

    move-object v1, p2

    .line 299
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, val:I
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v6, "toggls_style"

    invoke-static {v1, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesStyle:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 303
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    if-le v0, v3, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 304
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesPerRow:Landroid/preference/ListPreference;

    if-le v0, v3, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 305
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

    if-le v0, v3, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 306
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    if-le v0, v3, :cond_8

    move v1, v4

    :goto_4
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 308
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mTogglesPerRow:Landroid/preference/ListPreference;

    if-le v0, v3, :cond_9

    move v1, v4

    :goto_5
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 310
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

    if-le v0, v3, :cond_a

    :goto_6
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 312
    if-le v0, v3, :cond_b

    .line 313
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 319
    :cond_4
    :goto_7
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 303
    goto :goto_1

    :cond_6
    move v1, v3

    .line 304
    goto :goto_2

    :cond_7
    move v2, v3

    .line 305
    goto :goto_3

    .line 306
    :cond_8
    const v1, 0x7f0b0145

    goto :goto_4

    .line 308
    :cond_9
    const v1, 0x7f0b012b

    goto :goto_5

    .line 310
    :cond_a
    const v4, 0x7f0b0149

    goto :goto_6

    .line 315
    :cond_b
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 316
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    const v2, 0x7f0b0147

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_7

    .line 320
    .end local v0           #val:I
    .restart local p2
    :cond_c
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_d

    move-object v1, p2

    .line 321
    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 322
    .restart local v0       #val:I
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "screenshot_toggle_delay"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mScreenshotDelay:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .end local v0           #val:I
    .restart local p2
    :cond_d
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFastToggle:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_f

    .line 326
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 327
    .local v0, val:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "fast_toggle"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 329
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "fast_toggle"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 330
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    if-eqz v0, :cond_e

    const v1, 0x7f0b0145

    :goto_8
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    :cond_e
    move v1, v5

    goto :goto_8

    .line 333
    .end local v0           #val:Z
    .restart local p2
    :cond_f
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_10

    .line 334
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, val:I
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "choose_fasttoggle_side"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "choose_fasttoggle_side"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 339
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mChooseFastToggleSide:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "choose_fasttoggle_side"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 341
    .end local v0           #val:I
    .restart local p2
    :cond_10
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSwipeToSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_11

    .line 342
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 343
    .local v0, val:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "swipe_to_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 345
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "swipe_to_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 347
    .end local v0           #val:Z
    .restart local p2
    :cond_11
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mBootState:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_12

    .line 348
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 349
    .restart local v0       #val:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "custom_toggle_revert"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 351
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "custom_toggle_revert"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 354
    .end local v0           #val:Z
    .restart local p2
    :cond_12
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mMatchAction:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_13

    .line 355
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 356
    .restart local v0       #val:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "match_action_icon"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 358
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "match_action_icon"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 361
    .end local v0           #val:Z
    .restart local p2
    :cond_13
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCollapseShade:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_14

    .line 362
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, val:I
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "collapse_shade"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 366
    .end local v0           #val:I
    .restart local p2
    :cond_14
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mOnDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 367
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 368
    .restart local v0       #val:I
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "dclick_toggle_revert"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 19
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mEnabledToggles:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggles:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggles:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 379
    :cond_0
    const/16 v16, 0x0

    .line 461
    :goto_0
    return v16

    .line 381
    :cond_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 383
    .local v5, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getEnabledToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v15

    .line 384
    .local v15, userToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v4, availableToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggles:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 386
    .local v13, t:Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    .end local v13           #t:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    .line 392
    .local v14, toggleValues:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->lookupToggle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v9

    .line 392
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 396
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v6, v0, [Z

    .line 398
    .local v6, checkedToggles:[Z
    const/4 v3, 0x0

    .line 399
    .local v3, anyChecked:Z
    const/4 v9, 0x0

    :goto_3
    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    .line 400
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 401
    .local v12, selectedToggle:Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 402
    const-string v16, "TogglesLayout"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "found toggle: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/16 v16, 0x1

    aput-boolean v16, v6, v9

    .line 404
    const/4 v3, 0x1

    .line 399
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 407
    .end local v12           #selectedToggle:Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_6

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "quick_toggles"

    const-string v18, ""

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 412
    :cond_6
    const v16, 0x7f0b045c

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 413
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 414
    const v16, 0x7f0b012e

    new-instance v17, Lcom/aokp/romcontrol/fragments/StatusBarToggles$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$2;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    new-instance v16, Lcom/aokp/romcontrol/fragments/StatusBarToggles$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$3;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v14, v6, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 436
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 438
    .local v7, d:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 440
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 441
    .end local v3           #anyChecked:Z
    .end local v4           #availableToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #builder:Landroid/app/AlertDialog$Builder;
    .end local v6           #checkedToggles:[Z
    .end local v7           #d:Landroid/app/AlertDialog;
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #toggleValues:[Ljava/lang/String;
    .end local v15           #userToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mLayout:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 442
    sget-object v16, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->newInstance(Landroid/os/Bundle;)Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    move-result-object v8

    .line 443
    .local v8, fragment:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v16

    const-string v17, "arrange"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 461
    .end local v8           #fragment:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;
    :cond_8
    :goto_4
    invoke-super/range {p0 .. p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v16

    goto/16 :goto_0

    .line 444
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mFavContact:Landroid/preference/Preference;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 445
    new-instance v11, Landroid/content/Intent;

    const-string v16, "android.intent.action.PICK"

    sget-object v17, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 446
    .local v11, intent:Landroid/content/Intent;
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v11, v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 447
    .end local v11           #intent:Landroid/content/Intent;
    :cond_a
    const-string v16, "custom_toggle_help"

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 448
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    .local v2, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0157

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0156

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0159

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Lcom/aokp/romcontrol/fragments/StatusBarToggles$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$4;-><init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 459
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_4
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onResume()V

    .line 261
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->requestAvailableToggles()V

    .line 262
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshSettings()V

    .line 263
    return-void
.end method

.method public refreshButtons()V
    .locals 4

    .prologue
    .line 514
    iget v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    if-nez v3, :cond_1

    .line 528
    :cond_0
    return-void

    .line 517
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    if-ge v1, v3, :cond_2

    .line 518
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 519
    .local v2, ib:Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    invoke-virtual {v3}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 520
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mToggleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #ib:Landroid/widget/ImageButton;
    :cond_2
    iget v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mNumberofToggles:I

    :goto_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 525
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 526
    .restart local v2       #ib:Landroid/widget/ImageButton;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 524
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public refreshSettings()V
    .locals 0

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshButtons()V

    .line 466
    return-void
.end method

.method public setupToggleViews(Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "container"

    .prologue
    .line 469
    const v3, 0x7f0a0012

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResetButton:Landroid/widget/ImageButton;

    .line 470
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mResetButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCommandButtons:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    const v3, 0x7f0a0013

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mAddButton:Landroid/widget/ImageButton;

    .line 472
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mAddButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCommandButtons:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    const v3, 0x7f0a0014

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSaveButton:Landroid/widget/ImageButton;

    .line 474
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mSaveButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mCommandButtons:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 476
    const v3, 0x7f0a0015

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 477
    .local v2, llbuttons:Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 478
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 479
    .local v1, ib:Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    .end local v1           #ib:Landroid/widget/ImageButton;
    :cond_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 482
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->loadButtons()V

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshButtons()V

    .line 485
    return-void
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "bmp"
    .parameter "isApplication"

    .prologue
    .line 707
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mButtons:Ljava/util/ArrayList;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;

    .line 708
    .local v0, button:Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->getPickLongPress()Z

    move-result v4

    .line 710
    .local v4, longpress:Z
    if-nez v4, :cond_0

    .line 711
    invoke-virtual {v0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setClickAction(Ljava/lang/String;)V

    .line 715
    :goto_0
    if-nez p3, :cond_1

    .line 716
    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setIconURI(Ljava/lang/String;)V

    .line 728
    :goto_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->refreshButtons()V

    .line 729
    :goto_2
    return-void

    .line 713
    :cond_0
    invoke-virtual {v0, p1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setLongPress(Ljava/lang/String;)V

    goto :goto_0

    .line 718
    :cond_1
    iget v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mPendingToggle:I

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getIconFileName(I)Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, iconName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 721
    .local v3, iconStream:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 725
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p3, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 726
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->setIconURI(Ljava/lang/String;)V

    goto :goto_1

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_2
.end method
