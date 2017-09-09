.class public Lcom/index/db/DB;
.super Ljava/lang/Object;
.source "DB.java"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rawQueryData(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 20
    .local v4, records:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v5, Lcom/index/db/SQLdm;

    invoke-direct {v5}, Lcom/index/db/SQLdm;-><init>()V

    .line 21
    .local v5, s:Lcom/index/db/SQLdm;
    invoke-virtual {v5, p3}, Lcom/index/db/SQLdm;->openDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/index/db/DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    iget-object v7, p0, Lcom/index/db/DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 24
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 36
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 37
    iget-object v7, p0, Lcom/index/db/DB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 39
    return-object v4

    .line 25
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v3, record:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, fieldNames:[Ljava/lang/String;
    array-length v8, v2

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v8, :cond_1

    .line 33
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_1
    aget-object v1, v2, v7

    .line 29
    .local v1, fieldName:Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, value:Ljava/lang/String;
    invoke-interface {v3, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
