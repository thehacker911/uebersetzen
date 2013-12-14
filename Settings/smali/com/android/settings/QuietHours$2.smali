.class Lcom/android/settings/QuietHours$2;
.super Ljava/lang/Object;
.source "QuietHours.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/QuietHours;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/QuietHours;

.field final synthetic val$defaultText:Ljava/lang/String;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/QuietHours;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/settings/QuietHours$2;->this$0:Lcom/android/settings/QuietHours;

    iput-object p2, p0, Lcom/android/settings/QuietHours$2;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/QuietHours$2;->val$defaultText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/settings/QuietHours$2;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/settings/QuietHours$2;->val$defaultText:Ljava/lang/String;

    .line 295
    :cond_0
    iget-object v2, p0, Lcom/android/settings/QuietHours$2;->this$0:Lcom/android/settings/QuietHours;

    #getter for: Lcom/android/settings/QuietHours;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/QuietHours;->access$200(Lcom/android/settings/QuietHours;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 296
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "auto_sms_message"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    return-void
.end method
