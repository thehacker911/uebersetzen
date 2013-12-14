.class public Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;
.super Landroid/app/DialogFragment;
.source "WidgetConfigurationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;,
        Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;
    }
.end annotation


# static fields
.field public static final ACTION_ALLOCATE_ID:Ljava/lang/String; = "com.android.systemui.ACTION_ALLOCATE_ID"

.field public static final ACTION_DEALLOCATE_ID:Ljava/lang/String; = "com.android.systemui.ACTION_DEALLOCATE_ID"

.field public static final ACTION_DELETE_WIDGETS:Ljava/lang/String; = "com.android.systemui.ACTION_DELETE_WIDGETS"

.field public static final ACTION_SEND_ID:Ljava/lang/String; = "com.android.systemui.ACTION_SEND_ID"

.field private static final TAG:Ljava/lang/String; = "Widget"


# instance fields
.field mAdapter:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;

.field mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field mContext:Landroid/content/Context;

.field protected mCurrentPage:I

.field mDoPrefClick:Landroid/view/View$OnClickListener;

.field public mNewPageListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

.field mPrefView:Landroid/view/View;

.field mSummary:Landroid/widget/TextView;

.field mTitle:Landroid/widget/TextView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field mWidgetIdReceiver:Landroid/content/BroadcastReceiver;

.field mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$1;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgetIdReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$6;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$6;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mDoPrefClick:Landroid/view/View$OnClickListener;

    .line 257
    new-instance v0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$7;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mNewPageListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    .line 374
    return-void
.end method

.method static synthetic access$000(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->saveWidgets()V

    return-void
.end method

.method static synthetic access$100(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->refreshParams()V

    return-void
.end method

.method static synthetic access$200(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->updateSummary(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->shiftleftWidget(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->shiftrightWidget(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->removeWidget(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->requestNewWidget()V

    return-void
.end method

.method private inflateWidgets()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v4, widgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;>;"
    iget-object v5, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "navigation_bar_widgets"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, settingWidgets:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 173
    const-string v5, "\\|"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, split:[Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 175
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 176
    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, appWidgetId:I
    new-instance v5, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    invoke-direct {v5, p0, v0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v0           #appWidgetId:I
    .end local v1           #i:I
    .end local v3           #split:[Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    const/4 v6, -0x1

    invoke-direct {v5, p0, v6}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-object v4
.end method

.method private refreshParams()V
    .locals 6

    .prologue
    .line 185
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;

    if-nez v2, :cond_1

    .line 187
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->inflateWidgets()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    .line 188
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;

    invoke-direct {v3, p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    iput-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 189
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mNewPageListener:Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 194
    :goto_0
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->getHeight(I)I

    move-result v0

    .line 195
    .local v0, dp:I
    int-to-float v2, v0

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    .line 196
    .local v1, px:F
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    float-to-int v5, v1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    invoke-direct {p0, v2}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->updateSummary(I)V

    .line 199
    .end local v0           #dp:I
    .end local v1           #px:F
    :cond_0
    return-void

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    goto :goto_0
.end method

.method private removeWidget(I)V
    .locals 4
    .parameter "page"

    .prologue
    .line 154
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    .line 156
    .local v1, removedWidget:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->saveWidgets()V

    .line 157
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->refreshParams()V

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, delete:Landroid/content/Intent;
    const-string v2, "appWidgetId"

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->getWidgetId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v2, "com.android.systemui.ACTION_DEALLOCATE_ID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 166
    .end local v0           #delete:Landroid/content/Intent;
    .end local v1           #removedWidget:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;
    :cond_0
    return-void
.end method

.method private requestNewWidget()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, send:Landroid/content/Intent;
    const-string v1, "com.android.systemui.ACTION_ALLOCATE_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method private saveWidgets()V
    .locals 6

    .prologue
    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v2, widgetString:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 219
    .local v1, numwidgets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 220
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    invoke-virtual {v3}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->getWidgetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_0

    .line 223
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_widgets"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 229
    return-void
.end method

.method private shiftleftWidget(I)V
    .locals 3
    .parameter "page"

    .prologue
    .line 134
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    .line 136
    .local v0, moveme:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->saveWidgets()V

    .line 138
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->refreshParams()V

    .line 139
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 141
    .end local v0           #moveme:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;
    :cond_0
    return-void
.end method

.method private shiftrightWidget(I)V
    .locals 3
    .parameter "page"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 145
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    .line 146
    .local v0, moveme:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 147
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->saveWidgets()V

    .line 148
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->refreshParams()V

    .line 149
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 151
    .end local v0           #moveme:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;
    :cond_0
    return-void
.end method

.method private updateSummary(I)V
    .locals 6
    .parameter "page"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 245
    .local v0, widgets:I
    if-le v0, p1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;

    iget-object v1, v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$NavBarWidget;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 255
    return-void

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mTitle:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.ACTION_SEND_ID"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgetIdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 76
    const v1, 0x7f040018

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 78
    iput v3, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    .line 79
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 80
    .local v0, widgetbutton:Landroid/widget/ImageButton;
    new-instance v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$2;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$2;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #widgetbutton:Landroid/widget/ImageButton;
    check-cast v0, Landroid/widget/ImageButton;

    .line 87
    .restart local v0       #widgetbutton:Landroid/widget/ImageButton;
    new-instance v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$3;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$3;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #widgetbutton:Landroid/widget/ImageButton;
    check-cast v0, Landroid/widget/ImageButton;

    .line 94
    .restart local v0       #widgetbutton:Landroid/widget/ImageButton;
    new-instance v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$4;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$4;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #widgetbutton:Landroid/widget/ImageButton;
    check-cast v0, Landroid/widget/ImageButton;

    .line 101
    .restart local v0       #widgetbutton:Landroid/widget/ImageButton;
    new-instance v1, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$5;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$5;-><init>(Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mTitle:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mSummary:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mPrefView:Landroid/view/View;

    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 130
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgetIdReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 115
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->refreshParams()V

    .line 116
    return-void
.end method

.method public resetNavBarWidgets()V
    .locals 4

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, delete:Landroid/content/Intent;
    const-string v1, "com.android.systemui.ACTION_DELETE_WIDGETS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navigation_bar_widgets"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->inflateWidgets()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mWidgets:Ljava/util/ArrayList;

    .line 238
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->refreshParams()V

    .line 239
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mAdapter:Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;

    invoke-virtual {v1}, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment$WidgetPagerAdapter;->notifyDataSetChanged()V

    .line 240
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    iput v2, p0, Lcom/aokp/romcontrol/fragments/WidgetConfigurationFragment;->mCurrentPage:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 241
    return-void
.end method
