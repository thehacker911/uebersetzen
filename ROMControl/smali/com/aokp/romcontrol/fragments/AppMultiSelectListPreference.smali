.class public Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;
.super Landroid/preference/DialogPreference;
.source "AppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppViewHolder;,
        Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;,
        Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
    }
.end annotation


# static fields
.field private static final sDisplayNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 256
    new-instance v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$2;

    invoke-direct {v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$2;-><init>()V

    sput-object v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->sDisplayNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    .line 57
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mValues:Ljava/util/Set;

    .line 58
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 69
    .local v6, pkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 70
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 71
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 69
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;

    invoke-direct {v5, p0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;-><init>(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)V

    .line 75
    .local v5, info:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
    iput-object v0, v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 76
    iget-object v7, v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 77
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v5           #info:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    sget-object v8, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->sDisplayNameComparator:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;

    .line 84
    .restart local v5       #info:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
    iget-object v7, v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v7, v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 87
    .end local v5           #info:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
    :cond_2
    new-instance v5, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;

    invoke-direct {v5, p0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;-><init>(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)V

    .line 88
    .restart local v5       #info:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 89
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 90
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 91
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    return-void
.end method

.method static synthetic access$076(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPackageInfoList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 121
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    .end local v0           #i:I
    :goto_1
    return v0

    .line 122
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 128
    .end local v0           #i:I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getValues()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 165
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    .line 167
    .local v0, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 171
    .end local v0           #values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mPreferenceChanged:Z

    .line 172
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 5
    .parameter "a"
    .parameter "index"

    .prologue
    .line 176
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 177
    .local v0, defaultValues:[Ljava/lang/CharSequence;
    array-length v3, v0

    .line 178
    .local v3, valueCount:I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v2, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 181
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-object v2
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 134
    new-instance v0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$AppListAdapter;-><init>(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 136
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mNewValues:Ljava/util/Set;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 137
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 189
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 190
    return-void

    .line 189
    .restart local p2
    :cond_0
    check-cast p2, Ljava/util/Set;

    goto :goto_0
.end method

.method public setValues(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 102
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-virtual {p0, p1}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->persistStringSet(Ljava/util/Set;)Z

    .line 105
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 143
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 144
    .local v1, listView:Landroid/widget/ListView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 145
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 146
    new-instance v2, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$1;-><init>(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    return-void
.end method
