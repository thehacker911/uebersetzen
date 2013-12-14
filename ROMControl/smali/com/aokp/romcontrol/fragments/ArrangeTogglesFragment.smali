.class public Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;
.super Landroid/app/DialogFragment;
.source "ArrangeTogglesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;,
        Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;
    }
.end annotation


# static fields
.field private static final PREF_HANDLE_KEY:Ljava/lang/String; = "toggles_arrange_right_handle"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;

.field mAddToggles:Landroid/widget/Button;

.field mClose:Landroid/widget/Button;

.field mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field mToggle:Landroid/widget/Switch;

.field params:Landroid/view/ViewGroup$LayoutParams;

.field toggles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 33
    const-class v0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->toggles:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->showToggleSelectionDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->useRightSideLayout()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->updateToggleList()V

    return-void
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;
    .locals 1
    .parameter "toggleInfo"

    .prologue
    .line 48
    new-instance v0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    invoke-direct {v0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;-><init>()V

    .line 49
    .local v0, f:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;
    invoke-virtual {v0, p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method

.method private setUseRightSideHandle(Z)V
    .locals 2
    .parameter "right"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "toggles_arrange_right_handle"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 279
    return-void
.end method

.method private showToggleSelectionDialog()V
    .locals 9

    .prologue
    .line 218
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    sget-object v7, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    const-string v8, "toggles"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 222
    .local v0, allToggles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 226
    .local v6, items:[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 227
    .local v5, itemStrings:[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v2, v7, [Z

    .line 230
    .local v2, checkedItems:[Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v6

    if-ge v4, v7, :cond_0

    .line 231
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v4

    .line 232
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-static {v7, v8}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->lookupToggle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const/4 v4, 0x0

    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_1

    .line 237
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->toggles:Ljava/util/ArrayList;

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    aput-boolean v7, v2, v4

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 240
    :cond_1
    const v7, 0x7f0b014b

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 241
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 242
    new-instance v7, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$5;

    invoke-direct {v7, p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$5;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    const v7, 0x7f0b036f

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 251
    new-instance v7, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$6;

    invoke-direct {v7, p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$6;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v5, v2, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 264
    .local v3, d:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 265
    return-void
.end method

.method private updateToggleList()V
    .locals 3

    .prologue
    .line 67
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->toggles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 68
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->getEnabledToggles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, t:Ljava/lang/String;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->toggles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    .end local v1           #t:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private useRightSideLayout()Z
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "toggles_arrange_right_handle"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 157
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 283
    invoke-direct {p0, p2}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->setUseRightSideHandle(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->dismiss()V

    .line 285
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->newInstance(Landroid/os/Bundle;)Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;

    move-result-object v0

    .line 286
    .local v0, f:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const/4 v0, 0x2

    const v1, 0x1030070

    invoke-virtual {p0, v0, v1}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->setStyle(II)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->setShowsDialog(Z)V

    .line 59
    sget-object v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->sToggles:Landroid/os/Bundle;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 77
    const v2, 0x7f04000d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 81
    .local v1, rootView:Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->updateToggleList()V

    .line 82
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 83
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v3, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->toggles:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4, v5}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$EnabledTogglesAdapter;

    invoke-virtual {v2, v3}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$ConfigurationDragSortController;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V

    .line 88
    .local v0, dragSortController:Lcom/mobeta/android/dslv/DragSortController;
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 89
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v3, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;

    invoke-direct {v3, p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$1;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V

    invoke-virtual {v2, v3}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 116
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v2, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v3, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$2;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;Lcom/mobeta/android/dslv/DragSortController;)V

    invoke-virtual {v2, v3}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 125
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mobeta/android/dslv/DragSortListView;->setItemsCanFocus(Z)V

    .line 127
    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mToggle:Landroid/widget/Switch;

    .line 128
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mToggle:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->useRightSideLayout()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 129
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mToggle:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mClose:Landroid/widget/Button;

    .line 132
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mClose:Landroid/widget/Button;

    new-instance v3, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$3;

    invoke-direct {v3, p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$3;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mAddToggles:Landroid/widget/Button;

    .line 140
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;->mAddToggles:Landroid/widget/Button;

    new-instance v3, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$4;

    invoke-direct {v3, p0}, Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment$4;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeTogglesFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 270
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 153
    return-void
.end method
