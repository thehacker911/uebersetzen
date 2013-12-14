.class public Lcom/aokp/romcontrol/widgets/CustomTogglePref;
.super Landroid/preference/Preference;
.source "CustomTogglePref.java"


# instance fields
.field private mParent:Lcom/aokp/romcontrol/fragments/StatusBarToggles;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 17
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/widgets/CustomTogglePref;->setLayoutResource(I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/widgets/CustomTogglePref;->setLayoutResource(I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 32
    const v1, 0x7f0a000f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 33
    .local v0, ll:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/aokp/romcontrol/widgets/CustomTogglePref;->mParent:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    invoke-virtual {v1, v0}, Lcom/aokp/romcontrol/fragments/StatusBarToggles;->setupToggleViews(Landroid/widget/LinearLayout;)V

    .line 34
    return-void
.end method

.method public setParent(Lcom/aokp/romcontrol/fragments/StatusBarToggles;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/aokp/romcontrol/widgets/CustomTogglePref;->mParent:Lcom/aokp/romcontrol/fragments/StatusBarToggles;

    .line 27
    return-void
.end method
