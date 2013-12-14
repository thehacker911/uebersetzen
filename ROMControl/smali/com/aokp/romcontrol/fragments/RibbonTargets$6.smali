.class Lcom/aokp/romcontrol/fragments/RibbonTargets$6;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$6;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 399
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$6;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    const/4 v2, 0x1

    #setter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->colorPref:I
    invoke-static {v1, v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$302(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I

    .line 400
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$6;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$1000(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$6;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->textColor:I
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$1100(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 401
    .local v0, picker:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$6;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 402
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    .line 403
    return-void
.end method
