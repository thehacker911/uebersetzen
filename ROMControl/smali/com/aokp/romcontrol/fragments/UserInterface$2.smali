.class Lcom/aokp/romcontrol/fragments/UserInterface$2;
.super Ljava/lang/Object;
.source "UserInterface.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/UserInterface;->openBootAnimationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/UserInterface;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/UserInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$2;->this$0:Lcom/aokp/romcontrol/fragments/UserInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 463
    new-instance v0, Lcom/aokp/romcontrol/fragments/UserInterface$2$1;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$2$1;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface$2;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "rm \'/data/local/bootanimation.zip\'"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rm \'/data/media/bootanimation.backup\'"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/UserInterface$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 470
    return-void
.end method
