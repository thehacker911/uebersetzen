.class public Lcom/aokp/romcontrol/ShareToClipboard;
.super Landroid/app/Activity;
.source "ShareToClipboard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/ShareToClipboard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 20
    .local v1, mClipboardManager:Landroid/content/ClipboardManager;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ShareToClipboard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 23
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 26
    .local v2, text:Ljava/lang/CharSequence;
    const-string v3, "Shared to RC"

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 29
    const v3, 0x7f0b0344

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 30
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ShareToClipboard;->finish()V

    .line 31
    return-void
.end method
