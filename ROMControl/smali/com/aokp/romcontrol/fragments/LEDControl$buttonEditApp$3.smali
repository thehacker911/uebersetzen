.class Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$3;
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


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$3;->this$1:Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 577
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 578
    return-void
.end method
