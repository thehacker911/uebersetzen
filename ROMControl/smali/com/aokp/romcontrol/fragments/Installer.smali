.class public Lcom/aokp/romcontrol/fragments/Installer;
.super Lcom/aokp/romcontrol/AOKPPreferenceFragment;
.source "Installer.java"


# static fields
.field private static final CONF_FILE:Ljava/lang/String; = "/system/etc/persist.conf"

.field private static final PREF_PERSIST_ENABLE:Ljava/lang/String; = "enable_persist"

.field private static final PREF_PERSIST_FILE_HOSTS:Ljava/lang/String; = "persist_file_hosts"

.field private static final PREF_PERSIST_FILE_XPOSED:Ljava/lang/String; = "persist_file_xposed"

.field private static final PREF_PERSIST_PROP_DENSITY:Ljava/lang/String; = "persist_prop_density"

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field mPersistEnable:Z

.field mPersistFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPersistProps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPersistTrailer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPrefPersistDensity:Landroid/preference/CheckBoxPreference;

.field mPrefPersistEnable:Landroid/preference/CheckBoxPreference;

.field mPrefPersistHosts:Landroid/preference/CheckBoxPreference;

.field mPrefPersistXposed:Landroid/preference/CheckBoxPreference;

.field private mPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;-><init>()V

    return-void
.end method

.method private boolToString(Z)Ljava/lang/String;
    .locals 1
    .parameter "val"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Installer;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 239
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 241
    .local v1, installed:Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    const/4 v1, 0x1

    .line 246
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPrefs()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 161
    iput-boolean v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    .line 162
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistProps:Ljava/util/ArrayList;

    .line 163
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    .line 164
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistTrailer:Ljava/util/ArrayList;

    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/system/etc/persist.conf"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 168
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 170
    .local v4, inTrailer:Z
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 171
    const-string v6, "# END REPLACE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 172
    const/4 v4, 0x1

    .line 174
    :cond_1
    if-nez v4, :cond_5

    .line 175
    const-string v6, "persist_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    const-string v6, "="

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, fields:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "persist_enable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/aokp/romcontrol/fragments/Installer;->stringToBool(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    .line 180
    :cond_2
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "persist_props"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/aokp/romcontrol/fragments/Installer;->stringToStringArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistProps:Ljava/util/ArrayList;

    .line 183
    :cond_3
    const/4 v6, 0x0

    aget-object v6, v3, v6

    const-string v7, "persist_files"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-direct {p0, v6}, Lcom/aokp/romcontrol/fragments/Installer;->stringToStringArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 191
    .end local v3           #fields:[Ljava/lang/String;
    .end local v5           #line:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 192
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #inTrailer:Z
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v6, "Installer"

    const-string v7, "Config file not found"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    if-eqz v0, :cond_4

    .line 198
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 204
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_2
    return-void

    .line 188
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #inTrailer:Z
    .restart local v5       #line:Ljava/lang/String;
    :cond_5
    :try_start_4
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistTrailer:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 193
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 194
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #inTrailer:Z
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v6, "Installer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception reading config file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 196
    if-eqz v0, :cond_4

    .line 198
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 199
    :catch_2
    move-exception v6

    goto :goto_2

    .line 196
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #inTrailer:Z
    .restart local v5       #line:Ljava/lang/String;
    :cond_6
    if-eqz v1, :cond_8

    .line 198
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-object v0, v1

    .line 201
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 199
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    move-object v0, v1

    .line 201
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 196
    .end local v4           #inTrailer:Z
    .end local v5           #line:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_7

    .line 198
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 201
    :cond_7
    :goto_5
    throw v6

    .line 199
    .local v2, e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v7

    goto :goto_5

    .line 196
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #inTrailer:Z
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 193
    .end local v4           #inTrailer:Z
    :catch_6
    move-exception v2

    goto :goto_3

    .line 191
    :catch_7
    move-exception v2

    goto :goto_1

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #inTrailer:Z
    .restart local v5       #line:Ljava/lang/String;
    :cond_8
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private savePrefs()V
    .locals 9

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, bw:Ljava/io/BufferedWriter;
    const-string v6, "rw"

    invoke-static {v6}, Lcom/aokp/romcontrol/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 209
    const/4 v6, 0x3

    new-array v2, v6, [Ljava/lang/String;

    .line 210
    .local v2, cmdarray:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "su"

    aput-object v7, v2, v6

    .line 211
    const/4 v6, 0x1

    const-string v7, "-c"

    aput-object v7, v2, v6

    .line 212
    const/4 v6, 0x2

    const-string v7, "cat > /system/etc/persist.conf"

    aput-object v7, v2, v6

    .line 213
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v1, childStdin:Ljava/lang/StringBuffer;
    const-string v6, "# /system/etc/persist.conf\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "persist_enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    invoke-direct {p0, v7}, Lcom/aokp/romcontrol/fragments/Installer;->boolToString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "persist_props="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistProps:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/aokp/romcontrol/fragments/Installer;->stringArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "persist_files="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/aokp/romcontrol/fragments/Installer;->stringArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    iget-object v6, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistTrailer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 219
    .local v5, line:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 221
    .end local v5           #line:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/aokp/romcontrol/util/CMDProcessor;->runSysCmd([Ljava/lang/String;Ljava/lang/String;)Lcom/aokp/romcontrol/util/CommandResult;

    move-result-object v3

    .line 222
    .local v3, cr:Lcom/aokp/romcontrol/util/CommandResult;
    const-string v6, "Installer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "savePrefs: result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/aokp/romcontrol/util/CommandResult;->getExitValue()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v6, "Installer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "savePrefs: stdout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/aokp/romcontrol/util/CommandResult;->getStdout()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v6, "Installer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "savePrefs: stderr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/aokp/romcontrol/util/CommandResult;->getStderr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v6, "ro"

    invoke-static {v6}, Lcom/aokp/romcontrol/util/Helpers;->getMount(Ljava/lang/String;)Z

    .line 226
    return-void
.end method

.method private setSummaries()V
    .locals 3

    .prologue
    const v1, 0x7f0b005f

    .line 229
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistDensity:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b007c

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 231
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistHosts:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b007e

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 233
    iget-object v0, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistXposed:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    if-eqz v2, :cond_0

    const v1, 0x7f0b0080

    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 235
    return-void

    :cond_1
    move v0, v1

    .line 229
    goto :goto_0

    :cond_2
    move v0, v1

    .line 231
    goto :goto_1
.end method

.method private stringArrayToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, ""

    .line 147
    .local v2, ret:Ljava/lang/String;
    const/4 v0, 0x1

    .line 148
    .local v0, first:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    return-object v2
.end method

.method private stringToBool(Ljava/lang/String;)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 120
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "False"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private stringToStringArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "val"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "\""

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 135
    .local v4, p1:I
    const-string v8, "\""

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 136
    .local v5, p2:I
    if-ltz v4, :cond_0

    add-int/lit8 v8, v4, 0x1

    if-le v5, v8, :cond_0

    .line 137
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, dqval:Ljava/lang/String;
    const-string v8, " +"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 139
    .local v7, s:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #dqval:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v7           #s:Ljava/lang/String;
    :cond_0
    return-object v6
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/Installer;->setTitle(I)V

    .line 50
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/Installer;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual {p0}, Lcom/aokp/romcontrol/fragments/Installer;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 54
    .local v0, prefs:Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Installer;->loadPrefs()V

    .line 56
    const-string v1, "enable_persist"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/Installer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistEnable:Landroid/preference/CheckBoxPreference;

    .line 57
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistEnable:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 58
    const-string v1, "persist_prop_density"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/Installer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistDensity:Landroid/preference/CheckBoxPreference;

    .line 59
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistDensity:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistProps:Ljava/util/ArrayList;

    const-string v3, "ro.sf.lcd_density"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 60
    const-string v1, "persist_file_hosts"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/Installer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistHosts:Landroid/preference/CheckBoxPreference;

    .line 61
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistHosts:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    const-string v3, "etc/hosts"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    const-string v1, "persist_file_xposed"

    invoke-virtual {p0, v1}, Lcom/aokp/romcontrol/fragments/Installer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistXposed:Landroid/preference/CheckBoxPreference;

    .line 63
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistXposed:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    const-string v3, "bin/app_process"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 65
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Installer;->setSummaries()V

    .line 66
    const-string v1, "de.robv.android.xposed.installer"

    invoke-direct {p0, v1}, Lcom/aokp/romcontrol/fragments/Installer;->isAppInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistXposed:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 68
    iget-object v2, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistXposed:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0b0081

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 71
    :cond_0
    return-void

    .line 68
    :cond_1
    const v1, 0x7f0b005f

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 76
    move-object v1, p2

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 77
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistEnable:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 78
    iput-boolean v0, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistEnable:Z

    .line 79
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Installer;->savePrefs()V

    .line 80
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Installer;->setSummaries()V

    move v1, v2

    .line 116
    :goto_0
    return v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistDensity:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 84
    if-eqz v0, :cond_2

    .line 85
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistProps:Ljava/util/ArrayList;

    const-string v3, "ro.sf.lcd_density"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistProps:Ljava/util/ArrayList;

    const-string v3, "ro.sf.lcd_density"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Installer;->savePrefs()V

    move v1, v2

    .line 92
    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistProps:Ljava/util/ArrayList;

    const-string v3, "ro.sf.lcd_density"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_3
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistHosts:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 95
    if-eqz v0, :cond_5

    .line 96
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    const-string v3, "etc/hosts"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 97
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    const-string v3, "etc/hosts"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Installer;->savePrefs()V

    move v1, v2

    .line 103
    goto :goto_0

    .line 100
    :cond_5
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    const-string v3, "etc/hosts"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_6
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPrefPersistXposed:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_9

    .line 106
    if-eqz v0, :cond_8

    .line 107
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    const-string v3, "bin/app_process"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 108
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    const-string v3, "bin/app_process"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/aokp/romcontrol/fragments/Installer;->savePrefs()V

    move v1, v2

    .line 114
    goto :goto_0

    .line 111
    :cond_8
    iget-object v1, p0, Lcom/aokp/romcontrol/fragments/Installer;->mPersistFiles:Ljava/util/ArrayList;

    const-string v3, "bin/app_process"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 116
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/aokp/romcontrol/AOKPPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method
