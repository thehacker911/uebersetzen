.class final Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$2;
.super Ljava/lang/Object;
.source "AppMultiSelectListPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$2;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$2;->collator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 257
    check-cast p1, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;

    .end local p1
    check-cast p2, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$2;->compare(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;)I

    move-result v0

    return v0
.end method
