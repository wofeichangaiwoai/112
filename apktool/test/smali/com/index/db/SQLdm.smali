.class public Lcom/index/db/SQLdm;
.super Ljava/lang/Object;
.source "SQLdm.java"


# instance fields
.field database:Landroid/database/sqlite/SQLiteDatabase;

.field dbDir:Ljava/lang/String;

.field dbPath:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "liu_DB.db"

    iput-object v0, p0, Lcom/index/db/SQLdm;->name:Ljava/lang/String;

    .line 15
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/index/db/SQLdm;->dbDir:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/index/db/SQLdm;->dbDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/index/db/SQLdm;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/index/db/SQLdm;->dbPath:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public openDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 12
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 20
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/index/db/SQLdm;->dbPath:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .local v3, dbFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 23
    invoke-static {v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 54
    :goto_0
    return-object v8

    .line 26
    :cond_0
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/index/db/SQLdm;->dbDir:Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v4, dirFile:Ljava/io/File;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "pathStr="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 29
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 30
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 31
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "\u521b\u5efa\u6210\u529f"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 37
    .local v0, am:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v9, "liu_DB.db"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 39
    .local v7, is:Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/index/db/SQLdm;->dbPath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 40
    .local v6, fos:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 41
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 42
    .local v2, count:I
    :goto_2
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_3

    .line 46
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 47
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 48
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/index/db/SQLdm;->openDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    goto :goto_0

    .line 33
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v7           #is:Ljava/io/InputStream;
    :cond_2
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "\u521b\u5efa\u5931\u8d25"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 44
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v7       #is:Ljava/io/InputStream;
    :cond_3
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 49
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v7           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 51
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
