.class Lcom/aokp/romcontrol/fragments/StatusBarToggles$3;
.super Ljava/lang/Object;
.source "StatusBarToggles.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/StatusBarToggles;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

.field final synthetic val$availableToggles:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarToggles;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$3;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$3;->val$availableToggles:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 427
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$3;->val$availableToggles:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    .local v0, toggleKey:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 429
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$3;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->addToggle(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/StatusBarToggles$3;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->removeToggle(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
