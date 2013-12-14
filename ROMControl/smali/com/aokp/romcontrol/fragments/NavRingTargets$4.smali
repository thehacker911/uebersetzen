.class Lcom/aokp/romcontrol/fragments/NavRingTargets$4;
.super Ljava/lang/Object;
.source "NavRingTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/NavRingTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$4;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$4;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$4;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$4;->val$values:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->onValueChange(Ljava/lang/String;)V

    .line 614
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 615
    return-void
.end method
