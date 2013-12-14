.class Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
.super Ljava/lang/Object;
.source "LEDControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/LEDControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomApps"
.end annotation


# instance fields
.field public appColor:I

.field public appPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "appPackage"
    .parameter "appColor"

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->appPackage:Ljava/lang/String;

    .line 615
    iput p2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->appColor:I

    .line 616
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 628
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 640
    :goto_0
    return-object v2

    .line 631
    :cond_0
    const-string v4, ";"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, app:[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    move-object v2, v3

    .line 633
    goto :goto_0

    .line 637
    :cond_1
    :try_start_0
    new-instance v2, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .local v2, item:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    goto :goto_0

    .line 639
    .end local v2           #item:Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    move-object v2, v3

    .line 640
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    iget v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$CustomApps;->appColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
