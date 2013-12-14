.class public final Lcom/aokp/romcontrol/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final DeveloperPreference:[I = null

.field public static final DeveloperPreference_donateLink:I = 0x2

.field public static final DeveloperPreference_emailDev:I = 0x4

.field public static final DeveloperPreference_githubLink:I = 0x3

.field public static final DeveloperPreference_nameDev:I = 0x1

.field public static final DeveloperPreference_twitterHandle:I = 0x0

.field public static final DragSortListView:[I = null

.field public static final DragSortListView_click_remove_id:I = 0xf

.field public static final DragSortListView_collapsed_height:I = 0x0

.field public static final DragSortListView_drag_enabled:I = 0xa

.field public static final DragSortListView_drag_handle_id:I = 0xe

.field public static final DragSortListView_drag_scroll_start:I = 0x1

.field public static final DragSortListView_drag_start_mode:I = 0xd

.field public static final DragSortListView_drop_animation_duration:I = 0x9

.field public static final DragSortListView_float_alpha:I = 0x6

.field public static final DragSortListView_float_background_color:I = 0x3

.field public static final DragSortListView_max_drag_scroll_speed:I = 0x2

.field public static final DragSortListView_remove_animation_duration:I = 0x8

.field public static final DragSortListView_remove_enabled:I = 0xc

.field public static final DragSortListView_remove_mode:I = 0x4

.field public static final DragSortListView_slide_shuffle_speed:I = 0x7

.field public static final DragSortListView_sort_enabled:I = 0xb

.field public static final DragSortListView_track_drag_sort:I = 0x5

.field public static final DragSortListView_use_default_controller:I = 0x10

.field public static final ImageListPreference:[I = null

.field public static final ImageListPreference_entryImages:I = 0x1

.field public static final ImageListPreference_summaryImage:I = 0x0

.field public static final ListPreferenceMultiSelect:[I = null

.field public static final ListPreferenceMultiSelect_checkAll:I = 0x0

.field public static final ListPreferenceMultiSelect_separator:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 3279
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/aokp/romcontrol/R$styleable;->DeveloperPreference:[I

    .line 3395
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/aokp/romcontrol/R$styleable;->DragSortListView:[I

    .line 3665
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/aokp/romcontrol/R$styleable;->ImageListPreference:[I

    .line 3700
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/aokp/romcontrol/R$styleable;->ListPreferenceMultiSelect:[I

    return-void

    .line 3279
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3395
    :array_1
    .array-data 0x4
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
        0x12t 0x0t 0x1t 0x7ft
        0x13t 0x0t 0x1t 0x7ft
        0x14t 0x0t 0x1t 0x7ft
        0x15t 0x0t 0x1t 0x7ft
        0x16t 0x0t 0x1t 0x7ft
        0x17t 0x0t 0x1t 0x7ft
        0x18t 0x0t 0x1t 0x7ft
        0x19t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3665
    :array_2
    .array-data 0x4
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
    .end array-data

    .line 3700
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
