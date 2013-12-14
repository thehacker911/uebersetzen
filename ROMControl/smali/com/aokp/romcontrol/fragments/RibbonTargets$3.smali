.class Lcom/aokp/romcontrol/fragments/RibbonTargets$3;
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
    .line 360
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    const/4 v2, 0x0

    #setter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->colorPref:I
    invoke-static {v1, v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$302(Lcom/aokp/romcontrol/fragments/RibbonTargets;I)I

    .line 364
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$400(Lcom/aokp/romcontrol/fragments/RibbonTargets;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/RibbonTargets;->ribbonColor:I
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->access$500(Lcom/aokp/romcontrol/fragments/RibbonTargets;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 365
    .local v0, picker:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$3;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 366
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    .line 367
    return-void
.end method
