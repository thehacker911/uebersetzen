.class Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

.field final synthetic val$place:I


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    iput p2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->val$place:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 550
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1700(Lcom/aokp/romcontrol/fragments/LEDControl;)Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    .line 551
    iget v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->val$place:I

    add-int/lit8 v1, v2, -0x1

    .line 552
    .local v1, key:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$800(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->val$place:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 553
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$2000(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    .local v0, hashKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->appList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$2000(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 555
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->customAppList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$2100(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #calls: Lcom/aokp/romcontrol/fragments/LEDControl;->adapterRefreshSetting()V
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$2200(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    .line 557
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    iget-object v2, v2, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #calls: Lcom/aokp/romcontrol/fragments/LEDControl;->saveCustomApps()V
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$2300(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    .line 558
    return-void
.end method
