.class public Lcom/android/settings/service/BypassAlarm;
.super Landroid/app/Activity;
.source "BypassAlarm.java"


# instance fields
.field private mDismissButton:Landroid/widget/TextView;

.field private mDismissButtonListener:Landroid/view/View$OnClickListener;

.field private mNumbers:Ljava/lang/String;

.field private mUserDestroy:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    new-instance v0, Lcom/android/settings/service/BypassAlarm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/service/BypassAlarm$1;-><init>(Lcom/android/settings/service/BypassAlarm;)V

    iput-object v0, p0, Lcom/android/settings/service/BypassAlarm;->mDismissButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/service/BypassAlarm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/settings/service/BypassAlarm;->mUserDestroy:Z

    return p1
.end method

.method private setAlertText(Ljava/lang/String;)V
    .locals 4
    .parameter "numbers"

    .prologue
    .line 108
    const v1, 0x7f0d0034

    invoke-virtual {p0, v1}, Lcom/android/settings/service/BypassAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, alertText:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/service/BypassAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0807e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method private startService()V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/service/AlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/settings/service/BypassAlarm;->mNumbers:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/service/BypassAlarm;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method

.method private stopService()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/service/AlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/service/BypassAlarm;->stopService(Landroid/content/Intent;)Z

    .line 129
    return-void
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f04001d

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/service/BypassAlarm;->mUserDestroy:Z

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/service/BypassAlarm;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 47
    .local v3, win:Landroid/view/Window;
    const v4, 0x280401

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 52
    invoke-static {p0}, Lcom/android/settings/service/SmsCallHelper;->returnUserRingtoneLoop(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/service/BypassAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, extras:Landroid/os/Bundle;
    const-string v4, "number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/service/BypassAlarm;->mNumbers:Ljava/lang/String;

    .line 59
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 60
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/settings/service/BypassAlarm;->getLayoutResId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, view:Landroid/view/View;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/settings/service/BypassAlarm;->setContentView(Landroid/view/View;)V

    .line 64
    const v4, 0x7f0d0035

    invoke-virtual {p0, v4}, Lcom/android/settings/service/BypassAlarm;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/service/BypassAlarm;->mDismissButton:Landroid/widget/TextView;

    .line 66
    iget-object v4, p0, Lcom/android/settings/service/BypassAlarm;->mDismissButton:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/service/BypassAlarm;->mDismissButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v4, p0, Lcom/android/settings/service/BypassAlarm;->mNumbers:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/service/BypassAlarm;->setAlertText(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/service/BypassAlarm;->startService()V

    .line 71
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/settings/service/BypassAlarm;->mUserDestroy:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/service/BypassAlarm;->stopService()V

    .line 78
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "norun"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 86
    .local v2, noSound:Z
    const-string v3, "number"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, newNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/service/BypassAlarm;->mNumbers:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/service/BypassAlarm;->mNumbers:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/service/BypassAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0807e3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/service/BypassAlarm;->mNumbers:Ljava/lang/String;

    .line 90
    iget-object v3, p0, Lcom/android/settings/service/BypassAlarm;->mNumbers:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/service/BypassAlarm;->setAlertText(Ljava/lang/String;)V

    .line 92
    :cond_0
    if-nez v2, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/android/settings/service/BypassAlarm;->startService()V

    .line 95
    :cond_1
    return-void
.end method
