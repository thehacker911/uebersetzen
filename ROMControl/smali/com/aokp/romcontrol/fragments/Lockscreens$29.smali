.class Lcom/aokp/romcontrol/fragments/Lockscreens$29;
.super Ljava/lang/Object;
.source "Lockscreens.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/Lockscreens;
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
    .line 590
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$29;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$29;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$29;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/Lockscreens;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$29;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/Lockscreens;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/Lockscreens;->createMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method
