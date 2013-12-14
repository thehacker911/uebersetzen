.class public Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;
.super Landroid/app/DialogFragment;
.source "ArrangeRibbonFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;,
        Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;
    }
.end annotation


# static fields
.field private static final PREF_HANDLE_KEY:Ljava/lang/String; = "toggles_arrange_right_handle"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field aTargets:Ljava/util/ArrayList;
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

.field cTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;

.field mClose:Landroid/widget/Button;

.field mContentRes:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mListView:Lcom/mobeta/android/dslv/DragSortListView;

.field mSave:Landroid/widget/Button;

.field mToggle:Landroid/widget/Switch;

.field params:Landroid/view/ViewGroup$LayoutParams;

.field rootView:Landroid/view/ViewGroup;

.field sTargets:Ljava/util/ArrayList;
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
    .line 31
    const-class v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->aTargets:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->sTargets:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->lTargets:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->cTargets:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->saveButtons()V

    return-void
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->useRightSideLayout()Z

    move-result v0

    return v0
.end method

.method private saveButtons()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_SHORT:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->arrayNum:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->sTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putArrayList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 146
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_LONG:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->arrayNum:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->lTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putArrayList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 148
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mContentRes:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->RIBBON_TARGETS_ICONS:[Ljava/lang/String;

    iget v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->arrayNum:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->cTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putArrayList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 150
    return-void
.end method

.method private setUseRightSideHandle(Z)V
    .locals 2
    .parameter "right"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->getActivity()Landroid/app/Activity;

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

    .line 231
    return-void
.end method

.method private useRightSideLayout()Z
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->getActivity()Landroid/app/Activity;

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
    .line 159
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 235
    invoke-direct {p0, p2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->setUseRightSideHandle(Z)V

    .line 236
    new-instance v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;

    invoke-direct {v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;-><init>()V

    .line 237
    .local v0, f:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mContentRes:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->aTargets:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->sTargets:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->lTargets:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->cTargets:Ljava/util/ArrayList;

    iget v7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->arrayNum:I

    invoke-virtual/range {v0 .. v7}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->setResources(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 239
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->dismiss()V

    .line 240
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    const/4 v0, 0x2

    const v1, 0x1030070

    invoke-virtual {p0, v0, v1}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->setStyle(II)V

    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->setShowsDialog(Z)V

    .line 59
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 79
    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->rootView:Landroid/view/ViewGroup;

    .line 83
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    .line 84
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->aTargets:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$EnabledTargetsAdapter;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    new-instance v0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$ConfigurationDragSortController;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)V

    .line 89
    .local v0, dragSortController:Lcom/mobeta/android/dslv/DragSortController;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 90
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$1;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)V

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 109
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {v1, p0}, Lcom/mobeta/android/dslv/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$2;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;Lcom/mobeta/android/dslv/DragSortController;)V

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mListView:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setItemsCanFocus(Z)V

    .line 118
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mToggle:Landroid/widget/Switch;

    .line 119
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mToggle:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->useRightSideLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mToggle:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mClose:Landroid/widget/Button;

    .line 123
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mClose:Landroid/widget/Button;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$3;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$3;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mSave:Landroid/widget/Button;

    .line 134
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mSave:Landroid/widget/Button;

    new-instance v2, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$4;

    invoke-direct {v2, p0}, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment$4;-><init>(Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->rootView:Landroid/view/ViewGroup;

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
    .line 222
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 155
    return-void
.end method

.method public setResources(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter "context"
    .parameter "res"
    .parameter
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
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p3, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, lList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, cList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->mContentRes:Landroid/content/ContentResolver;

    .line 68
    iput-object p3, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->aTargets:Ljava/util/ArrayList;

    .line 69
    iput-object p4, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->sTargets:Ljava/util/ArrayList;

    .line 70
    iput-object p5, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->lTargets:Ljava/util/ArrayList;

    .line 71
    iput-object p6, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->cTargets:Ljava/util/ArrayList;

    .line 72
    iput p7, p0, Lcom/aokp/romcontrol/fragments/ArrangeRibbonFragment;->arrayNum:I

    .line 73
    return-void
.end method
