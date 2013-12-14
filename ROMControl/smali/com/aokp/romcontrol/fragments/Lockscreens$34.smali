.class Lcom/aokp/romcontrol/fragments/Lockscreens$34;
.super Ljava/lang/Object;
.source "Lockscreens.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Lockscreens;->createDialog(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Lockscreens;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$34;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$34;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$34;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$34;->val$values:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/aokp/romcontrol/fragments/Lockscreens;->onValueChange(Ljava/lang/String;)V

    .line 1058
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1059
    return-void
.end method
