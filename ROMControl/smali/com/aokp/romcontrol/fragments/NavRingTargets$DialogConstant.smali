.class public enum Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;
.super Ljava/lang/Enum;
.source "NavRingTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/NavRingTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "DialogConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

.field public static final enum CUSTOM_APP:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

.field public static final enum ICON_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

.field public static final enum LONG_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

.field public static final enum NOT_IN_ENUM:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

.field public static final enum SHORT_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$1;

    const-string v1, "ICON_ACTION"

    invoke-direct {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->ICON_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    .line 112
    new-instance v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$2;

    const-string v1, "LONG_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->LONG_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    .line 118
    new-instance v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$3;

    const-string v1, "SHORT_ACTION"

    invoke-direct {v0, v1, v4}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->SHORT_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    .line 124
    new-instance v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$4;

    const-string v1, "CUSTOM_APP"

    invoke-direct {v0, v1, v5}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->CUSTOM_APP:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    .line 130
    new-instance v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$5;

    const-string v1, "NOT_IN_ENUM"

    invoke-direct {v0, v1, v6}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->NOT_IN_ENUM:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    .line 105
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    sget-object v1, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->ICON_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->LONG_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->SHORT_ACTION:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->CUSTOM_APP:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->NOT_IN_ENUM:Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    aput-object v1, v0, v6

    sput-object v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->$VALUES:[Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/aokp/romcontrol/fragments/NavRingTargets$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;
    .locals 1
    .parameter "name"

    .prologue
    .line 105
    const-class v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    return-object v0
.end method

.method public static values()[Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->$VALUES:[Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    invoke-virtual {v0}, [Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/NavRingTargets$DialogConstant;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
