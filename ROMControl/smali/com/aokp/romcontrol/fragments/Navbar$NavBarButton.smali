.class public Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;
.super Ljava/lang/Object;
.source "Navbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/Navbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavBarButton"
.end annotation


# instance fields
.field mClickAction:Ljava/lang/String;

.field mClickFriendlyName:Ljava/lang/String;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconURI:Ljava/lang/String;

.field mLongPressAction:Ljava/lang/String;

.field mLongPressFriendlyName:Ljava/lang/String;

.field mPickingLongPress:Z

.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Navbar;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "clickaction"
    .parameter "longpress"
    .parameter "iconuri"

    .prologue
    .line 967
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickAction:Ljava/lang/String;

    .line 969
    iput-object p3, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mLongPressAction:Ljava/lang/String;

    .line 970
    iput-object p4, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIconURI:Ljava/lang/String;

    .line 971
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/aokp/romcontrol/fragments/Navbar;->access$700(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickFriendlyName:Ljava/lang/String;

    .line 972
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mLongPressAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/aokp/romcontrol/fragments/Navbar;->access$700(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mLongPressFriendlyName:Ljava/lang/String;

    .line 973
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIconURI:Ljava/lang/String;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->setIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0, v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$800(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 974
    return-void
.end method


# virtual methods
.method public getClickAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIconURI:Ljava/lang/String;

    return-object v0
.end method

.method public getLongAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mLongPressAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mLongPressFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPickLongPress()Z
    .locals 1

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mPickingLongPress:Z

    return v0
.end method

.method public setClickAction(Ljava/lang/String;)V
    .locals 3
    .parameter "click"

    .prologue
    .line 977
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickAction:Ljava/lang/String;

    .line 978
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$700(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickFriendlyName:Ljava/lang/String;

    .line 980
    const-string v0, ""

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIconURI:Ljava/lang/String;

    .line 981
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIconURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->setIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/Navbar;->access$800(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 982
    return-void
.end method

.method public setIconURI(Ljava/lang/String;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 998
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIconURI:Ljava/lang/String;

    .line 999
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIconURI:Ljava/lang/String;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mClickAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->setIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/Navbar;->access$800(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1000
    return-void
.end method

.method public setLongPress(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 985
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mLongPressAction:Ljava/lang/String;

    .line 986
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->this$0:Lcom/aokp/romcontrol/fragments/Navbar;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mLongPressAction:Ljava/lang/String;

    #calls: Lcom/aokp/romcontrol/fragments/Navbar;->getProperSummary(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/aokp/romcontrol/fragments/Navbar;->access$700(Lcom/aokp/romcontrol/fragments/Navbar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mLongPressFriendlyName:Ljava/lang/String;

    .line 987
    return-void
.end method

.method public setPickLongPress(Z)V
    .locals 0
    .parameter "pick"

    .prologue
    .line 990
    iput-boolean p1, p0, Lcom/aokp/romcontrol/fragments/Navbar$NavBarButton;->mPickingLongPress:Z

    .line 991
    return-void
.end method
