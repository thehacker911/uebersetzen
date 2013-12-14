.class public Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;
.super Landroid/app/DialogFragment;
.source "UserInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/UserInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedTransparencyDialog"
.end annotation


# static fields
.field private static final KEYGUARD_ALPHA:I = 0x70

.field private static final LOCKSCREEN_ALPHA:I = 0x4

.field private static final NAVBAR_ALPHA:I = 0x2

.field private static final NAVBAR_KG_ALPHA:I = 0x3

.field private static final STATUSBAR_ALPHA:I = 0x0

.field private static final STATUSBAR_KG_ALPHA:I = 0x1


# instance fields
.field linkTransparencies:Z

.field mLinkCheckBox:Landroid/widget/CheckBox;

.field mMatchNavbarKeyguard:Landroid/widget/CheckBox;

.field mMatchStatusbarKeyguard:Landroid/widget/CheckBox;

.field mNavigationBarGroup:Landroid/view/ViewGroup;

.field mSbLabel:Landroid/widget/TextView;

.field mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

.field private mUpdateStatesListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 800
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->linkTransparencies:Z

    .line 813
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    .line 974
    new-instance v0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$3;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$3;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mUpdateStatesListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$1100(Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->saveSavedLinkedState(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->updateToggleState()V

    return-void
.end method

.method private getSavedLinkedState()Z
    .locals 3

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "transparency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "link"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private resetSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 932
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_alpha_config"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 934
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_alpha_config"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 936
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_alpha_config"

    const/16 v2, 0x70

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 938
    return-void
.end method

.method private saveSavedLinkedState(Z)V
    .locals 3
    .parameter "v"

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "transparency"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "link"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 990
    return-void
.end method

.method private updateToggleState()V
    .locals 7

    .prologue
    const v6, 0x7f0b0104

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 941
    iget-boolean v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->linkTransparencies:Z

    if-eqz v1, :cond_3

    .line 942
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSbLabel:Landroid/widget/TextView;

    const v4, 0x7f0b0103

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 943
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mNavigationBarGroup:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 948
    :goto_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSbLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 950
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v4, v1, v2

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mMatchStatusbarKeyguard:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setEnabled(Z)V

    .line 952
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v1, v1, v5

    iget-object v4, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mMatchNavbarKeyguard:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setEnabled(Z)V

    .line 956
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "lockscreen_alpha_config"

    const/16 v4, 0x70

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 958
    .local v0, lockscreen_alpha:I
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 962
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aget-object v1, v1, v5

    invoke-virtual {v1, v0}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 964
    :cond_2
    return-void

    .line 945
    .end local v0           #lockscreen_alpha:I
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSbLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 946
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mNavigationBarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 950
    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x1

    .line 817
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 818
    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->setShowsDialog(Z)V

    .line 819
    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->setRetainInstance(Z)V

    .line 820
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getSavedLinkedState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->linkTransparencies:Z

    .line 821
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f040009

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 826
    .local v3, layout:Landroid/view/View;
    const v9, 0x7f0a0032

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mLinkCheckBox:Landroid/widget/CheckBox;

    .line 827
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mLinkCheckBox:Landroid/widget/CheckBox;

    iget-boolean v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->linkTransparencies:Z

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 828
    const v9, 0x7f0a0038

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mNavigationBarGroup:Landroid/view/ViewGroup;

    .line 829
    const v9, 0x7f0a0033

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSbLabel:Landroid/widget/TextView;

    .line 830
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v11, 0x0

    const v9, 0x7f0a0034

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aput-object v9, v10, v11

    .line 831
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v11, 0x1

    const v9, 0x7f0a0036

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aput-object v9, v10, v11

    .line 833
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v11, 0x2

    const v9, 0x7f0a003a

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aput-object v9, v10, v11

    .line 834
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v11, 0x3

    const v9, 0x7f0a003c

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aput-object v9, v10, v11

    .line 836
    const v9, 0x7f0a0037

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mMatchStatusbarKeyguard:Landroid/widget/CheckBox;

    .line 837
    const v9, 0x7f0a003d

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mMatchNavbarKeyguard:Landroid/widget/CheckBox;

    .line 838
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v11, 0x4

    const v9, 0x7f0a0040

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    aput-object v9, v10, v11

    .line 842
    const/4 v9, 0x2

    :try_start_0
    new-array v0, v9, [I

    .line 843
    .local v0, alphas:[I
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 844
    .local v6, resolver:Landroid/content/ContentResolver;
    const-string v9, "lockscreen_alpha_config"

    const/16 v10, 0x70

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 846
    .local v4, lockscreen_alpha:I
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-virtual {v9, v4}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 847
    const-string v9, "status_bar_alpha_config"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 849
    .local v7, sbConfig:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 850
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 851
    .local v8, split:[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v9

    .line 852
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v9

    .line 853
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 854
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 855
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mMatchStatusbarKeyguard:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    aget v9, v0, v9

    if-ne v9, v4, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-virtual {v10, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 856
    iget-boolean v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->linkTransparencies:Z

    if-eqz v9, :cond_2

    .line 857
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 858
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    .end local v0           #alphas:[I
    .end local v4           #lockscreen_alpha:I
    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local v7           #sbConfig:Ljava/lang/String;
    .end local v8           #split:[Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->updateToggleState()V

    .line 877
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mMatchStatusbarKeyguard:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mUpdateStatesListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 878
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mMatchNavbarKeyguard:Landroid/widget/CheckBox;

    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mUpdateStatesListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 879
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mLinkCheckBox:Landroid/widget/CheckBox;

    new-instance v10, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$1;

    invoke-direct {v10, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$1;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 888
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 889
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 890
    const v9, 0x7f0b0101

    invoke-virtual {p0, v9}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 891
    const v9, 0x7f0b0002

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 892
    const v9, 0x7f0b0004

    new-instance v10, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;

    invoke-direct {v10, p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog$2;-><init>(Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 928
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 855
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .restart local v0       #alphas:[I
    .restart local v4       #lockscreen_alpha:I
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #sbConfig:Ljava/lang/String;
    .restart local v8       #split:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 860
    :cond_2
    :try_start_1
    const-string v9, "navigation_bar_alpha_config"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 862
    .local v5, navConfig:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 863
    const-string v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 864
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v9

    .line 865
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v0, v9

    .line 866
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v10, 0x2

    aget-object v9, v9, v10

    const/4 v10, 0x0

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 867
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mSeekBars:[Lcom/aokp/romcontrol/widgets/AlphaSeekBar;

    const/4 v10, 0x3

    aget-object v9, v9, v10

    const/4 v10, 0x1

    aget v10, v0, v10

    invoke-virtual {v9, v10}, Lcom/aokp/romcontrol/widgets/AlphaSeekBar;->setCurrentAlpha(I)V

    .line 868
    iget-object v10, p0, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->mMatchNavbarKeyguard:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    aget v9, v0, v9

    if-ne v9, v4, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 872
    .end local v0           #alphas:[I
    .end local v4           #lockscreen_alpha:I
    .end local v5           #navConfig:Ljava/lang/String;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local v7           #sbConfig:Ljava/lang/String;
    .end local v8           #split:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 873
    .local v2, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->resetSettings()V

    goto/16 :goto_1

    .line 868
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #alphas:[I
    .restart local v4       #lockscreen_alpha:I
    .restart local v5       #navConfig:Ljava/lang/String;
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    .restart local v7       #sbConfig:Ljava/lang/String;
    .restart local v8       #split:[Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/UserInterface$AdvancedTransparencyDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    .line 971
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 972
    return-void
.end method
