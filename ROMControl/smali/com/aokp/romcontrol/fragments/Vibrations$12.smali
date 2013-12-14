.class Lcom/aokp/romcontrol/fragments/Vibrations$12;
.super Ljava/lang/Object;
.source "Vibrations.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Vibrations;->showDia(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

.field final synthetic val$saveDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Vibrations;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$12;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/Vibrations$12;->val$saveDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 269
    if-eqz p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$12;->val$saveDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 273
    :cond_0
    return-void
.end method
