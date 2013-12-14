.class public Lcom/android/settings/TimeRangePreference;
.super Landroid/preference/Preference;
.source "TimeRangePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEndTime:I

.field private mEndTimeText:Landroid/widget/TextView;

.field private mStartTime:I

.field private mStartTimeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/settings/TimeRangePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TimeRangePreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "stime"
    .parameter "etime"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 68
    iput p2, p0, Lcom/android/settings/TimeRangePreference;->mStartTime:I

    .line 69
    iput p3, p0, Lcom/android/settings/TimeRangePreference;->mEndTime:I

    .line 70
    invoke-direct {p0}, Lcom/android/settings/TimeRangePreference;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0}, Lcom/android/settings/TimeRangePreference;->init()V

    .line 59
    return-void
.end method

.method private TimePicker(I)V
    .locals 8
    .parameter "key"

    .prologue
    .line 144
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget v7, p0, Lcom/android/settings/TimeRangePreference;->mStartTime:I

    .line 146
    .local v7, value:I
    :goto_0
    if-gez v7, :cond_1

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 148
    .local v6, calendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 149
    .local v3, hour:I
    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 155
    .end local v6           #calendar:Ljava/util/Calendar;
    .local v4, minutes:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/TimeRangePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 156
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/settings/TimeRangePreference$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/TimeRangePreference$1;-><init>(Lcom/android/settings/TimeRangePreference;I)V

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 171
    .local v0, dlg:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 172
    return-void

    .line 144
    .end local v0           #dlg:Landroid/app/TimePickerDialog;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #hour:I
    .end local v4           #minutes:I
    .end local v7           #value:I
    :cond_0
    iget v7, p0, Lcom/android/settings/TimeRangePreference;->mEndTime:I

    goto :goto_0

    .line 151
    .restart local v7       #value:I
    :cond_1
    div-int/lit8 v3, v7, 0x3c

    .line 152
    .restart local v3       #hour:I
    rem-int/lit8 v4, v7, 0x3c

    .restart local v4       #minutes:I
    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/settings/TimeRangePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/TimeRangePreference;->mStartTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/TimeRangePreference;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/TimeRangePreference;->returnTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/TimeRangePreference;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/TimeRangePreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/settings/TimeRangePreference;->mEndTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/TimeRangePreference;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/TimeRangePreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/TimeRangePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f040083

    invoke-virtual {p0, v0}, Lcom/android/settings/TimeRangePreference;->setLayoutResource(I)V

    .line 95
    return-void
.end method

.method private returnTime(I)Ljava/lang/String;
    .locals 5
    .parameter "t"

    .prologue
    .line 175
    if-gez p1, :cond_0

    .line 176
    const-string v4, ""

    .line 188
    :goto_0
    return-object v4

    .line 179
    :cond_0
    move v2, p1

    .line 180
    .local v2, hr:I
    move v3, p1

    .line 182
    .local v3, mn:I
    div-int/lit8 v2, v2, 0x3c

    .line 183
    rem-int/lit8 v3, v3, 0x3c

    .line 184
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 185
    .local v0, cal:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 186
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 187
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 188
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/settings/TimeRangePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePreferenceViews()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/TimeRangePreference;->mStartTime:I

    invoke-direct {p0, v1}, Lcom/android/settings/TimeRangePreference;->returnTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/settings/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/TimeRangePreference;->mEndTime:I

    invoke-direct {p0, v1}, Lcom/android/settings/TimeRangePreference;->returnTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_1
    return-void
.end method


# virtual methods
.method public getEndTime()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/TimeRangePreference;->mEndTime:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/settings/TimeRangePreference;->mStartTime:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 77
    const v2, 0x7f0d0126

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, startTimeLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    const v2, 0x7f0d0128

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, endTimeLayout:Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_1
    const v2, 0x7f0d0127

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;

    .line 88
    const v2, 0x7f0d0129

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/TimeRangePreference;->updatePreferenceViews()V

    .line 91
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    const v0, 0x7f0d0126

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 134
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/TimeRangePreference;->TimePicker(I)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const v0, 0x7f0d0128

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 136
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/TimeRangePreference;->TimePicker(I)V

    goto :goto_0
.end method

.method public setTimeRange(II)V
    .locals 0
    .parameter "stime"
    .parameter "etime"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/settings/TimeRangePreference;->mStartTime:I

    .line 118
    iput p2, p0, Lcom/android/settings/TimeRangePreference;->mEndTime:I

    .line 119
    invoke-direct {p0}, Lcom/android/settings/TimeRangePreference;->updatePreferenceViews()V

    .line 120
    return-void
.end method
