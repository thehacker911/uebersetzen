.class Lcom/aokp/romcontrol/widgets/DeveloperPreference$3;
.super Ljava/lang/Object;
.source "DeveloperPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/widgets/DeveloperPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/widgets/DeveloperPreference;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference$3;->this$0:Lcom/aokp/romcontrol/widgets/DeveloperPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://twitter.com/#!/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference$3;->this$0:Lcom/aokp/romcontrol/widgets/DeveloperPreference;

    #getter for: Lcom/aokp/romcontrol/widgets/DeveloperPreference;->twitterName:Ljava/lang/String;
    invoke-static {v3}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->access$200(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, twitterURL:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference$3;->this$0:Lcom/aokp/romcontrol/widgets/DeveloperPreference;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    const/4 v2, 0x1

    return v2
.end method
