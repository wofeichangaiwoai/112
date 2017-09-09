.class public Lcom/index/android/ConvertFileCode;
.super Ljava/lang/Object;
.source "ConvertFileCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "filepath"

    .prologue
    .line 13
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 15
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 16
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 17
    .local v7, reader:Ljava/io/BufferedReader;
    const-string v10, ""

    .line 19
    .local v10, text:Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 21
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v11, 0x4

    :try_start_2
    invoke-virtual {v1, v11}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 22
    const/4 v11, 0x3

    new-array v4, v11, [B

    .line 24
    .local v4, first3bytes:[B
    invoke-virtual {v1, v4}, Ljava/io/BufferedInputStream;->read([B)I

    .line 25
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    .line 26
    const/4 v11, 0x0

    aget-byte v11, v4, v11

    const/16 v12, -0x11

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    aget-byte v11, v4, v11

    const/16 v12, -0x45

    if-ne v11, v12, :cond_2

    .line 27
    const/4 v11, 0x2

    aget-byte v11, v4, v11

    const/16 v12, -0x41

    if-ne v11, v12, :cond_2

    .line 29
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    const-string v12, "utf-8"

    invoke-direct {v11, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 49
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v9

    .line 50
    .local v9, str:Ljava/lang/String;
    :goto_1
    if-nez v9, :cond_6

    .line 58
    if-eqz v6, :cond_0

    .line 60
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 65
    :cond_0
    :goto_2
    if-eqz v1, :cond_a

    .line 67
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 74
    .end local v4           #first3bytes:[B
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v9           #str:Ljava/lang/String;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    return-object v10

    .line 30
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #first3bytes:[B
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :cond_2
    const/4 v11, 0x0

    :try_start_5
    aget-byte v11, v4, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 31
    const/4 v11, 0x1

    aget-byte v11, v4, v11

    const/4 v12, -0x2

    if-ne v11, v12, :cond_3

    .line 33
    new-instance v8, Ljava/io/BufferedReader;

    .line 34
    new-instance v11, Ljava/io/InputStreamReader;

    const-string v12, "unicode"

    invoke-direct {v11, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 33
    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 35
    :cond_3
    const/4 v11, 0x0

    aget-byte v11, v4, v11

    const/4 v12, -0x2

    if-ne v11, v12, :cond_4

    .line 36
    const/4 v11, 0x1

    aget-byte v11, v4, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 38
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 39
    const-string v12, "utf-16be"

    invoke-direct {v11, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 38
    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 40
    :cond_4
    const/4 v11, 0x0

    aget-byte v11, v4, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 41
    const/4 v11, 0x1

    aget-byte v11, v4, v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    .line 43
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 44
    const-string v12, "utf-16le"

    invoke-direct {v11, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 43
    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 47
    :cond_5
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    const-string v12, "GBK"

    invoke-direct {v11, v1, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 51
    .restart local v9       #str:Ljava/lang/String;
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 52
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move-result-object v9

    goto/16 :goto_1

    .line 55
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v4           #first3bytes:[B
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v9           #str:Ljava/lang/String;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v2

    .line 56
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 58
    if-eqz v5, :cond_7

    .line 60
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 65
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    :goto_5
    if-eqz v0, :cond_1

    .line 67
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    .line 68
    :catch_1
    move-exception v2

    .line 69
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 61
    .local v2, e:Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 62
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 57
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 58
    :goto_6
    if-eqz v5, :cond_8

    .line 60
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 65
    :cond_8
    :goto_7
    if-eqz v0, :cond_9

    .line 67
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 72
    :cond_9
    :goto_8
    throw v11

    .line 61
    :catch_3
    move-exception v2

    .line 62
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 68
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 69
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 61
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #first3bytes:[B
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v9       #str:Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 62
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 68
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 69
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_a
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 57
    .end local v4           #first3bytes:[B
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v9           #str:Ljava/lang/String;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_6

    .line 55
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_4
.end method
