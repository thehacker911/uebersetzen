.class public Lcom/aokp/romcontrol/ROMControlActivity;
.super Landroid/preference/PreferenceActivity;
.source "ROMControlActivity.java"

# interfaces
.implements Lcom/aokp/romcontrol/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/ROMControlActivity$1;,
        Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;
    }
.end annotation


# static fields
.field private static KEY_USE_ENGLISH_LOCALE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ROM_Control"

.field private static hasHardwareButtons:Z

.field private static hasNotificationLed:Z

.field private static hasSPen:Z


# instance fields
.field defaultLocale:Ljava/util/Locale;

.field protected isShortcut:Z

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field mInLocalHeaderSwitch:Z

.field private mTopLevelHeaderId:I

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "use_english_locale"

    sput-object v0, Lcom/aokp/romcontrol/ROMControlActivity;->KEY_USE_ENGLISH_LOCALE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 339
    return-void
.end method

.method private highlightHeader()V
    .locals 4

    .prologue
    .line 257
    iget v1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mTopLevelHeaderId:I

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mTopLevelHeaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 259
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 261
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 264
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private setLocale()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 170
    invoke-virtual {p0, v5}, Lcom/aokp/romcontrol/ROMControlActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 171
    .local v2, p:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/aokp/romcontrol/ROMControlActivity;->KEY_USE_ENGLISH_LOCALE:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 173
    .local v3, useEnglishLocale:Z
    if-eqz v3, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, locale:Ljava/util/Locale;
    const/4 v0, 0x0

    .line 176
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 177
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 178
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 179
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 191
    :goto_0
    return-void

    .line 182
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #locale:Ljava/util/Locale;
    :cond_0
    const/4 v1, 0x0

    .line 183
    .restart local v1       #locale:Ljava/util/Locale;
    const/4 v0, 0x0

    .line 184
    .restart local v0       #config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->defaultLocale:Ljava/util/Locale;

    .line 186
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 187
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .line 268
    .local v1, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 269
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 271
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v2, v3

    .line 274
    .local v2, id:I
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 277
    iget-object v3, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v3, :cond_1

    invoke-static {v0}, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    iput-object v0, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v2           #id:I
    :cond_2
    return-void
.end method


# virtual methods
.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mFragmentClass:Ljava/lang/String;

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, intentClass:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/aokp/romcontrol/ROMControlActivity;->isShortcut:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v3, 0x7f050003

    invoke-virtual {p0, v3, p1}, Lcom/aokp/romcontrol/ROMControlActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v2, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 201
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 202
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0a0117

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 203
    sget-boolean v3, Lcom/aokp/romcontrol/ROMControlActivity;->hasNotificationLed:Z

    if-nez v3, :cond_0

    .line 204
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0a011a

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 207
    iget-object v3, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    :cond_3
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0a0118

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 211
    sget-boolean v3, Lcom/aokp/romcontrol/ROMControlActivity;->hasSPen:Z

    if-nez v3, :cond_0

    .line 212
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    :cond_4
    iget-wide v3, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0a010c

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 215
    sget-boolean v3, Lcom/aokp/romcontrol/ROMControlActivity;->hasHardwareButtons:Z

    if-nez v3, :cond_0

    .line 216
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 220
    .end local v0           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 221
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    :cond_6
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/ROMControlActivity;->updateHeaderList(Ljava/util/List;)V

    .line 224
    iput-object p1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mHeaders:Ljava/util/List;

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f08

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    sput-boolean v6, Lcom/aokp/romcontrol/ROMControlActivity;->hasNotificationLed:Z

    .line 62
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    sput-boolean v6, Lcom/aokp/romcontrol/ROMControlActivity;->hasSPen:Z

    .line 63
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    sput-boolean v6, Lcom/aokp/romcontrol/ROMControlActivity;->hasHardwareButtons:Z

    .line 64
    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/ROMControlActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    iput-object v6, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mVibrator:Landroid/os/Vibrator;

    .line 65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/ROMControlActivity;->defaultLocale:Ljava/util/Locale;

    .line 66
    const-string v6, "ROM_Control"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defualt locale: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/aokp/romcontrol/ROMControlActivity;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->setLocale()V

    .line 69
    iput-boolean v9, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mInLocalHeaderSwitch:Z

    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iput-boolean v10, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mInLocalHeaderSwitch:Z

    .line 73
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->onIsMultiPane()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->highlightHeader()V

    .line 78
    const/high16 v6, 0x7f0b

    invoke-virtual {p0, v6}, Lcom/aokp/romcontrol/ROMControlActivity;->setTitle(I)V

    .line 81
    :cond_0
    const-string v6, "com.aokp.romcontrol.START_NEW_FRAGMENT"

    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "aokp_fragment_name"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, className:Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    .local v4, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 92
    :try_start_1
    const-class v6, Lcom/aokp/romcontrol/ROMControlActivity;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    .end local v3           #className:Ljava/lang/String;
    .end local v4           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 86
    .restart local v3       #className:Ljava/lang/String;
    .restart local v4       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 88
    .local v5, e1:Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 94
    .end local v5           #e1:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v6

    .line 99
    :try_start_2
    const-class v6, Landroid/app/Fragment;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 100
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v2, b:Landroid/os/Bundle;
    const-string v6, "started_from_shortcut"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/aokp/romcontrol/ROMControlActivity;->isShortcut:Z

    .line 103
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v2, v6, v7}, Lcom/aokp/romcontrol/ROMControlActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;I)V

    .line 104
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 106
    .end local v2           #b:Landroid/os/Bundle;
    :catch_2
    move-exception v6

    .line 110
    :try_start_3
    const-class v6, Landroid/app/Activity;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 111
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/aokp/romcontrol/ROMControlActivity;->isShortcut:Z

    .line 112
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v1, activity:Landroid/content/Intent;
    const-string v6, "started_from_shortcut"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/ROMControlActivity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 117
    .end local v1           #activity:Landroid/content/Intent;
    :catch_3
    move-exception v6

    .line 120
    .end local v3           #className:Ljava/lang/String;
    .end local v4           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f0a011d

    .line 136
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 137
    .local v1, inflater:Landroid/view/MenuInflater;
    const v3, 0x7f0d0001

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 141
    .local v2, locale:Landroid/view/MenuItem;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    .line 147
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 145
    .local v0, config:Landroid/content/res/Configuration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 233
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/aokp/romcontrol/ROMControlActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 236
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 238
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 239
    iput-object v1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 243
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 153
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 165
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 155
    :sswitch_0
    const-string v5, "ROM_Control"

    const-string v6, "change_locale clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/ROMControlActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 157
    .local v1, p:Landroid/content/SharedPreferences;
    sget-object v5, Lcom/aokp/romcontrol/ROMControlActivity;->KEY_USE_ENGLISH_LOCALE:Ljava/lang/String;

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 158
    .local v2, useEnglishLocale:Z
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/aokp/romcontrol/ROMControlActivity;->KEY_USE_ENGLISH_LOCALE:Ljava/lang/String;

    if-nez v2, :cond_0

    move v3, v4

    :cond_0
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->recreate()V

    goto :goto_0

    .line 162
    .end local v1           #p:Landroid/content/SharedPreferences;
    .end local v2           #useEnglishLocale:Z
    :sswitch_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->onBackPressed()V

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f0a011d -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 303
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 304
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 305
    check-cast v0, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;->pause()V

    .line 307
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    const/4 v4, 0x0

    .line 463
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 465
    .local v3, titleRes:I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/aokp/romcontrol/ROMControlActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 289
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 291
    invoke-direct {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->setLocale()V

    .line 293
    invoke-virtual {p0}, Lcom/aokp/romcontrol/ROMControlActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 294
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 295
    check-cast v0, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;->resume()V

    .line 297
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 324
    iget-object v1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mHeaders:Ljava/util/List;

    .line 329
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 330
    iget-object v2, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;

    iget-object v2, p0, Lcom/aokp/romcontrol/ROMControlActivity;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/aokp/romcontrol/ROMControlActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 337
    return-void
.end method
