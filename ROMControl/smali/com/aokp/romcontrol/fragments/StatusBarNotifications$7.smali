.class Lcom/aokp/romcontrol/fragments/StatusBarNotifications$7;
.super Ljava/lang/Object;
.source "StatusBarNotifications.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->buildWallpaperAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$7;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$7;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->resetWallpaper()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->access$500(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    .line 347
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 348
    return-void
.end method
