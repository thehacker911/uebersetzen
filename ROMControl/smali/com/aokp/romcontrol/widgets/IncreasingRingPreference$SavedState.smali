.class Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "IncreasingRingPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/widgets/IncreasingRingPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mEnabled:Z

.field mIntervalSelection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState$1;

    invoke-direct {v0}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->mEnabled:Z

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->mIntervalSelection:I

    .line 188
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "superState"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 199
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 193
    iget-boolean v0, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;->mIntervalSelection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
