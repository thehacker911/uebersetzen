.class public Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;
.super Ljava/lang/Object;
.source "StatusBarToggles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/StatusBarToggles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToggleButton"
.end annotation


# instance fields
.field mClickAction:Ljava/lang/String;

.field mClickFriendlyName:Ljava/lang/String;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconURI:Ljava/lang/String;

.field mLongPressAction:Ljava/lang/String;

.field mLongPressFriendlyName:Ljava/lang/String;

.field mPickingLongPress:Z

.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "clickaction"
    .parameter "longpress"
    .parameter "iconuri"

    .prologue
    .line 902
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickAction:Ljava/lang/String;

    .line 904
    iput-object p3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressAction:Ljava/lang/String;

    .line 905
    iput-object p4, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mIconURI:Ljava/lang/String;

    .line 906
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$800(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickFriendlyName:Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$800(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressFriendlyName:Ljava/lang/String;

    .line 908
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->checkEmptyClick()V

    .line 909
    return-void
.end method


# virtual methods
.method public checkEmptyClick()V
    .locals 4

    .prologue
    .line 927
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mIconURI:Ljava/lang/String;

    const-string v0, "**null**"

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickAction:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressAction:Ljava/lang/String;

    :goto_0
    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->setIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v1, v2, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$900(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 929
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickAction:Ljava/lang/String;

    goto :goto_0
.end method

.method public getClickAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mIconURI:Ljava/lang/String;

    return-object v0
.end method

.method public getLongAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPickLongPress()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mPickingLongPress:Z

    return v0
.end method

.method public setClickAction(Ljava/lang/String;)V
    .locals 2
    .parameter "click"

    .prologue
    .line 912
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickAction:Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$800(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mClickFriendlyName:Ljava/lang/String;

    .line 914
    const-string v0, ""

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mIconURI:Ljava/lang/String;

    .line 915
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->checkEmptyClick()V

    .line 916
    return-void
.end method

.method public setIconURI(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 940
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mIconURI:Ljava/lang/String;

    .line 941
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->checkEmptyClick()V

    .line 942
    return-void
.end method

.method public setLongPress(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 919
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressAction:Ljava/lang/String;

    .line 920
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->access$800(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mLongPressFriendlyName:Ljava/lang/String;

    .line 921
    const-string v0, ""

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mIconURI:Ljava/lang/String;

    .line 922
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->checkEmptyClick()V

    .line 923
    return-void
.end method

.method public setPickLongPress(Z)V
    .locals 0
    .parameter "pick"

    .prologue
    .line 932
    iput-boolean p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$ToggleButton;->mPickingLongPress:Z

    .line 933
    return-void
.end method
