.class public Lcom/aokp/romcontrol/vibrations/VibrationsProvider;
.super Landroid/content/ContentProvider;
.source "VibrationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aokp/romcontrol/vibrations/VibrationsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final AOKPVibrationName:Ljava/lang/String; = "\'AOKP\'"

.field private static final AOKPVibrationPattern:Ljava/lang/String; = "\'500,150,400,400,400,400,400,400,400,400,400,400,150,150,400,400,150,150,400,400,400,400,150,150,150\'"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final CQDVibrationName:Ljava/lang/String; = "\'CQD\'"

.field private static final CQDVibrationPattern:Ljava/lang/String; = "\'500,400,400,150,150,400,400,150,150,400,400,400,400,150,150,400,400,400,400,150,150,150\'"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table names (_id integer primary key autoincrement, name text not null, pattern text not null);"

.field private static final DATABASE_INIT_AOKP:Ljava/lang/String; = "insert into names (name, pattern) values (\'AOKP\', \'500,150,400,400,400,400,400,400,400,400,400,400,150,150,400,400,150,150,400,400,400,400,150,150,150\')"

.field private static final DATABASE_INIT_CQD:Ljava/lang/String; = "insert into names (name, pattern) values (\'CQD\', \'500,400,400,150,150,400,400,150,150,400,400,400,400,150,150,400,400,400,400,150,150,150\')"

.field private static final DATABASE_INIT_DEFAULT:Ljava/lang/String; = "insert into names (_id, name, pattern) values (0, \'Default\', \'500,1000,1000,1000,1000\')"

.field private static final DATABASE_INIT_NOM:Ljava/lang/String; = "insert into names (name, pattern) values (\'NOM\', \'500,400,400,150,150,400,400,400,400,400,400,400,400,400\')"

.field private static final DATABASE_INIT_SOS:Ljava/lang/String; = "insert into names (name, pattern) values (\'S.O.S.\', \'500,150,150,150,150,150,400,400,400,400,400,400,400,150,150,150,150,150\')"

.field private static final DATABASE_NAME:Ljava/lang/String; = "Vibrations"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "names"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final NAME:Ljava/lang/String; = "name"

.field private static final NOMVibrationName:Ljava/lang/String; = "\'NOM\'"

.field private static final NOMVibrationPattern:Ljava/lang/String; = "\'500,400,400,150,150,400,400,400,400,400,400,400,400,400\'"

.field public static final PATTERN:Ljava/lang/String; = "pattern"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.aokp.romcontrol.Vibrations"

.field private static final SOSVibrationName:Ljava/lang/String; = "\'S.O.S.\'"

.field private static final SOSVibrationPattern:Ljava/lang/String; = "\'500,150,150,150,150,150,400,400,400,400,400,400,400,150,150,150,150,150\'"

.field private static final TAG:Ljava/lang/String; = "VibrationsProvider"

.field private static final VIBRATIONS:I = 0x1

.field private static final VIBRATION_ID:I = 0x2

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final defaultVibrationName:Ljava/lang/String; = "\'Default\'"

.field private static final defaultVibrationPattern:Ljava/lang/String; = "\'500,1000,1000,1000,1000\'"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const-string v0, "content://com.aokp.romcontrol.Vibrations/vibrations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 36
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 37
    sget-object v0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.aokp.romcontrol.Vibrations"

    const-string v2, "vibrations"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.aokp.romcontrol.Vibrations"

    const-string v2, "vibrations/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, count:I
    sget-object v3, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 212
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :pswitch_0
    iget-object v3, p0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "names"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v1, v0

    .line 216
    .end local v0           #count:I
    .local v1, count:I
    :goto_1
    return v1

    .line 199
    .end local v1           #count:I
    .restart local v0       #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    .local v2, id:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 201
    const-string v3, "VibrationsProvider"

    const-string v4, "Not deleting default vibration"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 202
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_1

    .line 204
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_0
    iget-object v4, p0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "names"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v7, 0x29

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 210
    goto :goto_0

    .line 204
    :cond_1
    const-string v3, ""

    goto :goto_2

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 121
    sget-object v0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.romcontrol.vibrations"

    .line 125
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.romcontrol.vibrations"

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 173
    iget-object v3, p0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "names"

    const-string v5, ""

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 177
    .local v1, rowID:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 178
    sget-object v3, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 179
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 180
    return-object v0

    .line 182
    .end local v0           #_uri:Landroid/net/Uri;
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/aokp/romcontrol/vibrations/VibrationsProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/aokp/romcontrol/vibrations/VibrationsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 135
    .local v1, dbHelper:Lcom/aokp/romcontrol/vibrations/VibrationsProvider$DatabaseHelper;
    invoke-virtual {v1}, Lcom/aokp/romcontrol/vibrations/VibrationsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    iget-object v2, p0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 143
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 144
    .local v0, sqlBuilder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "names"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    if-eqz p5, :cond_1

    const-string v1, ""

    if-ne p5, v1, :cond_2

    .line 153
    :cond_1
    const-string p5, "name"

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 166
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 167
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v7, 0x1

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, count:I
    sget-object v3, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 246
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :pswitch_0
    iget-object v3, p0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "names"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v1, v0

    .line 250
    .end local v0           #count:I
    .local v1, count:I
    :goto_1
    return v1

    .line 232
    .end local v1           #count:I
    .restart local v0       #count:I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    .local v2, id:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 234
    const-string v3, "VibrationsProvider"

    const-string v4, "Not updating default vibration"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 235
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_1

    .line 237
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_0
    iget-object v4, p0, Lcom/aokp/romcontrol/vibrations/VibrationsProvider;->vibrationsDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "names"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AND ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v7, 0x29

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 244
    goto :goto_0

    .line 237
    :cond_1
    const-string v3, ""

    goto :goto_2

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
