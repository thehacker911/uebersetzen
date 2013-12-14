.class Lcom/aokp/romcontrol/fragments/StatusBarNotifications$6;
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
    .line 337
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$6;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/StatusBarNotifications$6;->this$0:Lcom/aokp/romcontrol/fragments/StatusBarNotifications;

    #calls: Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->prepareAndSetWallpaper()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/StatusBarNotifications;->access$400(Lcom/aokp/romcontrol/fragments/StatusBarNotifications;)V

    .line 341
    return-void
.end method
