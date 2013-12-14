.class public Lcom/aokp/romcontrol/AOKPActivity;
.super Landroid/app/Activity;
.source "AOKPActivity.java"


# instance fields
.field protected mStartedFromShortcut:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "started_from_shortcut"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "started_from_shortcut"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aokp/romcontrol/AOKPActivity;->mStartedFromShortcut:Z

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-boolean v2, p0, Lcom/aokp/romcontrol/AOKPActivity;->mStartedFromShortcut:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 21
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 25
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 27
    :pswitch_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/AOKPActivity;->onBackPressed()V

    .line 28
    const/4 v0, 0x1

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
