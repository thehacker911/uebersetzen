.class public enum Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;
.super Ljava/lang/Enum;
.source "RibbonTargets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "DialogConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

.field public static final enum AWESOME_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

.field public static final enum CUSTOM_APP:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

.field public static final enum CUSTOM_ICON:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

.field public static final enum INSERT_TARGET:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

.field public static final enum LONG_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

.field public static final enum REMOVE_TARGET:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

.field public static final enum SHORT_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$1;

    const-string v1, "REMOVE_TARGET"

    invoke-direct {v0, v1, v3}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->REMOVE_TARGET:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    .line 208
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$2;

    const-string v1, "LONG_ACTION"

    invoke-direct {v0, v1, v4}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->LONG_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    .line 214
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$3;

    const-string v1, "INSERT_TARGET"

    invoke-direct {v0, v1, v5}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->INSERT_TARGET:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    .line 220
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$4;

    const-string v1, "CUSTOM_ICON"

    invoke-direct {v0, v1, v6}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->CUSTOM_ICON:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    .line 226
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$5;

    const-string v1, "CUSTOM_APP"

    invoke-direct {v0, v1, v7}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->CUSTOM_APP:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    .line 232
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$6;

    const-string v1, "AWESOME_ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->AWESOME_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    .line 238
    new-instance v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$7;

    const-string v1, "SHORT_ACTION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->SHORT_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    .line 201
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    sget-object v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->REMOVE_TARGET:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->LONG_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->INSERT_TARGET:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->CUSTOM_ICON:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->CUSTOM_APP:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->AWESOME_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->SHORT_ACTION:Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->$VALUES:[Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

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
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/aokp/romcontrol/fragments/RibbonTargets$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;
    .locals 1
    .parameter "name"

    .prologue
    .line 201
    const-class v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    return-object v0
.end method

.method public static values()[Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->$VALUES:[Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    invoke-virtual {v0}, [Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/RibbonTargets$DialogConstant;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
