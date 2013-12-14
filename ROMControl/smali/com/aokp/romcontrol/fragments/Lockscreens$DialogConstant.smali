.class public enum Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;
.super Ljava/lang/Enum;
.source "Lockscreens.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/Lockscreens;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "DialogConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

.field public static final enum CUSTOM_APP:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

.field public static final enum ICON_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

.field public static final enum LONG_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

.field public static final enum NOT_IN_ENUM:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

.field public static final enum SHORT_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    new-instance v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$1;

    const-string v1, "ICON_ACTION"

    invoke-direct {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->ICON_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    .line 156
    new-instance v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$2;

    const-string v1, "LONG_ACTION"

    invoke-direct {v0, v1, v3}, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->LONG_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    .line 162
    new-instance v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$3;

    const-string v1, "SHORT_ACTION"

    invoke-direct {v0, v1, v4}, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->SHORT_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    .line 168
    new-instance v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$4;

    const-string v1, "CUSTOM_APP"

    invoke-direct {v0, v1, v5}, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->CUSTOM_APP:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    .line 174
    new-instance v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$5;

    const-string v1, "NOT_IN_ENUM"

    invoke-direct {v0, v1, v6}, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->NOT_IN_ENUM:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    sget-object v1, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->ICON_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->LONG_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->SHORT_ACTION:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->CUSTOM_APP:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->NOT_IN_ENUM:Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    aput-object v1, v0, v6

    sput-object v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->$VALUES:[Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

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
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/aokp/romcontrol/fragments/Lockscreens$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;
    .locals 1
    .parameter "name"

    .prologue
    .line 149
    const-class v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    return-object v0
.end method

.method public static values()[Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->$VALUES:[Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    invoke-virtual {v0}, [Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Lockscreens$DialogConstant;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
