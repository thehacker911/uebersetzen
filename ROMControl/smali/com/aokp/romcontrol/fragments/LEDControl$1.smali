.class Lcom/aokp/romcontrol/fragments/LEDControl$1;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/LEDControl;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/LEDControl;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$1;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 136
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$1;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/LEDControl$1;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->userColor:I
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$100(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 137
    .local v0, picker:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$1;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 138
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    .line 139
    return-void
.end method
