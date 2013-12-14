.class public Lcom/aokp/romcontrol/fragments/Vibrations;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "Vibrations.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrations"


# instance fields
.field private final DIALOG_HELP:I

.field private final DIALOG_SAVE:I

.field private final VIB_CANCEL:I

.field private final VIB_DEL:I

.field private final VIB_OK:I

.field private mActivity:Landroid/app/Activity;

.field private mContainer:Landroid/view/ViewGroup;

.field mCurLoadedText:Landroid/widget/TextView;

.field mDelButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field mHelpButton:Landroid/widget/Button;

.field mLoadButton:Landroid/widget/Button;

.field mNewButton:Landroid/widget/Button;

.field mPatternBar:Landroid/widget/LinearLayout;

.field mPlayButton:Landroid/widget/Button;

.field mRecButton:Landroid/widget/Button;

.field mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

.field private mResources:Landroid/content/res/Resources;

.field mSaveButton:Landroid/widget/Button;

.field mStopButton:Landroid/widget/Button;

.field mTapButton:Landroid/widget/Button;

.field sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->DIALOG_SAVE:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->DIALOG_HELP:I

    .line 43
    const/16 v0, 0xa

    iput v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->VIB_OK:I

    .line 44
    const/16 v0, 0xb

    iput v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->VIB_CANCEL:I

    .line 45
    const/16 v0, 0xc

    iput v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->VIB_DEL:I

    .line 61
    new-instance v0, Lcom/aokp/romcontrol/fragments/Vibrations$1;

    invoke-direct {v0, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$1;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0345

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 104
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const-string v1, "vibrations"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 105
    new-instance v0, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    .line 107
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00fa

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mTapButton:Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecButton:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00fd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPlayButton:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00fc

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mStopButton:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mSaveButton:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mLoadButton:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mDelButton:Landroid/widget/Button;

    .line 114
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00f5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mNewButton:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0121

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mHelpButton:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mCurLoadedText:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00f9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPatternBar:Landroid/widget/LinearLayout;

    .line 118
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mCurLoadedText:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mTapButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mTapButton:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/Vibrations$2;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$2;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecButton:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/Vibrations$3;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$3;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mStopButton:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/Vibrations$4;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$4;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPlayButton:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/Vibrations$5;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$5;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mNewButton:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/Vibrations$6;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$6;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mSaveButton:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/Vibrations$7;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$7;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mLoadButton:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/Vibrations$8;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$8;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mDelButton:Landroid/widget/Button;

    new-instance v1, Lcom/aokp/romcontrol/fragments/Vibrations$9;

    invoke-direct {v1, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$9;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "firststart"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firststart"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Vibrations;->showDia(I)V

    .line 222
    :cond_0
    invoke-virtual {p0, v3}, Lcom/aokp/romcontrol/fragments/Vibrations;->setHasOptionsMenu(Z)V

    .line 223
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 228
    const v0, 0x7f0d0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 229
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 94
    iput-object p2, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mContainer:Landroid/view/ViewGroup;

    .line 95
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Vibrations;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    .line 96
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Vibrations;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mResources:Landroid/content/res/Resources;

    .line 97
    const v0, 0x7f040023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 233
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 238
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 235
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/aokp/romcontrol/fragments/Vibrations;->showDia(I)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x7f0a0121
        :pswitch_0
    .end packed-switch
.end method

.method protected showDia(I)V
    .locals 10
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const v8, 0x104000a

    const/16 v7, 0x8

    .line 243
    packed-switch p1, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 246
    .local v0, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f040022

    invoke-virtual {v0, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 247
    .local v5, textEntryView:Landroid/view/View;
    const v6, 0x7f0a00f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 248
    .local v2, name:Landroid/widget/EditText;
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mRecorder:Lcom/aokp/romcontrol/vibrations/VibrationRecorder;

    invoke-virtual {v6}, Lcom/aokp/romcontrol/vibrations/VibrationRecorder;->getLoadedPatternName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0b034f

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/aokp/romcontrol/fragments/Vibrations$11;

    invoke-direct {v7, p0, v2}, Lcom/aokp/romcontrol/fragments/Vibrations$11;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;Landroid/widget/EditText;)V

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/aokp/romcontrol/fragments/Vibrations$10;

    invoke-direct {v8, p0}, Lcom/aokp/romcontrol/fragments/Vibrations$10;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 266
    .local v4, saveDialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/aokp/romcontrol/fragments/Vibrations$12;

    invoke-direct {v6, p0, v4}, Lcom/aokp/romcontrol/fragments/Vibrations$12;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 275
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 276
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 280
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v2           #name:Landroid/widget/EditText;
    .end local v4           #saveDialog:Landroid/app/AlertDialog;
    .end local v5           #textEntryView:Landroid/view/View;
    :pswitch_1
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 281
    .local v3, sView:Landroid/widget/ScrollView;
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 282
    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 283
    .local v1, helpView:Landroid/widget/TextView;
    const v6, 0x7f0b0353

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 284
    const/high16 v6, 0x4140

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 285
    invoke-virtual {v3, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 286
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0b0352

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method showPickerDialog(Z)V
    .locals 3
    .parameter "isDel"

    .prologue
    .line 298
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/app/VibrationPickerDialog;->newInstance(Landroid/os/Handler;ZLjava/lang/String;)Landroid/app/VibrationPickerDialog;

    move-result-object v0

    .line 299
    .local v0, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Vibrations;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method updatePatternBar(Landroid/media/VibrationPattern;)V
    .locals 14
    .parameter "pattern"

    .prologue
    const-wide/high16 v12, 0x4024

    .line 303
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPatternBar:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 304
    if-nez p1, :cond_0

    .line 305
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPatternBar:Landroid/widget/LinearLayout;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPatternBar:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    int-to-double v2, v9

    .line 309
    .local v2, fullWidth:D
    invoke-virtual {p1}, Landroid/media/VibrationPattern;->getLength()I

    move-result v9

    int-to-double v9, v9

    div-double v0, v9, v12

    .line 310
    .local v0, fullLength:D
    div-double v6, v2, v0

    .line 311
    .local v6, ratio:D
    const-string v9, "Vibrations"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fullwidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fullLength = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ratio = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/media/VibrationPattern;->getPattern()[J

    move-result-object v9

    array-length v9, v9

    if-ge v4, v9, :cond_2

    .line 314
    invoke-virtual {p1}, Landroid/media/VibrationPattern;->getPattern()[J

    move-result-object v9

    aget-wide v9, v9, v4

    long-to-double v9, v9

    div-double/2addr v9, v12

    mul-double/2addr v9, v6

    double-to-int v5, v9

    .line 315
    .local v5, mWidth:I
    const-string v9, "Vibrations"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mWidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v8, Lcom/aokp/romcontrol/fragments/Vibrations$13;

    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, p0, v9, v5}, Lcom/aokp/romcontrol/fragments/Vibrations$13;-><init>(Lcom/aokp/romcontrol/fragments/Vibrations;Landroid/content/Context;I)V

    .line 328
    .local v8, view:Landroid/view/View;
    rem-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Vibrations;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f020038

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :goto_2
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPatternBar:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Vibrations;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f02

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 335
    .end local v5           #mWidth:I
    .end local v8           #view:Landroid/view/View;
    :cond_2
    iget-object v9, p0, Lcom/aokp/romcontrol/fragments/Vibrations;->mPatternBar:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method
