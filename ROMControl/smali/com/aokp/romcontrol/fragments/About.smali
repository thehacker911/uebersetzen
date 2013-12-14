.class public Lcom/aokp/romcontrol/fragments/About;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "About.java"


# static fields
.field private static final AOKP:Ljava/lang/String; = "http://aokp.co/"

.field private static final MGERRIT:Ljava/lang/String; = "com.jbirdvegas.mgerrit"

.field private static final MGERRIT_AOKP_CHANGELOG:Ljava/lang/String; = ".AOKPChangelog"

.field private static final MGERRIT_MAIN_ENTRY:Ljava/lang/String; = ".GerritControllerActivity"

.field private static final MGERRIT_PLAYSTORE:Ljava/lang/String; = "https://play.google.com/store/apps/details?id=com.jbirdvegas.mgerrit"

.field public static final TAG:Ljava/lang/String; = "About"

.field private static final TEAMKANG_IRC:Ljava/lang/String; = "http://webchat.freenode.net/?channels=teamkang"


# instance fields
.field mDynamicChangelog:Landroid/preference/Preference;

.field mIrcUrl:Landroid/preference/Preference;

.field mReviewUrl:Landroid/preference/Preference;

.field mSiteUrl:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method

.method private launchActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, launch:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/About;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private launchUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 93
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, uriUrl:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    .local v1, website:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/About;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v4, 0x7f0b001a

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/About;->setTitle(I)V

    .line 36
    const v4, 0x7f050004

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/About;->addPreferencesFromResource(I)V

    .line 37
    const-string v4, "aokp_website"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/About;->mSiteUrl:Landroid/preference/Preference;

    .line 38
    const-string v4, "aokp_review"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/About;->mReviewUrl:Landroid/preference/Preference;

    .line 39
    const-string v4, "aokp_irc"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/About;->mIrcUrl:Landroid/preference/Preference;

    .line 40
    const-string v4, "aokp_dynamic_changelog"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/aokp/romcontrol/fragments/About;->mDynamicChangelog:Landroid/preference/Preference;

    .line 42
    const-string v4, "devs"

    invoke-virtual {p0, v4}, Lcom/aokp/romcontrol/fragments/About;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 43
    .local v1, devsGroup:Landroid/preference/PreferenceGroup;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, devs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 45
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 48
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 50
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 51
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 52
    .local v3, p:Landroid/preference/Preference;
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setOrder(I)V

    .line 53
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    .end local v3           #p:Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 60
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/About;->mSiteUrl:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 61
    const-string v2, "http://aokp.co/"

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/About;->launchUrl(Ljava/lang/String;)V

    .line 81
    :goto_0
    return v1

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/About;->mReviewUrl:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 65
    :try_start_0
    const-string v2, "com.jbirdvegas.mgerrit"

    const-string v3, ".GerritControllerActivity"

    invoke-direct {p0, v2, v3}, Lcom/aokp/romcontrol/fragments/About;->launchActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, failToMarket:Landroid/content/ActivityNotFoundException;
    const-string v2, "https://play.google.com/store/apps/details?id=com.jbirdvegas.mgerrit"

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/About;->launchUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0           #failToMarket:Landroid/content/ActivityNotFoundException;
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/About;->mIrcUrl:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 71
    const-string v2, "http://webchat.freenode.net/?channels=teamkang"

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/About;->launchUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/About;->mDynamicChangelog:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 75
    :try_start_1
    const-string v2, "com.jbirdvegas.mgerrit"

    const-string v3, ".AOKPChangelog"

    invoke-direct {p0, v2, v3}, Lcom/aokp/romcontrol/fragments/About;->launchActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    .restart local v0       #failToMarket:Landroid/content/ActivityNotFoundException;
    const-string v2, "https://play.google.com/store/apps/details?id=com.jbirdvegas.mgerrit"

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/About;->launchUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0           #failToMarket:Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
