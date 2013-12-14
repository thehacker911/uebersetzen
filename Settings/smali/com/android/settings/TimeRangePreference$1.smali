.class Lcom/android/settings/TimeRangePreference$1;
.super Ljava/lang/Object;
.source "TimeRangePreference.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TimeRangePreference;->TimePicker(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TimeRangePreference;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/settings/TimeRangePreference;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/TimeRangePreference$1;->this$0:Lcom/android/settings/TimeRangePreference;

    iput p2, p0, Lcom/android/settings/TimeRangePreference$1;->val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter "v"
    .parameter "hours"
    .parameter "minutes"

    .prologue
    .line 160
    mul-int/lit8 v1, p2, 0x3c

    add-int v0, v1, p3

    .line 161
    .local v0, time:I
    iget v1, p0, Lcom/android/settings/TimeRangePreference$1;->val$key:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/settings/TimeRangePreference$1;->this$0:Lcom/android/settings/TimeRangePreference;

    #setter for: Lcom/android/settings/TimeRangePreference;->mStartTime:I
    invoke-static {v1, v0}, Lcom/android/settings/TimeRangePreference;->access$002(Lcom/android/settings/TimeRangePreference;I)I

    .line 163
    iget-object v1, p0, Lcom/android/settings/TimeRangePreference$1;->this$0:Lcom/android/settings/TimeRangePreference;

    #getter for: Lcom/android/settings/TimeRangePreference;->mStartTimeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/TimeRangePreference;->access$200(Lcom/android/settings/TimeRangePreference;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TimeRangePreference$1;->this$0:Lcom/android/settings/TimeRangePreference;

    #calls: Lcom/android/settings/TimeRangePreference;->returnTime(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/settings/TimeRangePreference;->access$100(Lcom/android/settings/TimeRangePreference;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TimeRangePreference$1;->this$0:Lcom/android/settings/TimeRangePreference;

    #calls: Lcom/android/settings/TimeRangePreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, p0}, Lcom/android/settings/TimeRangePreference;->access$500(Lcom/android/settings/TimeRangePreference;Ljava/lang/Object;)Z

    .line 169
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TimeRangePreference$1;->this$0:Lcom/android/settings/TimeRangePreference;

    #setter for: Lcom/android/settings/TimeRangePreference;->mEndTime:I
    invoke-static {v1, v0}, Lcom/android/settings/TimeRangePreference;->access$302(Lcom/android/settings/TimeRangePreference;I)I

    .line 166
    iget-object v1, p0, Lcom/android/settings/TimeRangePreference$1;->this$0:Lcom/android/settings/TimeRangePreference;

    #getter for: Lcom/android/settings/TimeRangePreference;->mEndTimeText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/TimeRangePreference;->access$400(Lcom/android/settings/TimeRangePreference;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/TimeRangePreference$1;->this$0:Lcom/android/settings/TimeRangePreference;

    #calls: Lcom/android/settings/TimeRangePreference;->returnTime(I)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/settings/TimeRangePreference;->access$100(Lcom/android/settings/TimeRangePreference;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
