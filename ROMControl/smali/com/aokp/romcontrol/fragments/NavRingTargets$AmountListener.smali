.class public Lcom/aokp/romcontrol/fragments/NavRingTargets$AmountListener;
.super Ljava/lang/Object;
.source "NavRingTargets.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/NavRingTargets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;


# direct methods
.method public constructor <init>(Lcom/aokp/romcontrol/fragments/NavRingTargets;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$AmountListener;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$AmountListener;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, values:[Ljava/lang/String;
    aget-object v2, v1, p3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, val:I
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$AmountListener;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    #getter for: Lcom/aokp/romcontrol/fragments/NavRingTargets;->cr:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->access$200(Lcom/aokp/romcontrol/fragments/NavRingTargets;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "systemui_navring_amount"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/NavRingTargets$AmountListener;->this$0:Lcom/aokp/romcontrol/fragments/NavRingTargets;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/fragments/NavRingTargets;->updateDrawables()V

    .line 229
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
