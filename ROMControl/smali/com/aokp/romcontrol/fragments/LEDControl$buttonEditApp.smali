.class Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;
.super Ljava/lang/Object;
.source "LEDControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/LEDControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "buttonEditApp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/LEDControl;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/LEDControl;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 539
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->currentSelectedApp:I
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$700(Lcom/aokp/romcontrol/fragments/LEDControl;)I

    move-result v1

    .line 540
    .local v1, place:I
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->unicornApps:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$800(Lcom/aokp/romcontrol/fragments/LEDControl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 541
    .local v2, selectedApp:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    #getter for: Lcom/aokp/romcontrol/fragments/LEDControl;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/aokp/romcontrol/fragments/LEDControl;->access$000(Lcom/aokp/romcontrol/fragments/LEDControl;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 542
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0265

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 543
    const/high16 v3, 0x7f03

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;->this$0:Lcom/aokp/romcontrol/fragments/LEDControl;

    invoke-virtual {v4}, Lcom/aokp/romcontrol/fragments/LEDControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0266

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 546
    const v3, 0x7f0b0262

    new-instance v4, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;

    invoke-direct {v4, p0, v1}, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$1;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;I)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 560
    const v3, 0x7f0b0263

    new-instance v4, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$2;

    invoke-direct {v4, p0, v1}, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$2;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;I)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 573
    const v3, 0x7f0b0264

    new-instance v4, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$3;

    invoke-direct {v4, p0}, Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp$3;-><init>(Lcom/aokp/romcontrol/fragments/LEDControl$buttonEditApp;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 580
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 581
    return-void
.end method
