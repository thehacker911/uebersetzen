.class final Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState$1;
.super Ljava/lang/Object;
.source "IncreasingRingPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 204
    new-instance v0, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 208
    new-array v0, p1, [Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState$1;->newArray(I)[Lcom/aokp/romcontrol/widgets/IncreasingRingPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
