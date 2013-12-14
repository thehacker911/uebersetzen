.class Lcom/aokp/romcontrol/fragments/RibbonTargets$26;
.super Ljava/lang/Object;
.source "RibbonTargets.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/RibbonTargets;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/RibbonTargets;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1589
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$26;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$26;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$26;->this$0:Lcom/aokp/romcontrol/fragments/RibbonTargets;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/RibbonTargets$26;->val$values:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/RibbonTargets;->onValueChange(Ljava/lang/String;)V

    .line 1593
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1594
    return-void
.end method
