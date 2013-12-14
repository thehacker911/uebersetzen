.class public Lcom/aokp/romcontrol/objects/EasyPair;
.super Landroid/util/Pair;
.source "EasyPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ta:",
        "Ljava/lang/Object;",
        "Tb:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Pair",
        "<TTa;TTb;>;"
    }
.end annotation


# instance fields
.field public first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTa;"
        }
    .end annotation
.end field

.field public second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTb;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/objects/EasyPair;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aokp/romcontrol/objects/EasyPair",
            "<TTa;TTb;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    .local p1, pair:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    invoke-virtual {p1}, Lcom/aokp/romcontrol/objects/EasyPair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aokp/romcontrol/objects/EasyPair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1}, Lcom/aokp/romcontrol/objects/EasyPair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    .line 32
    invoke-virtual {p1}, Lcom/aokp/romcontrol/objects/EasyPair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTa;TTb;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    .local p1, first:Ljava/lang/Object;,"TTa;"
    .local p2, second:Ljava/lang/Object;,"TTb;"
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    .line 21
    iput-object p2, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    .line 22
    return-void
.end method


# virtual methods
.method public changeFirst(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTa;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    .local p1, newFirst:Ljava/lang/Object;,"TTa;"
    iput-object p1, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public changeSecond(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTb;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    .local p1, newSecond:Ljava/lang/Object;,"TTb;"
    iput-object p1, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public clonePair()Lcom/aokp/romcontrol/objects/EasyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/aokp/romcontrol/objects/EasyPair",
            "<TTa;TTb;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    new-instance v0, Lcom/aokp/romcontrol/objects/EasyPair;

    iget-object v1, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/aokp/romcontrol/objects/EasyPair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals()Z
    .locals 3

    .prologue
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    iget-object v2, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTa;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    iget-object v0, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTb;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    iget-object v0, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    .local p0, this:Lcom/aokp/romcontrol/objects/EasyPair;,"Lcom/aokp/romcontrol/objects/EasyPair<TTa;TTb;>;"
    :try_start_0
    iget-object v3, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    .local v1, first_:Ljava/lang/String;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 51
    .local v2, second_:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EasyPair<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 42
    .end local v1           #first_:Ljava/lang/String;
    .end local v2           #second_:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 43
    .local v0, badCast:Ljava/lang/ClassCastException;
    iget-object v3, p0, Lcom/aokp/romcontrol/objects/EasyPair;->first:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #first_:Ljava/lang/String;
    goto :goto_0

    .line 48
    .end local v0           #badCast:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 49
    .restart local v0       #badCast:Ljava/lang/ClassCastException;
    iget-object v3, p0, Lcom/aokp/romcontrol/objects/EasyPair;->second:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #second_:Ljava/lang/String;
    goto :goto_1
.end method
