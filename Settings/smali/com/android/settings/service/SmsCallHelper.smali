.class public Lcom/android/settings/service/SmsCallHelper;
.super Ljava/lang/Object;
.source "SmsCallHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSmsQualifiers(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 5
    .parameter "context"
    .parameter "incomingNumber"
    .parameter "userAutoSms"
    .parameter "isContact"

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0807d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, defaultSms:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 231
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "auto_sms_message"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    packed-switch p2, :pswitch_data_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 234
    :pswitch_0
    invoke-static {v1, p1}, Lcom/android/settings/service/SmsCallHelper;->sendAutoReply(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :pswitch_1
    if-eqz p3, :cond_0

    .line 238
    invoke-static {v1, p1}, Lcom/android/settings/service/SmsCallHelper;->sendAutoReply(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static inQuietHours(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "quiet_hours_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 63
    .local v1, quietHoursEnabled:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "quiet_hours_start"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 65
    .local v3, quietHoursStart:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "quiet_hours_end"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 68
    .local v2, quietHoursEnd:I
    if-eqz v1, :cond_7

    .line 69
    if-ne v3, v2, :cond_2

    .line 81
    :cond_0
    :goto_1
    return v4

    .end local v1           #quietHoursEnabled:Z
    .end local v2           #quietHoursEnd:I
    .end local v3           #quietHoursStart:I
    :cond_1
    move v1, v5

    .line 61
    goto :goto_0

    .line 73
    .restart local v1       #quietHoursEnabled:Z
    .restart local v2       #quietHoursEnd:I
    .restart local v3       #quietHoursStart:I
    :cond_2
    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnTimeInMinutes()I

    move-result v0

    .line 74
    .local v0, minutes:I
    if-ge v2, v3, :cond_5

    .line 76
    if-gt v0, v3, :cond_3

    if-ge v0, v2, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    move v4, v5

    goto :goto_1

    .line 78
    :cond_5
    if-le v0, v3, :cond_6

    if-lt v0, v2, :cond_0

    :cond_6
    move v4, v5

    goto :goto_1

    .end local v0           #minutes:I
    :cond_7
    move v4, v5

    .line 81
    goto :goto_1
.end method

.method public static isContact(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 248
    const/4 v7, 0x0

    .line 249
    .local v7, isContact:Z
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    .local v1, lookupUri:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "number"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v0

    .line 255
    .local v2, numberProject:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v7, 0x1

    .line 262
    :cond_0
    if-eqz v6, :cond_1

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_1
    return v7

    .line 262
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static makeServiceIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/service/AlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const/high16 v1, 0x1000

    invoke-static {p0, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static returnContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    const/4 v3, 0x0

    .line 271
    const/4 v7, 0x0

    .line 272
    .local v7, contactName:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 274
    .local v1, lookupUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v0

    .line 275
    .local v2, numberProject:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 286
    :goto_0
    if-eqz v6, :cond_0

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_0
    return-object v7

    .line 283
    :cond_1
    move-object v7, p1

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 287
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static returnDayOfMonth()I
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 94
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 95
    .local v1, dayOfMonth:I
    return v1
.end method

.method public static returnTimeConstraintMet(Landroid/content/Context;II)Z
    .locals 7
    .parameter "context"
    .parameter "firstCallTime"
    .parameter "dayOfFirstCall"

    .prologue
    const/4 v3, 0x1

    const/16 v6, 0x1e

    const/4 v4, 0x0

    .line 100
    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnTimeInMinutes()I

    move-result v0

    .line 101
    .local v0, currentMinutes:I
    invoke-static {}, Lcom/android/settings/service/SmsCallHelper;->returnDayOfMonth()I

    move-result v1

    .line 103
    .local v1, dayOfMonth:I
    if-eq v1, p2, :cond_4

    .line 105
    const/16 v5, 0x582

    if-lt p1, v5, :cond_3

    .line 106
    if-ltz v0, :cond_2

    if-gt v0, v6, :cond_2

    .line 107
    rsub-int v2, p1, 0x5a0

    .line 108
    .local v2, remainderDayOne:I
    add-int v5, v2, v0

    if-gt v5, v6, :cond_1

    .line 127
    .end local v2           #remainderDayOne:I
    :cond_0
    :goto_0
    return v3

    .restart local v2       #remainderDayOne:I
    :cond_1
    move v3, v4

    .line 111
    goto :goto_0

    .end local v2           #remainderDayOne:I
    :cond_2
    move v3, v4

    .line 114
    goto :goto_0

    :cond_3
    move v3, v4

    .line 119
    goto :goto_0

    .line 124
    :cond_4
    sub-int v5, v0, p1

    if-le v5, v6, :cond_0

    move v3, v4

    .line 127
    goto :goto_0
.end method

.method public static returnTimeInMinutes()I
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, calendar:Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v1, v2, v3

    .line 88
    .local v1, currentMinutes:I
    return v1
.end method

.method public static returnUserAutoCall(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "auto_sms_call"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static returnUserAutoText(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 217
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "auto_sms"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static returnUserCallBypass(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 195
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 197
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "call_bypass"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static returnUserCallBypassCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 173
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 175
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "required_calls"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static returnUserRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .locals 6
    .parameter "context"

    .prologue
    .line 146
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "bypass_ringtone"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, ringtoneString:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 151
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    .line 155
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, ringtoneUri:Landroid/net/Uri;
    move-object v0, v3

    .line 156
    goto :goto_0
.end method

.method public static returnUserRingtoneLoop(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 138
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "loop_bypass_ringtone"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    .local v0, loop:Z
    return v0
.end method

.method public static returnUserTextBypass(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 184
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "sms_bypass"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static returnUserTextBypassCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, code:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0807d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, defaultCode:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 167
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "sms_bypass_code"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    return-object v0
.end method

.method public static scheduleService(Landroid/content/Context;)V
    .locals 15
    .parameter

    .prologue
    const/16 v13, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_hours_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 324
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "quiet_hours_start"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "quiet_hours_end"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 328
    invoke-static {p0}, Lcom/android/settings/service/SmsCallHelper;->returnUserAutoCall(Landroid/content/Context;)I

    move-result v4

    .line 329
    invoke-static {p0}, Lcom/android/settings/service/SmsCallHelper;->returnUserAutoText(Landroid/content/Context;)I

    move-result v7

    .line 330
    invoke-static {p0}, Lcom/android/settings/service/SmsCallHelper;->returnUserCallBypass(Landroid/content/Context;)I

    move-result v8

    .line 331
    invoke-static {p0}, Lcom/android/settings/service/SmsCallHelper;->returnUserTextBypass(Landroid/content/Context;)I

    move-result v9

    .line 332
    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/service/SmsCallService;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const-string v0, "com.android.settings.service.SCHEDULE_SERVICE_COMMAND"

    invoke-static {p0, v0, v2}, Lcom/android/settings/service/SmsCallHelper;->makeServiceIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 334
    const-string v0, "com.android.settings.service.SCHEDULE_SERVICE_COMMAND"

    const/4 v12, 0x2

    invoke-static {p0, v0, v12}, Lcom/android/settings/service/SmsCallHelper;->makeServiceIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 335
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 337
    invoke-virtual {v0, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 338
    invoke-virtual {v0, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 340
    if-eqz v1, :cond_0

    if-nez v4, :cond_3

    if-nez v7, :cond_3

    if-nez v8, :cond_3

    if-nez v9, :cond_3

    .line 345
    :cond_0
    invoke-virtual {p0, v10}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 420
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 322
    goto :goto_0

    .line 349
    :cond_3
    if-ne v5, v6, :cond_4

    .line 351
    invoke-virtual {p0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 355
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 356
    const/16 v1, 0xb

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-virtual {v7, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 360
    const/4 v4, -0x1

    .line 362
    if-ge v6, v5, :cond_8

    .line 364
    if-lt v1, v5, :cond_6

    .line 367
    rsub-int v1, v1, 0x5a0

    add-int/2addr v1, v6

    move v14, v4

    move v4, v2

    move v2, v14

    .line 399
    :goto_2
    if-eqz v4, :cond_b

    .line 400
    invoke-virtual {p0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 405
    :goto_3
    if-ltz v2, :cond_5

    .line 407
    add-int/lit8 v2, v2, -0x1

    .line 408
    invoke-virtual {v7, v13, v2}, Ljava/util/Calendar;->add(II)V

    .line 409
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 410
    neg-int v2, v2

    invoke-virtual {v7, v13, v2}, Ljava/util/Calendar;->add(II)V

    .line 413
    :cond_5
    if-ltz v1, :cond_1

    .line 415
    add-int/lit8 v1, v1, 0x1

    .line 416
    invoke-virtual {v7, v13, v1}, Ljava/util/Calendar;->add(II)V

    .line 417
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 418
    neg-int v0, v1

    invoke-virtual {v7, v13, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 368
    :cond_6
    if-gt v1, v6, :cond_7

    .line 371
    sub-int v1, v6, v1

    move v14, v4

    move v4, v2

    move v2, v14

    goto :goto_2

    .line 376
    :cond_7
    sub-int v2, v5, v1

    .line 377
    rsub-int v1, v1, 0x5a0

    add-int/2addr v1, v6

    move v4, v3

    goto :goto_2

    .line 381
    :cond_8
    if-lt v1, v5, :cond_9

    if-gt v1, v6, :cond_9

    .line 384
    sub-int v1, v6, v1

    move v14, v4

    move v4, v2

    move v2, v14

    goto :goto_2

    .line 388
    :cond_9
    if-gt v1, v5, :cond_a

    .line 389
    sub-int v2, v5, v1

    .line 390
    sub-int v1, v6, v1

    move v4, v3

    goto :goto_2

    .line 393
    :cond_a
    rsub-int v2, v1, 0x5a0

    add-int/2addr v2, v5

    .line 394
    rsub-int v1, v1, 0x5a0

    add-int/2addr v1, v6

    move v4, v3

    goto :goto_2

    .line 402
    :cond_b
    invoke-virtual {p0, v10}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_3
.end method

.method private static sendAutoReply(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "message"
    .parameter "phoneNumber"

    .prologue
    .line 296
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 298
    .local v0, sms:Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0
.end method
