.class Lcom/aokp/romcontrol/fragments/Vibrations$8;
.super Ljava/lang/Object;
.source "Vibrations.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Vibrations;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Vibrations;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$8;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations$8;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/Vibrations;->showPickerDialog(Z)V

    .line 207
    return-void
.end method
