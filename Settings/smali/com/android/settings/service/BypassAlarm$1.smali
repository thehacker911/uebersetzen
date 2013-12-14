.class Lcom/android/settings/service/BypassAlarm$1;
.super Ljava/lang/Object;
.source "BypassAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/service/BypassAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/service/BypassAlarm;


# direct methods
.method constructor <init>(Lcom/android/settings/service/BypassAlarm;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/service/BypassAlarm$1;->this$0:Lcom/android/settings/service/BypassAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/service/BypassAlarm$1;->this$0:Lcom/android/settings/service/BypassAlarm;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/service/BypassAlarm;->mUserDestroy:Z
    invoke-static {v0, v1}, Lcom/android/settings/service/BypassAlarm;->access$002(Lcom/android/settings/service/BypassAlarm;Z)Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/service/BypassAlarm$1;->this$0:Lcom/android/settings/service/BypassAlarm;

    invoke-virtual {v0}, Lcom/android/settings/service/BypassAlarm;->finish()V

    .line 117
    return-void
.end method
