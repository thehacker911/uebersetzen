.class public Lcom/aokp/romcontrol/fragments/Navbar;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "Navbar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;
    }
.end annotation


# static fields
.field private static final DIALOG_NAVBAR_ENABLE:I = 0xcb

.field private static final DRAG_HANDLE_OPACITY:Ljava/lang/String; = "drag_handle_opacity"

.field private static final DRAG_HANDLE_WIDTH:Ljava/lang/String; = "drag_handle_width"

.field private static final ENABLE_NAVIGATION_BAR:Ljava/lang/String; = "enable_nav_bar"

.field private static final NAVBAR_HIDE_ENABLE:Ljava/lang/String; = "navbar_hide_enable"

.field private static final NAVBAR_HIDE_TIMEOUT:Ljava/lang/String; = "navbar_hide_timeout"

.field private static final NAVIGATION_BAR_COLOR:Ljava/lang/String; = "nav_bar_color"

.field private static final NAVIGATION_BAR_HEIGHT:Ljava/lang/String; = "navigation_bar_height"

.field private static final NAVIGATION_BAR_HEIGHT_LANDSCAPE:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final NAVIGATION_BAR_WIDGETS:Ljava/lang/String; = "navigation_bar_widgets"

.field private static final NAVIGATION_BAR_WIDTH:Ljava/lang/String; = "navigation_bar_width"

.field public static final PREFS_NAV_BAR:Ljava/lang/String; = "navbar"

.field private static final PREF_GLOW_TIMES:Ljava/lang/String; = "glow_times"

.field private static final PREF_MENU_ARROWS:Ljava/lang/String; = "navigation_bar_menu_arrow_keys"

.field private static final PREF_MENU_UNLOCK:Ljava/lang/String; = "pref_menu_display"

.field private static final PREF_NAVBAR_MENU_DISPLAY:Ljava/lang/String; = "navbar_menu_display"

.field private static final PREF_NAVBAR_QTY:Ljava/lang/String; = "navbar_qty"

.field private static final PREF_NAV_COLOR:Ljava/lang/String; = "nav_button_color"

.field private static final PREF_NAV_GLOW_COLOR:Ljava/lang/String; = "nav_button_glow_color"

.field public static final REQUEST_PICK_CUSTOM_ICON:I = 0xc8

.field public static final REQUEST_PICK_LANDSCAPE_ICON:I = 0xc9

.field public static final SHOW_BOTH_MENU:I = 0x2

.field public static final SHOW_DONT:I = 0x4

.field public static final SHOW_LEFT_MENU:I = 0x1

.field public static final SHOW_RIGHT_MENU:I = 0x0

.field public static final STOCK_ALPHA:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "NavBar"


# instance fields
.field mActionCodes:[Ljava/lang/String;

.field mActions:[Ljava/lang/String;

.field private mAddButton:Landroid/widget/ImageButton;

.field mButtonAlpha:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

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
            "Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCommandButtons:Landroid/view/View$OnClickListener;

.field mConfigureWidgets:Landroid/preference/Preference;

.field mDragHandleOpacity:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

.field mDragHandleWidth:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

.field mEnableNavigationBar:Landroid/preference/CheckBoxPreference;

.field mGlowTimes:Landroid/preference/ListPreference;

.field private mLeftMenu:Landroid/widget/ImageView;

.field mMenuArrowKeysCheckBox:Landroid/preference/CheckBoxPreference;

.field mNavBarButtonQty:Landroid/preference/ListPreference;

.field private mNavBarClickListener:Landroid/view/View$OnClickListener;

.field private mNavBarContainer:Landroid/widget/LinearLayout;

.field mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

.field mNavBarHideTimeout:Landroid/preference/ListPreference;

.field mNavBarMenuDisplay:Landroid/preference/ListPreference;

.field private mNavButtonsContainer:Landroid/widget/LinearLayout;

.field mNavigationBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field mNavigationBarGlowColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field mNavigationBarHeight:Landroid/preference/ListPreference;

.field mNavigationBarHeightLandscape:Landroid/preference/ListPreference;

.field mNavigationBarWidth:Landroid/preference/ListPreference;

.field mNavigationColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

.field private mNumberofButtons:I

.field private mPackMan:Landroid/content/pm/PackageManager;

.field private mPendingButton:I

.field private mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

.field private mResetButton:Landroid/widget/ImageButton;

.field mResources:Landroid/content/res/Resources;

.field private mRightMenu:Landroid/widget/ImageView;

.field private mSaveButton:Landroid/widget/ImageButton;

.field mWidthHelp:Landroid/preference/Preference;

.field mWidthLand:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

.field mWidthPort:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

.field menuDisplayLocation:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonViews:Ljava/util/ArrayList;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

    .line 590
    new-instance v0, Lcom/aokp/romcontrol/fragments/Navbar$1;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/Navbar$1;-><init>(Lcom/aokp/romcontrol/fragments/Navbar;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarClickListener:Landroid/view/View$OnClickListener;

    .line 797
    new-instance v0, Lcom/aokp/romcontrol/fragments/Navbar$4;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/Navbar$4;-><init>(Lcom/aokp/romcontrol/fragments/Navbar;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mCommandButtons:Landroid/view/View$OnClickListener;

    .line 958
    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/Navbar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

    return v0
.end method

.method static synthetic access$002(Lcom/aokp/romcontrol/fragments/Navbar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

    return p1
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/Navbar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    return v0
.end method

.method static synthetic access$108(Lcom/aokp/romcontrol/fragments/Navbar;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    return v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/Navbar;Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/Navbar;->createDialog(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V

    return-void
.end method

.method static synthetic access$300(Lcom/aokp/romcontrol/fragments/Navbar;Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/Navbar;->onDialogClick(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/aokp/romcontrol/fragments/Navbar;Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/Navbar;->onActionDialogClick(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/aokp/romcontrol/fragments/Navbar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->loadButtons()V

    return-void
.end method

.method static synthetic access$600(Lcom/aokp/romcontrol/fragments/Navbar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->saveButtons()V

    return-void
.end method

.method static synthetic access$700(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/Navbar;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/Navbar;->setIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private createActionDialog(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V
    .locals 5
    .parameter "button"

    .prologue
    .line 733
    new-instance v1, Lcom/aokp/romcontrol/fragments/Navbar$3;

    invoke-direct {v1, p0, p1}, Lcom/aokp/romcontrol/fragments/Navbar$3;-><init>(Lcom/aokp/romcontrol/fragments/Navbar;Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V

    .line 741
    .local v1, l:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b0206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActions:[Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 746
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 747
    return-void
.end method

.method private createDialog(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V
    .locals 9
    .parameter "button"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 709
    new-instance v3, Lcom/aokp/romcontrol/fragments/Navbar$2;

    invoke-direct {v3, p0, p1}, Lcom/aokp/romcontrol/fragments/Navbar$2;-><init>(Lcom/aokp/romcontrol/fragments/Navbar;Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V

    .line 717
    .local v3, l:Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b0207

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, action:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->getClickName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 719
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0b0208

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, longpress:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->getLongName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 721
    const/4 v5, 0x4

    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v7

    aput-object v4, v2, v8

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0209

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b020a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 724
    .local v2, items:[Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0b0206

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 729
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 730
    return-void
.end method

.method private getIconFileName(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "navbar_icon_"

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
    .line 851
    if-nez p1, :cond_0

    .line 852
    sget-object v1, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->ACTION_NULL:Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;

    invoke-virtual {v1}, Lcom/android/internal/util/aokp/AwesomeConstants$AwesomeConstant;->value()Ljava/lang/String;

    move-result-object p1

    .line 854
    :cond_0
    const-string v1, "**"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getActionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 865
    :goto_0
    return-object v1

    .line 858
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPackMan:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 865
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 861
    :catch_1
    move-exception v0

    .line 862
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 934
    if-nez p1, :cond_0

    .line 935
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    const-string v1, "**null**"

    invoke-static {v0, v1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 940
    :goto_0
    return-object v0

    .line 937
    :cond_0
    const-string v0, "**"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v0, p1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTempFileUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 576
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tmp_icon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

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
    .line 602
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "navigation_bar_buttons_qty"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    .line 604
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 605
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    if-ge v1, v4, :cond_0

    .line 606
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_ACTIVITIES:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, click:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->NAVIGATION_LONGPRESS_ACTIVITIES:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 610
    .local v3, longclick:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_APP_ICONS:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, iconuri:Ljava/lang/String;
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    new-instance v5, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    invoke-direct {v5, p0, v0, v3, v2}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;-><init>(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v0           #click:Ljava/lang/String;
    .end local v2           #iconuri:Ljava/lang/String;
    .end local v3           #longclick:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private onActionDialogClick(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;I)V
    .locals 1
    .parameter "button"
    .parameter "command"

    .prologue
    .line 784
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActions:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    .line 794
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshButtons()V

    .line 795
    return-void

    .line 788
    :cond_0
    invoke-virtual {p1}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->getPickLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActionCodes:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setLongPress(Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActionCodes:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setClickAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDialogClick(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;I)V
    .locals 6
    .parameter "button"
    .parameter "command"

    .prologue
    const/4 v5, 0x1

    .line 750
    packed-switch p2, :pswitch_data_0

    .line 780
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshButtons()V

    .line 781
    return-void

    .line 752
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setPickLongPress(Z)V

    .line 753
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/Navbar;->createActionDialog(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V

    goto :goto_0

    .line 756
    :pswitch_1
    invoke-virtual {p1, v5}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setPickLongPress(Z)V

    .line 757
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/Navbar;->createActionDialog(Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;)V

    goto :goto_0

    .line 760
    :pswitch_2
    const/16 v2, 0x64

    .line 761
    .local v2, width:I
    move v0, v2

    .line 762
    .local v0, height:I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 763
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    const-string v3, "crop"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 765
    const-string v3, "aspectX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 766
    const-string v3, "aspectY"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 767
    const-string v3, "outputX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    const-string v3, "outputY"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    const-string v3, "scale"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 770
    const-string v3, "output"

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getTempFileUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 771
    const-string v3, "outputFormat"

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v3, "NavBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "started for result, should output to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getTempFileUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/16 v3, 0xc8

    invoke-virtual {p0, v1, v3}, Lcom/aokp/romcontrol/fragments/Navbar;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 776
    .end local v0           #height:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #width:I
    :pswitch_3
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    iget v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 777
    iget v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    goto/16 :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "image"

    .prologue
    .line 945
    const/16 v3, 0x32

    .line 946
    .local v3, size:I
    const/4 v4, 0x1

    int-to-float v5, v3

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v2, v4

    .line 949
    .local v2, px:I
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 950
    .local v1, d:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 951
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f02002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 954
    :goto_0
    return-object v4

    .line 953
    :cond_0
    const/4 v4, 0x0

    invoke-static {v1, v2, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 954
    .local v0, bitmapOrig:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private saveButtons()V
    .locals 5

    .prologue
    .line 694
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v3, "navigation_bar_buttons_qty"

    iget v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 696
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    if-ge v1, v2, :cond_0

    .line 697
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    .line 698
    .local v0, button:Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_ACTIVITIES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->getClickAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 700
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->NAVIGATION_LONGPRESS_ACTIVITIES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->getLongAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 703
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_APP_ICONS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->getIconURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    .end local v0           #button:Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;
    :cond_0
    return-void
.end method

.method private setIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "uri"
    .parameter "action"

    .prologue
    .line 821
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 822
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 824
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/aokp/romcontrol/fragments/Navbar;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 847
    .end local v1           #f:Ljava/io/File;
    :goto_0
    return-object v3

    .line 827
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

    .line 830
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    .local v2, icon:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 832
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/aokp/romcontrol/fragments/Navbar;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 836
    .end local v2           #icon:Ljava/io/File;
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 839
    :try_start_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPackMan:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aokp/romcontrol/fragments/Navbar;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 847
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :goto_1
    invoke-direct {p0, p2}, Lcom/aokp/romcontrol/fragments/Navbar;->getNavbarIconImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/aokp/romcontrol/fragments/Navbar;->resize(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 842
    :catch_1
    move-exception v0

    .line 843
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateGlowTimesSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->NAVIGATION_BAR_GLOW_DURATION:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Settings$System;->NAVIGATION_BAR_GLOW_DURATION:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, combinedTime:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, glowArray:[Ljava/lang/String;
    aget-object v3, v1, v6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    const v2, 0x7f0b01e5

    .line 525
    .local v2, resId:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mGlowTimes:Landroid/preference/ListPreference;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 536
    :goto_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mGlowTimes:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 537
    return-void

    .line 526
    .end local v2           #resId:I
    :cond_0
    aget-object v3, v1, v7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    const v2, 0x7f0b01e6

    .line 528
    .restart local v2       #resId:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mGlowTimes:Landroid/preference/ListPreference;

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 529
    .end local v2           #resId:I
    :cond_1
    aget-object v3, v1, v8

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 530
    const v2, 0x7f0b01e7

    .line 531
    .restart local v2       #resId:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mGlowTimes:Landroid/preference/ListPreference;

    invoke-virtual {v3, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 533
    .end local v2           #resId:I
    :cond_2
    const v2, 0x7f0b01e8

    .line 534
    .restart local v2       #resId:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mGlowTimes:Landroid/preference/ListPreference;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method


# virtual methods
.method public mapChosenDpToPixels(I)I
    .locals 2
    .parameter "dp"

    .prologue
    .line 540
    sparse-switch p1, :sswitch_data_0

    .line 556
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 542
    :sswitch_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 544
    :sswitch_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 546
    :sswitch_2
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 548
    :sswitch_3
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 550
    :sswitch_4
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 552
    :sswitch_5
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 554
    :sswitch_6
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 540
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_6
        0x1e -> :sswitch_5
        0x24 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2a -> :sswitch_2
        0x2c -> :sswitch_1
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/16 v10, 0x64

    .line 895
    const-string v7, "NavBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RequestCode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    .line 897
    if-eq p1, v10, :cond_0

    const/16 v7, 0x65

    if-eq p1, v7, :cond_0

    const/16 v7, 0x66

    if-ne p1, v7, :cond_2

    .line 900
    :cond_0
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-virtual {v7, p1, p2, p3}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 930
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 931
    :goto_1
    return-void

    .line 902
    :cond_2
    const/16 v7, 0xc8

    if-ne p1, v7, :cond_1

    .line 903
    iget v7, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

    invoke-direct {p0, v7}, Lcom/aokp/romcontrol/fragments/Navbar;->getIconFileName(I)Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, iconName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 906
    .local v4, iconStream:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 911
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getTempFileUri()Landroid/net/Uri;

    move-result-object v6

    .line 913
    .local v6, selectedImageUri:Landroid/net/Uri;
    :try_start_1
    const-string v7, "NavBar"

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

    .line 914
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 915
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 920
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    iget v8, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setIconURI(Ljava/lang/String;)V

    .line 923
    new-instance v2, Ljava/io/File;

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 924
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 925
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 927
    :cond_3
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshButtons()V

    goto :goto_0

    .line 907
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #f:Ljava/io/File;
    .end local v6           #selectedImageUri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 908
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 916
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v6       #selectedImageUri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 917
    .local v5, npe:Ljava/lang/NullPointerException;
    const-string v7, "NavBar"

    const-string v8, "SeletedImageUri was null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 138
    invoke-super/range {p0 .. p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v10, 0x7f0b0021

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->setTitle(I)V

    .line 142
    const v10, 0x7f050008

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->addPreferencesFromResource(I)V

    .line 144
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 146
    .local v9, prefs:Landroid/preference/PreferenceScreen;
    new-instance v10, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    invoke-direct {v10, p0, p0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;-><init>(Landroid/app/Fragment;Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;)V

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    .line 147
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPackMan:Landroid/content/pm/PackageManager;

    .line 148
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResources:Landroid/content/res/Resources;

    .line 151
    invoke-static {}, Lcom/android/internal/util/aokp/NavBarHelpers;->getNavBarActions()[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActionCodes:[Ljava/lang/String;

    .line 152
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActionCodes:[Ljava/lang/String;

    array-length v10, v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActions:[Ljava/lang/String;

    .line 153
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActions:[Ljava/lang/String;

    array-length v0, v10

    .line 154
    .local v0, actionqty:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 155
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActions:[Ljava/lang/String;

    iget-object v11, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mActionCodes:[Ljava/lang/String;

    aget-object v12, v12, v7

    invoke-static {v11, v12}, Lcom/android/internal/util/aokp/AwesomeConstants;->getProperName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 154
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 158
    :cond_0
    const-string v10, "pref_menu_display"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->menuDisplayLocation:Landroid/preference/ListPreference;

    .line 159
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->menuDisplayLocation:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->menuDisplayLocation:Landroid/preference/ListPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v13, "menu_location"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 163
    const-string v10, "navbar_menu_display"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarMenuDisplay:Landroid/preference/ListPreference;

    .line 164
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarMenuDisplay:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarMenuDisplay:Landroid/preference/ListPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v13, "menu_visibility"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 168
    const-string v10, "navbar_hide_enable"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    .line 169
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v12, "nav_hide_enable"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v11, "drag_handle_opacity"

    const/16 v12, 0x32

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 174
    .local v2, defaultDragOpacity:I
    const-string v10, "drag_handle_opacity"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleOpacity:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    .line 175
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleOpacity:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v10, v2}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setInitValue(I)V

    .line 176
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleOpacity:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v10, p0}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v11, "drag_handle_weight"

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 180
    .local v3, defaultDragWidth:I
    const-string v10, "drag_handle_width"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleWidth:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    .line 181
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleWidth:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v10, v3}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setInitValue(I)V

    .line 182
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleWidth:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v10, p0}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    const-string v10, "navbar_hide_timeout"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    .line 185
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v13, "nav_hide_timeout"

    const/16 v14, 0xbb8

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 189
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110041

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 191
    .local v6, hasNavBarByDefault:Z
    const-string v10, "enable_nav_bar"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mEnableNavigationBar:Landroid/preference/CheckBoxPreference;

    .line 192
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mEnableNavigationBar:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v12, "navigation_bar_show"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 195
    const-string v10, "nav_bar_color"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 196
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v10, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    const-string v10, "nav_button_color"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 199
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v10, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    const-string v10, "nav_button_glow_color"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarGlowColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    .line 202
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarGlowColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    invoke-virtual {v10, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    const-string v10, "glow_times"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mGlowTimes:Landroid/preference/ListPreference;

    .line 205
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mGlowTimes:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v11, "navigation_bar_button_alpha"

    const v12, 0x3f19999a

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 209
    .local v1, defaultButtonAlpha:F
    const-string v10, "button_transparency"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonAlpha:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    .line 210
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonAlpha:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    const/high16 v11, 0x42c8

    mul-float/2addr v11, v1

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setInitValue(I)V

    .line 211
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonAlpha:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v10, p0}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    const-string v10, "width_help"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthHelp:Landroid/preference/Preference;

    .line 215
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v11, "navigation_bar_width_port"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    .line 217
    .local v5, defaultPort:F
    const-string v10, "width_port"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthPort:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    .line 218
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthPort:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    const/high16 v11, 0x4020

    mul-float/2addr v11, v5

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setInitValue(I)V

    .line 219
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthPort:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v10, p0}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v11, "navigation_bar_width_land"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 223
    .local v4, defaultLand:F
    const-string v10, "width_land"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthLand:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    .line 224
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthLand:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    const/high16 v11, 0x4020

    mul-float/2addr v11, v4

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setInitValue(I)V

    .line 225
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthLand:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v10, p0}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    const-string v10, "navigation_bar_height"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeight:Landroid/preference/ListPreference;

    .line 228
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeight:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    const-string v10, "navigation_bar_height_landscape"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeightLandscape:Landroid/preference/ListPreference;

    .line 232
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeightLandscape:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    const-string v10, "navigation_bar_width"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarWidth:Landroid/preference/ListPreference;

    .line 235
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarWidth:Landroid/preference/ListPreference;

    invoke-virtual {v10, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    const-string v10, "navigation_bar_widgets"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mConfigureWidgets:Landroid/preference/Preference;

    .line 238
    const-string v10, "navigation_bar_menu_arrow_keys"

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mMenuArrowKeysCheckBox:Landroid/preference/CheckBoxPreference;

    .line 239
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mMenuArrowKeysCheckBox:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v12, "navigation_bar_menu_arrow_keys"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    if-eqz v6, :cond_1

    .line 244
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mEnableNavigationBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    :cond_1
    const-string v10, "advanced_cat"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 248
    .local v8, pg:Landroid/preference/PreferenceGroup;
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/aokp/romcontrol/fragments/Navbar;->isTabletUI(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 249
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeight:Landroid/preference/ListPreference;

    const v11, 0x7f0b01d2

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 250
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeight:Landroid/preference/ListPreference;

    const v11, 0x7f0b01d3

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 251
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeightLandscape:Landroid/preference/ListPreference;

    const v11, 0x7f0b01d4

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 252
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeightLandscape:Landroid/preference/ListPreference;

    const v11, 0x7f0b01d5

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 253
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarWidth:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0b01f7

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 255
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    const v11, 0x7f0b01fb

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 267
    :goto_1
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->menuDisplayLocation:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 268
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarMenuDisplay:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 269
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarMenuDisplay:Landroid/preference/ListPreference;

    const v11, 0x7f0b0051

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshSettings()V

    .line 273
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/aokp/romcontrol/fragments/Navbar;->setHasOptionsMenu(Z)V

    .line 274
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->updateGlowTimesSummary()V

    .line 275
    return-void

    .line 257
    :cond_3
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthPort:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthLand:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthHelp:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/aokp/romcontrol/fragments/Navbar;->isPhabletUI(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 261
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarWidth:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 263
    :cond_4
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeightLandscape:Landroid/preference/ListPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "dialogId"

    .prologue
    .line 511
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 305
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 306
    const v0, 0x7f0d0002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 307
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedinstanceState"

    .prologue
    .line 280
    const v3, 0x7f040017

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 281
    .local v2, ll:Landroid/view/View;
    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResetButton:Landroid/widget/ImageButton;

    .line 282
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mResetButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mCommandButtons:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v3, 0x7f0a0013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mAddButton:Landroid/widget/ImageButton;

    .line 284
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mAddButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mCommandButtons:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v3, 0x7f0a0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mSaveButton:Landroid/widget/ImageButton;

    .line 286
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mSaveButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mCommandButtons:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v3, 0x7f0a0096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mLeftMenu:Landroid/widget/ImageView;

    .line 288
    const v3, 0x7f0a0095

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarContainer:Landroid/widget/LinearLayout;

    .line 289
    const v3, 0x7f0a0097

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavButtonsContainer:Landroid/widget/LinearLayout;

    .line 290
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 291
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 292
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 293
    .local v1, ib:Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v1           #ib:Landroid/widget/ImageButton;
    :cond_0
    const v3, 0x7f0a009f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mRightMenu:Landroid/widget/ImageView;

    .line 296
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->loadButtons()V

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshButtons()V

    .line 300
    return-object v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x1

    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 346
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 313
    :pswitch_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "navigation_bar_color"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 315
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "navigation_bar_tint"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "navigation_bar_glow_tint"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v2, "navigation_bar_buttons_qty"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "**back**"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "**home**"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, "**recents**"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_LONGPRESS_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "**null**"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_LONGPRESS_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "**null**"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_LONGPRESS_ACTIVITIES:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, "**null**"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 336
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_APP_ICONS:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_APP_ICONS:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 340
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Settings$System;->NAVIGATION_CUSTOM_APP_ICONS:[Ljava/lang/String;

    aget-object v2, v2, v5

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 342
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->loadButtons()V

    .line 343
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshSettings()V

    goto/16 :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x7f0a011e
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 16
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->menuDisplayLocation:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_2

    .line 393
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 394
    .local v10, val:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "menu_location"

    invoke-static {v13, v14, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshSettings()V

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarMenuDisplay:Landroid/preference/ListPreference;

    const/4 v13, 0x4

    if-ge v10, v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarMenuDisplay:Landroid/preference/ListPreference;

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1

    const v13, 0x7f0b0051

    :goto_1
    invoke-virtual {v14, v13}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 400
    const/4 v13, 0x1

    .line 506
    .end local v10           #val:I
    :goto_2
    return v13

    .line 397
    .restart local v10       #val:I
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 398
    :cond_1
    const v13, 0x7f0b01c3

    goto :goto_1

    .line 401
    .end local v10           #val:I
    .restart local p2
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarMenuDisplay:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_3

    .line 402
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "menu_visibility"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    const/4 v13, 0x1

    goto :goto_2

    .line 405
    .restart local p2
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarWidth:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_4

    move-object/from16 v6, p2

    .line 406
    check-cast v6, Ljava/lang/String;

    .line 407
    .local v6, newVal:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 408
    .local v2, dp:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aokp/romcontrol/fragments/Navbar;->mapChosenDpToPixels(I)I

    move-result v12

    .line 409
    .local v12, width:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_width"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    const/4 v13, 0x1

    goto :goto_2

    .line 412
    .end local v2           #dp:I
    .end local v6           #newVal:Ljava/lang/String;
    .end local v12           #width:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeight:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_5

    move-object/from16 v6, p2

    .line 413
    check-cast v6, Ljava/lang/String;

    .line 414
    .restart local v6       #newVal:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 415
    .restart local v2       #dp:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aokp/romcontrol/fragments/Navbar;->mapChosenDpToPixels(I)I

    move-result v3

    .line 416
    .local v3, height:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_height"

    invoke-static {v13, v14, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    const/4 v13, 0x1

    goto :goto_2

    .line 419
    .end local v2           #dp:I
    .end local v3           #height:I
    .end local v6           #newVal:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_6

    .line 420
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 421
    .restart local v10       #val:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "nav_hide_timeout"

    invoke-static {v13, v14, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    const/4 v13, 0x1

    goto :goto_2

    .line 424
    .end local v10           #val:I
    .restart local p2
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarHeightLandscape:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_7

    move-object/from16 v6, p2

    .line 425
    check-cast v6, Ljava/lang/String;

    .line 426
    .restart local v6       #newVal:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 427
    .restart local v2       #dp:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/aokp/romcontrol/fragments/Navbar;->mapChosenDpToPixels(I)I

    move-result v3

    .line 428
    .restart local v3       #height:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_height_landscape"

    invoke-static {v13, v14, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 432
    .end local v2           #dp:I
    .end local v3           #height:I
    .end local v6           #newVal:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 433
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, hex:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v13

    const v14, 0xffffff

    and-int v5, v13, v14

    .line 437
    .local v5, intHex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_color"

    invoke-static {v13, v14, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshSettings()V

    .line 440
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 441
    .end local v4           #hex:Ljava/lang/String;
    .end local v5           #intHex:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_9

    .line 442
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v4

    .line 444
    .restart local v4       #hex:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v5

    .line 446
    .restart local v5       #intHex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_tint"

    invoke-static {v13, v14, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshSettings()V

    .line 449
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 450
    .end local v4           #hex:Ljava/lang/String;
    .end local v5           #intHex:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavigationBarGlowColor:Lnet/margaritov/preference/colorpicker/ColorPickerPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_a

    .line 451
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v4

    .line 453
    .restart local v4       #hex:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 454
    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v5

    .line 455
    .restart local v5       #intHex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_glow_tint"

    invoke-static {v13, v14, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshSettings()V

    .line 458
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 459
    .end local v4           #hex:Ljava/lang/String;
    .end local v5           #intHex:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mGlowTimes:Landroid/preference/ListPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_b

    move-object/from16 v11, p2

    .line 461
    check-cast v11, Ljava/lang/String;

    .line 462
    .local v11, value:Ljava/lang/String;
    const-string v13, "\\|"

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, breakIndex:[Ljava/lang/String;
    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 464
    .local v8, onTime:I
    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 466
    .local v7, offTime:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v14, Landroid/provider/Settings$System;->NAVIGATION_BAR_GLOW_DURATION:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-static {v13, v14, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    sget-object v14, Landroid/provider/Settings$System;->NAVIGATION_BAR_GLOW_DURATION:[Ljava/lang/String;

    const/4 v15, 0x1

    aget-object v14, v14, v15

    invoke-static {v13, v14, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 470
    invoke-direct/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/Navbar;->updateGlowTimesSummary()V

    .line 471
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 472
    .end local v1           #breakIndex:[Ljava/lang/String;
    .end local v7           #offTime:I
    .end local v8           #onTime:I
    .end local v11           #value:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonAlpha:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_c

    .line 473
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 474
    .local v10, val:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_button_alpha"

    const v15, 0x3c23d70a

    mul-float/2addr v15, v10

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshSettings()V

    .line 478
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 479
    .end local v10           #val:F
    .restart local p2
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleOpacity:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_d

    move-object/from16 v6, p2

    .line 480
    check-cast v6, Ljava/lang/String;

    .line 481
    .restart local v6       #newVal:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 482
    .local v9, op:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "drag_handle_opacity"

    invoke-static {v13, v14, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 485
    .end local v6           #newVal:Ljava/lang/String;
    .end local v9           #op:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleWidth:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_e

    move-object/from16 v6, p2

    .line 486
    check-cast v6, Ljava/lang/String;

    .line 487
    .restart local v6       #newVal:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 489
    .restart local v2       #dp:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "drag_handle_weight"

    invoke-static {v13, v14, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 491
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 492
    .end local v2           #dp:I
    .end local v6           #newVal:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthPort:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_f

    .line 493
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 494
    .restart local v10       #val:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_width_port"

    const v15, 0x3ecccccd

    mul-float/2addr v15, v10

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 497
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 498
    .end local v10           #val:F
    .restart local p2
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mWidthLand:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_10

    .line 499
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 500
    .restart local v10       #val:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v14, "navigation_bar_width_land"

    const v15, 0x3ecccccd

    mul-float/2addr v15, v10

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 503
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 506
    .end local v10           #val:F
    .restart local p2
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 353
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mEnableNavigationBar:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 355
    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v5, "navigation_bar_show"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 358
    invoke-static {}, Lcom/aokp/romcontrol/util/Helpers;->restartSystemUI()V

    .line 386
    :goto_1
    return v3

    .line 355
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 360
    .restart local p2
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 361
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "nav_hide_enable"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 364
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleOpacity:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "drag_handle_opacity"

    const/16 v6, 0x32

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setInitValue(I)V

    .line 367
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleWidth:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "drag_handle_weight"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setInitValue(I)V

    .line 369
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "nav_hide_timeout"

    const/16 v7, 0xbb8

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

    .line 371
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshSettings()V

    goto :goto_1

    .line 373
    .restart local p2
    :cond_2
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mConfigureWidgets:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 374
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 375
    .local v1, ft:Landroid/app/FragmentTransaction;
    new-instance v0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;

    invoke-direct {v0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;-><init>()V

    .line 376
    .local v0, fragment:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;
    const-string v2, "config_widgets"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 377
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 378
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_1

    .line 380
    .end local v0           #fragment:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;
    .end local v1           #ft:Landroid/app/FragmentTransaction;
    :cond_3
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mMenuArrowKeysCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 381
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    const-string v4, "navigation_bar_menu_arrow_keys"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 386
    .restart local p2
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 587
    invoke-super {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onResume()V

    .line 588
    return-void
.end method

.method public refreshButtons()V
    .locals 19

    .prologue
    .line 617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "navigation_bar_color"

    const/16 v18, -0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 622
    .local v11, navBarColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "navigation_bar_tint"

    const/16 v18, -0x1

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 624
    .local v13, navButtonColor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "navigation_bar_button_alpha"

    const v18, 0x3f333333

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    .line 626
    .local v12, navButtonAlpha:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "navigation_bar_glow_tint"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 628
    .local v6, glowColor:I
    const/high16 v1, 0x3f80

    .line 630
    .local v1, BarAlpha:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "navigation_bar_alpha_config"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 632
    .local v14, settingValue:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 633
    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, alphas:[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v3, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    const/high16 v17, 0x437f

    div-float v1, v16, v17

    .line 636
    .end local v3           #alphas:[Ljava/lang/String;
    :cond_2
    const/high16 v16, 0x437f

    mul-float v16, v16, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 637
    .local v2, a:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "com.android.systemui:drawable/nav_bar_bg"

    invoke-static/range {v16 .. v17}, Lcom/android/internal/util/aokp/AwesomeConstants;->getSystemUIDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 639
    .local v9, mBackground:Landroid/graphics/drawable/Drawable;
    instance-of v0, v9, Landroid/graphics/drawable/ColorDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 640
    new-instance v4, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;

    if-lez v11, :cond_4

    .end local v9           #mBackground:Landroid/graphics/drawable/Drawable;
    .end local v11           #navBarColor:I
    :goto_1
    invoke-direct {v4, v11}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;-><init>(I)V

    .line 642
    .local v4, bacd:Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;
    invoke-virtual {v4, v2}, Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;->setAlpha(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarContainer:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 648
    .end local v4           #bacd:Lcom/android/internal/util/aokp/BackgroundAlphaColorDrawable;
    :goto_2
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_6

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 650
    .local v8, ib:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    invoke-virtual/range {v16 .. v16}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 651
    .local v5, d:Landroid/graphics/drawable/Drawable;
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_3

    .line 652
    sget-object v16, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 654
    :cond_3
    invoke-virtual {v8, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 657
    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 658
    new-instance v15, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 659
    .local v15, sld:Landroid/graphics/drawable/StateListDrawable;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x10100a7

    aput v18, v16, v17

    new-instance v17, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 660
    sget-object v16, Landroid/util/StateSet;->WILD_CARD:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 661
    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 648
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 640
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v7           #i:I
    .end local v8           #ib:Landroid/widget/ImageButton;
    .end local v15           #sld:Landroid/graphics/drawable/StateListDrawable;
    .restart local v9       #mBackground:Landroid/graphics/drawable/Drawable;
    .restart local v11       #navBarColor:I
    :cond_4
    check-cast v9, Landroid/graphics/drawable/ColorDrawable;

    .end local v9           #mBackground:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v11

    goto/16 :goto_1

    .line 645
    .restart local v9       #mBackground:Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarContainer:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 663
    .end local v9           #mBackground:Landroid/graphics/drawable/Drawable;
    .end local v11           #navBarColor:I
    .restart local v7       #i:I
    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mNumberofButtons:I

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_7

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtonViews:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 665
    .restart local v8       #ib:Landroid/widget/ImageButton;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 663
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 667
    .end local v8           #ib:Landroid/widget/ImageButton;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mContentRes:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "menu_location"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 669
    .local v10, menuloc:I
    packed-switch v10, :pswitch_data_0

    .line 687
    :goto_5
    :pswitch_0
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_0

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mLeftMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mRightMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_0

    .line 671
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mLeftMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mRightMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 675
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mLeftMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mRightMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 679
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mLeftMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mRightMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 683
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mLeftMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aokp/romcontrol/fragments/Navbar;->mRightMenu:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public refreshSettings()V
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshButtons()V

    .line 561
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleOpacity:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mDragHandleWidth:Lcom/aokp/romcontrol/widgets/SeekBarPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/widgets/SeekBarPreference;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/Navbar;->isTabletUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b01fd

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 573
    :goto_1
    return-void

    .line 565
    :cond_0
    const v0, 0x7f0b0053

    goto :goto_0

    .line 569
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideTimeout:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mNavBarHideEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b01fc

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0b0052

    goto :goto_2
.end method

.method public shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .parameter "uri"
    .parameter "friendlyName"
    .parameter "bmp"
    .parameter "isApplication"

    .prologue
    .line 870
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mButtons:Ljava/util/ArrayList;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;

    .line 871
    .local v0, button:Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->getPickLongPress()Z

    move-result v4

    .line 873
    .local v4, longpress:Z
    if-nez v4, :cond_1

    .line 874
    invoke-virtual {v0, p1}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setClickAction(Ljava/lang/String;)V

    .line 875
    if-nez p3, :cond_0

    .line 876
    const-string v5, ""

    invoke-virtual {v0, v5}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setIconURI(Ljava/lang/String;)V

    .line 891
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Navbar;->refreshButtons()V

    .line 892
    :goto_1
    return-void

    .line 878
    :cond_0
    iget v5, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mPendingButton:I

    invoke-direct {p0, v5}, Lcom/aokp/romcontrol/fragments/Navbar;->getIconFileName(I)Ljava/lang/String;

    move-result-object v2

    .line 879
    .local v2, iconName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 881
    .local v3, iconStream:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 885
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p3, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 886
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/Navbar;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setIconURI(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, e:Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 889
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #iconName:Ljava/lang/String;
    .end local v3           #iconStream:Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->setLongPress(Ljava/lang/String;)V

    goto :goto_0
.end method
