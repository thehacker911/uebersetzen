.class public Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;
.super Landroid/app/DialogFragment;
.source "ArrangeRibbonTogglesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$ConfigurationDragSortController;,
        Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;
    }
.end annotation


# static fields
.field private static final PREF_HANDLE_KEY:Ljava/lang/String; = "toggles_arrange_right_handle"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field allToggles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allTogglesSorted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field allTogglesStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field arrayNum:I

.field mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;

.field mAddToggles:Landroid/widget/Button;

.field mClose:Landroid/widget/Button;

.field mContentRes:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field mToggle:Landroid/widget/Switch;

.field params:Landroid/view/ViewGroup$LayoutParams;

.field rootView:Landroid/view/ViewGroup;

.field sToggles:Ljava/util/ArrayList;
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
    .line 35
    const-class v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allToggles:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesStrings:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->saveToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->showToggleSelectionDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->useRightSideLayout()Z

    move-result v0

    return v0
.end method

.method private saveToggles()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->SWIPE_RIBBON_TOGGLES:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->arrayNum:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putArrayList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 137
    return-void
.end method

.method private setUseRightSideHandle(Z)V
    .locals 2
    .parameter "right"

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->getActivity()Landroid/app/Activity;

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

    .line 275
    return-void
.end method

.method private showToggleSelectionDialog()V
    .locals 9

    .prologue
    .line 206
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesStrings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 209
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesStrings:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_0
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 213
    const/4 v3, 0x0

    :goto_1
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 214
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesStrings:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 215
    .local v6, j:I
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allToggles:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    .end local v6           #j:I
    :cond_1
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesStrings:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 221
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 222
    .local v5, items:[Ljava/lang/String;
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    .line 223
    .local v4, itemStrings:[Ljava/lang/String;
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v1, v7, [Z

    .line 226
    .local v1, checkedItems:[Z
    const/4 v3, 0x0

    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 227
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesSorted:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v3

    .line 228
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesStrings:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v4, v3

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 232
    :cond_2
    const/4 v3, 0x0

    :goto_3
    array-length v7, v1

    if-ge v3, v7, :cond_3

    .line 233
    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    aput-boolean v7, v1, v3

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 236
    :cond_3
    const v7, 0x7f0b014b

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 237
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 238
    new-instance v7, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$5;

    invoke-direct {v7, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$5;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    const v7, 0x7f0b036f

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    new-instance v7, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$6;

    invoke-direct {v7, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$6;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V

    invoke-virtual {v0, v4, v1, v7}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 260
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 261
    return-void
.end method

.method private useRightSideLayout()Z
    .locals 3

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->getActivity()Landroid/app/Activity;

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
    .line 146
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 279
    invoke-direct {p0, p2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->setUseRightSideHandle(Z)V

    .line 280
    new-instance v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;

    invoke-direct {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;-><init>()V

    .line 281
    .local v0, f:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mContentRes:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allToggles:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesStrings:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    iget v6, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->arrayNum:I

    invoke-virtual/range {v0 .. v6}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->setResources(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 282
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->dismiss()V

    .line 283
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 59
    const/4 v0, 0x2

    const v1, 0x1030070

    invoke-virtual {p0, v0, v1}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->setStyle(II)V

    .line 60
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->setShowsDialog(Z)V

    .line 63
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->rootView:Landroid/view/ViewGroup;

    .line 86
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 87
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$EnabledTargetsAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    new-instance v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$ConfigurationDragSortController;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$ConfigurationDragSortController;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V

    .line 92
    .local v0, dragSortController:Lcom/mobeta/android/dslv/DragSortController;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 93
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$1;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$1;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 102
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$2;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;Lcom/mobeta/android/dslv/DragSortController;)V

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setItemsCanFocus(Z)V

    .line 111
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mToggle:Landroid/widget/Switch;

    .line 112
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mToggle:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->useRightSideLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mToggle:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mClose:Landroid/widget/Button;

    .line 116
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mClose:Landroid/widget/Button;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$3;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$3;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mAddToggles:Landroid/widget/Button;

    .line 125
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mAddToggles:Landroid/widget/Button;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$4;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment$4;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->rootView:Landroid/view/ViewGroup;

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
    .line 266
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public setResources(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "context"
    .parameter "res"
    .parameter
    .parameter
    .parameter
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, bList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, sList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->mContentRes:Landroid/content/ContentResolver;

    .line 72
    iput-object p3, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allToggles:Ljava/util/ArrayList;

    .line 73
    iput-object p4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->allTogglesStrings:Ljava/util/ArrayList;

    .line 74
    iput-object p5, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->sToggles:Ljava/util/ArrayList;

    .line 75
    iput p6, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonTogglesFragment;->arrayNum:I

    .line 76
    return-void
.end method
