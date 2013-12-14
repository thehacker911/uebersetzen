.class public Lcom/aokp/romcontrol/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method

.method private getProperShortcutIcon(Ljava/lang/String;)I
    .locals 2
    .parameter "className"

    .prologue
    .line 57
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, c:Ljava/lang/String;
    const-string v1, "LEDControl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const v1, 0x7f02001a

    .line 80
    :goto_0
    return v1

    .line 61
    :cond_0
    const-string v1, "Lockscreens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const v1, 0x7f02001b

    goto :goto_0

    .line 63
    :cond_1
    const-string v1, "Sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const v1, 0x7f020024

    goto :goto_0

    .line 65
    :cond_2
    const-string v1, "Navbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    const v1, 0x7f02001c

    goto :goto_0

    .line 67
    :cond_3
    const-string v1, "StatusBarBattery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    const v1, 0x7f020013

    goto :goto_0

    .line 69
    :cond_4
    const-string v1, "StatusBarClock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 70
    const v1, 0x7f020014

    goto :goto_0

    .line 71
    :cond_5
    const-string v1, "StatusBarGeneral"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    const v1, 0x7f020015

    goto :goto_0

    .line 73
    :cond_6
    const-string v1, "StatusBarToggles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    const v1, 0x7f020026

    goto :goto_0

    .line 75
    :cond_7
    const-string v1, "UserInterface"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 76
    const v1, 0x7f020016

    goto :goto_0

    .line 77
    :cond_8
    const-string v1, "Weather"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 78
    const v1, 0x7f020028

    goto :goto_0

    .line 80
    :cond_9
    const/high16 v1, 0x7f03

    goto :goto_0
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .local v0, targetIntent:Landroid/content/Intent;
    const-string v1, "com.aokp.romcontrol.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    return-object v0
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 36
    invoke-virtual {p0, p3}, Lcom/aokp/romcontrol/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    .line 38
    .local v2, shortcutIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, intentClass:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #shortcutIntent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 41
    .restart local v2       #shortcutIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/CreateShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/aokp/romcontrol/ROMControlActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    const-string v3, "com.aokp.romcontrol.START_NEW_FRAGMENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v3, "aokp_fragment_name"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    const/high16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/CreateShortcut;->getProperShortcutIcon(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 50
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/aokp/romcontrol/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v4

    iget-object v4, v4, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 52
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Lcom/aokp/romcontrol/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/aokp/romcontrol/CreateShortcut;->finish()V

    .line 54
    return-void
.end method
