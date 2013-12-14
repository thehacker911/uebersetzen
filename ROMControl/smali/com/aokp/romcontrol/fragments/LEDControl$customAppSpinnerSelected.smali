.class Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/LEDControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "customAppSpinnerSelected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/LEDControl;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$800(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mPicker:Lcom/aokp/romcontrol/util/ShortcutPickerHelper;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1700(Lcom/aokp/romcontrol/fragments/LEDControl;)Lcom/aokp/romcontrol/util/ShortcutPickerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->pickShortcut()V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$800(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #calls: Lcom/aokp/romcontrol/fragments/LEDControl;->updateLEDforNew(I)V
    invoke-static {v0, p3}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1800(Lcom/aokp/romcontrol/fragments/LEDControl;I)V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #setter for: Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I
    invoke-static {v0, p3}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$702(Lcom/aokp/romcontrol/fragments/LEDControl;I)I

    .line 526
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/LEDControl$customAppSpinnerSelected;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #calls: Lcom/aokp/romcontrol/fragments/LEDControl;->editButtonVisibility()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$1900(Lcom/aokp/romcontrol/fragments/LEDControl;)V

    .line 527
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
