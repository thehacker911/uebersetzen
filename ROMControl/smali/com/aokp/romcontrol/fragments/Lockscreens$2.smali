.class Lcom/aokp/romcontrol/fragments/Lockscreens$2;
.super Ljava/lang/Object;
.source "Lockscreens.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Lockscreens;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Lockscreens;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$2;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$2;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    const/4 v2, 0x0

    #setter for: Lcom/aokp/romcontrol/fragments/Lockscreens;->mNowTextColor:Z
    invoke-static {v1, v2}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$102(Lcom/aokp/romcontrol/fragments/Lockscreens;Z)Z

    .line 259
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$2;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #getter for: Lcom/aokp/romcontrol/fragments/Lockscreens;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$200(Lcom/aokp/romcontrol/fragments/Lockscreens;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$2;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #getter for: Lcom/aokp/romcontrol/fragments/Lockscreens;->mIconColor:I
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$400(Lcom/aokp/romcontrol/fragments/Lockscreens;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 260
    .local v0, picker:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$2;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 261
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    .line 262
    return-void
.end method
