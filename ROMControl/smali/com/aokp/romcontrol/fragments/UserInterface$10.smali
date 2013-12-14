.class Lcom/aokp/romcontrol/fragments/UserInterface$10;
.super Lcom/aokp/romcontrol/util/AbstractAsyncSuCMDProcessor;
.source "UserInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/UserInterface;->DisableBootAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/UserInterface;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/UserInterface;Z)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    invoke-direct {p0, p2}, Lcom/aokp/romcontrol/util/AbstractAsyncSuCMDProcessor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 756
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/aokp/romcontrol/fragments/UserInterface$10;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 759
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 761
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mRandomGenerator:Ljava/util/Random;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$900(Lcom/aokp/romcontrol/fragments/UserInterface;)Ljava/util/Random;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mInsults:[Ljava/lang/String;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$800(Lcom/aokp/romcontrol/fragments/UserInterface;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 762
    .local v0, newInsult:I
    :goto_0
    invoke-static {}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$1000()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 763
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mRandomGenerator:Ljava/util/Random;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$900(Lcom/aokp/romcontrol/fragments/UserInterface;)Ljava/util/Random;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mInsults:[Ljava/lang/String;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$800(Lcom/aokp/romcontrol/fragments/UserInterface;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_0

    .line 767
    :cond_0
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$1002(I)I

    .line 768
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #getter for: Lcom/aokp/romcontrol/fragments/UserInterface;->mInsults:[Ljava/lang/String;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$800(Lcom/aokp/romcontrol/fragments/UserInterface;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 772
    .end local v0           #newInsult:I
    :goto_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    #calls: Lcom/aokp/romcontrol/fragments/UserInterface;->resetBootAnimation()Z
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/UserInterface;->access$200(Lcom/aokp/romcontrol/fragments/UserInterface;)Z

    .line 773
    return-void

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$10;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/UserInterface;->mDisableBootAnimation:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
