.class Lcom/aokp/romcontrol/vibrations/VibrationsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VibrationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aokp/romcontrol/vibrations/VibrationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 92
    const-string v0, "Vibrations"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 97
    const-string v0, "create table names (_id integer primary key autoincrement, name text not null, pattern text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "insert into names (name, pattern) values (\'AOKP\', \'500,150,400,400,400,400,400,400,400,400,400,400,150,150,400,400,150,150,400,400,400,400,150,150,150\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v0, "insert into names (name, pattern) values (\'CQD\', \'500,400,400,150,150,400,400,150,150,400,400,400,400,150,150,400,400,400,400,150,150,150\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string v0, "insert into names (_id, name, pattern) values (0, \'Default\', \'500,1000,1000,1000,1000\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "insert into names (name, pattern) values (\'NOM\', \'500,400,400,150,150,400,400,400,400,400,400,400,400,400\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "insert into names (name, pattern) values (\'S.O.S.\', \'500,150,150,150,150,150,400,400,400,400,400,400,400,150,150,150,150,150\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 110
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 111
    const-string v0, "insert into names (name, pattern) values (\'AOKP\', \'500,150,400,400,400,400,400,400,400,400,400,400,150,150,400,400,150,150,400,400,400,400,150,150,150\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "insert into names (name, pattern) values (\'CQD\', \'500,400,400,150,150,400,400,150,150,400,400,400,400,150,150,400,400,400,400,150,150,150\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "insert into names (name, pattern) values (\'NOM\', \'500,400,400,150,150,400,400,400,400,400,400,400,400,400\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    add-int/lit8 p2, p2, 0x1

    .line 116
    :cond_0
    return-void
.end method
