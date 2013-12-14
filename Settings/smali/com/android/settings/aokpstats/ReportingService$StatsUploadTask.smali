.class Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;
.super Landroid/os/AsyncTask;
.source "ReportingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/aokpstats/ReportingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsUploadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/aokpstats/ReportingService;


# direct methods
.method private constructor <init>(Lcom/android/settings/aokpstats/ReportingService;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/aokpstats/ReportingService;Lcom/android/settings/aokpstats/ReportingService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;-><init>(Lcom/android/settings/aokpstats/ReportingService;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 17
    .parameter "params"

    .prologue
    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    invoke-virtual {v14}, Lcom/android/settings/aokpstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/aokpstats/Utilities;->getUniqueID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, deviceId:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/aokpstats/Utilities;->getDevice()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, deviceName:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/aokpstats/Utilities;->getModVersion()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, deviceVersion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    invoke-virtual {v14}, Lcom/android/settings/aokpstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/aokpstats/Utilities;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, deviceCountry:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    invoke-virtual {v14}, Lcom/android/settings/aokpstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/aokpstats/Utilities;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, deviceCarrier:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    invoke-virtual {v14}, Lcom/android/settings/aokpstats/ReportingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/aokpstats/Utilities;->getCarrierId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, deviceCarrierId:Ljava/lang/String;
    const-string v14, "AOKPStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SERVICE: Device ID="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v14, "AOKPStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SERVICE: Device Name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v14, "AOKPStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SERVICE: Device Version="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v14, "AOKPStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SERVICE: Country="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v14, "AOKPStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SERVICE: Carrier="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v14, "AOKPStats"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SERVICE: Carrier ID="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    invoke-static {v14}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v8

    .line 90
    .local v8, ga:Lcom/google/analytics/tracking/android/GoogleAnalytics;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    const v15, 0x7f080057

    invoke-virtual {v14, v15}, Lcom/android/settings/aokpstats/ReportingService;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v13

    .line 91
    .local v13, tracker:Lcom/google/analytics/tracking/android/Tracker;
    const-string v14, "AOKP"

    invoke-virtual {v13, v14}, Lcom/google/analytics/tracking/android/Tracker;->setAppName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v13, v6}, Lcom/google/analytics/tracking/android/Tracker;->setAppVersion(Ljava/lang/String;)V

    .line 93
    const-string v14, "clientId"

    invoke-virtual {v13, v14, v4}, Lcom/google/analytics/tracking/android/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v14, 0x2

    invoke-virtual {v13, v14, v5}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 95
    const/4 v14, 0x1

    const-wide/16 v15, 0x1

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/google/analytics/tracking/android/Tracker;->setCustomMetric(ILjava/lang/Long;)V

    .line 96
    const-string v14, "checkin"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v5, v6, v15}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    invoke-virtual {v13, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v13}, Lcom/google/analytics/tracking/android/Tracker;->close()V

    .line 101
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 102
    .local v9, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    const-string v14, "http://stats.aokp.co/submit.php"

    invoke-direct {v10, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 103
    .local v10, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const/4 v12, 0x0

    .line 105
    .local v12, success:Z
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v11, kv:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "hash"

    invoke-direct {v14, v15, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "aokp_version"

    invoke-direct {v14, v15, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v14, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v10, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 110
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    const/4 v12, 0x1

    .line 116
    .end local v11           #kv:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    return-object v14

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, e:Ljava/io/IOException;
    const-string v14, "AOKPStats"

    const-string v15, "Could not upload stats checkin"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 8
    .parameter "result"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    .line 124
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    invoke-static {v0}, Lcom/android/settings/aokpstats/AnonymousStats;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 126
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "pref_anonymous_checked_in"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    const-wide/16 v1, 0x0

    .line 135
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .local v1, interval:J
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/settings/aokpstats/ReportingServiceManager;->setAlarm(Landroid/content/Context;J)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->this$0:Lcom/android/settings/aokpstats/ReportingService;

    invoke-virtual {v4}, Lcom/android/settings/aokpstats/ReportingService;->stopSelf()V

    .line 137
    return-void

    .line 132
    .end local v1           #interval:J
    :cond_0
    const-wide/32 v1, 0xa4cb80

    .restart local v1       #interval:J
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/aokpstats/ReportingService$StatsUploadTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
