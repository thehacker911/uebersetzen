.class Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppMultiSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference$MyApplicationInfo;->this$0:Lcom/aokp/romcontrol/fragments/AppMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
