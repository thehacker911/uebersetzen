.class Lcom/android/settings/deviceinfo/Memory$2;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$2;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    const-string v5, "connected"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 255
    .local v3, isUsbConnected:Z
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory$2;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/Memory;->access$100(Lcom/android/settings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, usbFunction:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory$2;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 257
    .local v1, category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, v3, v4}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onUsbStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 259
    .end local v1           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isUsbConnected:Z
    .end local v4           #usbFunction:Ljava/lang/String;
    :cond_0
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Memory$2;->this$0:Lcom/android/settings/deviceinfo/Memory;

    #getter for: Lcom/android/settings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/Memory;->access$000(Lcom/android/settings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 261
    .restart local v1       #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_1

    .line 264
    .end local v1           #category:Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
