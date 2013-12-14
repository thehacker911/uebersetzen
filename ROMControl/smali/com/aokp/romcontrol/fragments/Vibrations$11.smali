.class Lcom/aokp/romcontrol/fragments/Vibrations$11;
.super Ljava/lang/Object;
.source "Vibrations.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$name:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Vibrations;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$11;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/Vibrations$11;->val$name:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$11;->val$name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, pattern:Ljava/lang/String;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$11;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v1, v0}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->saveCapturedPattern(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations$11;->this$0:Lcom/aokp/romcontrol/fragments/Vibrations;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/Vibrations;->mCurLoadedText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-void
.end method
