.class Lcom/aokp/romcontrol/fragments/Lockscreens$32;
.super Ljava/lang/Object;
.source "Lockscreens.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aokp/romcontrol/fragments/Lockscreens;->buildWallpaperAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;


# direct methods
.method constructor <init>(Lcom/aokp/romcontrol/fragments/Lockscreens;)V
    .locals 0
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$32;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Lockscreens$32;->this$0:Lcom/aokp/romcontrol/fragments/Lockscreens;

    #calls: Lcom/aokp/romcontrol/fragments/Lockscreens;->prepareAndSetWallpaper()V
    invoke-static {v0}, Lcom/aokp/romcontrol/fragments/Lockscreens;->access$1000(Lcom/aokp/romcontrol/fragments/Lockscreens;)V

    .line 947
    return-void
.end method
