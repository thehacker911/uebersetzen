.class Lcom/aokp/romcontrol/widgets/DeveloperPreference$1;
.super Ljava/lang/Object;
.source "DeveloperPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 77
    iput-object p1, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference$1;->this$0:Lcom/aokp/romcontrol/widgets/DeveloperPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 80
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference$1;->this$0:Lcom/aokp/romcontrol/widgets/DeveloperPreference;

    #getter for: Lcom/aokp/romcontrol/widgets/DeveloperPreference;->donateLink:Ljava/lang/String;
    invoke-static {v2}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->access$000(Lcom/aokp/romcontrol/widgets/DeveloperPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 81
    .local v0, donateURL:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/aokp/romcontrol/widgets/DeveloperPreference$1;->this$0:Lcom/aokp/romcontrol/widgets/DeveloperPreference;

    invoke-virtual {v2}, Lcom/aokp/romcontrol/widgets/DeveloperPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
