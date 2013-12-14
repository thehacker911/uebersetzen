.class public Lcom/aokp/romcontrol/util/ShortcutPickerHelper;
.super Ljava/lang/Object;
.source "ShortcutPickerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;
    }
.end annotation


# static fields
.field public static final REQUEST_CREATE_SHORTCUT:I = 0x66

.field public static final REQUEST_PICK_APPLICATION:I = 0x65

.field public static final REQUEST_PICK_SHORTCUT:I = 0x64


# instance fields
.field private mListener:Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;

.field private mParent:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;)V
    .locals 0
    .parameter "parent"
    .parameter "listener"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    .line 59
    iput-object p2, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mListener:Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;

    .line 60
    return-void
.end method

.method private completeSetCustomApp(Landroid/content/Intent;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mListener:Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v2}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 118
    return-void
.end method

.method private completeSetCustomShortcut(Landroid/content/Intent;)V
    .locals 14
    .parameter "data"

    .prologue
    const/4 v13, 0x0

    .line 121
    const-string v10, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 123
    .local v7, intent:Landroid/content/Intent;
    const-string v10, "android.intent.extra.shortcut.NAME"

    const-string v11, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {v7, v13}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, appUri:Ljava/lang/String;
    const-string v10, "com.android.contacts.action.QUICK_CONTACT"

    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    const/4 v2, 0x0

    .line 130
    .local v2, bmp:Landroid/graphics/Bitmap;
    const-string v10, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 131
    .local v4, extra:Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    instance-of v10, v4, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_0

    move-object v2, v4

    .line 132
    check-cast v2, Landroid/graphics/Bitmap;

    .line 134
    :cond_0
    if-nez v2, :cond_1

    .line 135
    const-string v10, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 136
    if-eqz v4, :cond_1

    instance-of v10, v4, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v10, :cond_1

    .line 138
    :try_start_0
    move-object v0, v4

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v5, v0

    .line 139
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    iget-object v10, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 140
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    iget-object v10, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 142
    .local v9, resources:Landroid/content/res/Resources;
    iget-object v10, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 143
    .local v6, id:I
    invoke-static {v9, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 149
    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v6           #id:I
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .end local v9           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mListener:Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;

    invoke-direct {p0, v7}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v1, v11, v2, v13}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper$OnPickListener;->shortcutPicked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 150
    return-void

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "ROMControl.ShortcutPicker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not load shortcut icon: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;
    .locals 4
    .parameter "intent"
    .parameter "labelOnly"

    .prologue
    .line 153
    iget-object v3, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 154
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 155
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 157
    .local v1, friendlyName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    if-nez v1, :cond_0

    if-nez p2, :cond_0

    .line 160
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 164
    :cond_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    .end local v1           #friendlyName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .restart local v1       #friendlyName:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 168
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, activityName:Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private processShortcut(Landroid/content/Intent;II)V
    .locals 6
    .parameter "intent"
    .parameter "requestCodeApplication"
    .parameter "requestCodeShortcut"

    .prologue
    .line 101
    iget-object v4, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    iget-object v4, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    invoke-virtual {v4, v2, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    invoke-virtual {v4, p1, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public getFriendlyNameForUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    const/4 p1, 0x0

    .line 191
    .end local p1
    :goto_0
    return-object p1

    .line 183
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->getFriendlyActivityName(Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0, v0}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->getFriendlyShortcutName(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 188
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 63
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->completeSetCustomApp(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->completeSetCustomShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 72
    :pswitch_2
    const/16 v0, 0x65

    const/16 v1, 0x66

    invoke-direct {p0, p3, v0, v1}, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pickShortcut()V
    .locals 7

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    const v5, 0x7f0b008b

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v2, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    iget-object v4, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f020008

    invoke-static {v4, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    const-string v4, "android.intent.extra.TITLE"

    iget-object v5, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    const v6, 0x7f0b008a

    invoke-virtual {v5, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 93
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 95
    iget-object v4, p0, Lcom/aokp/romcontrol/util/ShortcutPickerHelper;->mParent:Landroid/app/Fragment;

    const/16 v5, 0x64

    invoke-virtual {v4, v1, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 96
    return-void
.end method
