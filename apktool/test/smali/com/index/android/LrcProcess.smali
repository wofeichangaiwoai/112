.class public Lcom/index/android/LrcProcess;
.super Ljava/lang/Object;
.source "LrcProcess.java"


# instance fields
.field private lrcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/index/android/LrcContent;",
            ">;"
        }
    .end annotation
.end field

.field private mLrcContent:Lcom/index/android/LrcContent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/index/android/LrcContent;

    invoke-direct {v0}, Lcom/index/android/LrcContent;-><init>()V

    iput-object v0, p0, Lcom/index/android/LrcProcess;->mLrcContent:Lcom/index/android/LrcContent;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/LrcProcess;->lrcList:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getLrcList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/index/android/LrcContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/index/android/LrcProcess;->lrcList:Ljava/util/List;

    return-object v0
.end method

.method public readLRC(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    const-string v0, ""

    .line 35
    .local v0, Lrc_data:Ljava/lang/String;
    const-string v9, ""

    .line 39
    .local v9, text:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v5, mFile:Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 43
    .local v6, mFileInputStream:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    .local v2, bis:Ljava/io/BufferedInputStream;
    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 45
    const/4 v10, 0x3

    new-array v3, v10, [B

    .line 46
    .local v3, first3bytes:[B
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    .line 47
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    .line 48
    const/4 v10, 0x0

    aget-byte v10, v3, v10

    const/16 v11, -0x11

    if-ne v10, v11, :cond_1

    const/4 v10, 0x1

    aget-byte v10, v3, v10

    const/16 v11, -0x45

    if-ne v10, v11, :cond_1

    .line 49
    const/4 v10, 0x2

    aget-byte v10, v3, v10

    const/16 v11, -0x41

    if-ne v10, v11, :cond_1

    .line 51
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v10, "utf-8"

    invoke-direct {v7, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    .local v7, mInputStreamReader:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    .local v4, mBufferedReader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 101
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 103
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V

    .line 104
    return-object v9

    .line 54
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v7           #mInputStreamReader:Ljava/io/InputStreamReader;
    :cond_1
    const/4 v10, 0x0

    aget-byte v10, v3, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 55
    const/4 v10, 0x1

    aget-byte v10, v3, v10

    const/4 v11, -0x2

    if-ne v10, v11, :cond_2

    .line 56
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v10, "unicode"

    invoke-direct {v7, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 58
    .restart local v7       #mInputStreamReader:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4       #mBufferedReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 59
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v7           #mInputStreamReader:Ljava/io/InputStreamReader;
    :cond_2
    const/4 v10, 0x0

    aget-byte v10, v3, v10

    const/4 v11, -0x2

    if-ne v10, v11, :cond_3

    .line 60
    const/4 v10, 0x1

    aget-byte v10, v3, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 61
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v10, "utf-16be"

    invoke-direct {v7, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 63
    .restart local v7       #mInputStreamReader:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4       #mBufferedReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 64
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v7           #mInputStreamReader:Ljava/io/InputStreamReader;
    :cond_3
    const/4 v10, 0x0

    aget-byte v10, v3, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 65
    const/4 v10, 0x1

    aget-byte v10, v3, v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 66
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v10, "utf-16le"

    invoke-direct {v7, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    .restart local v7       #mInputStreamReader:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .restart local v4       #mBufferedReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 70
    .end local v4           #mBufferedReader:Ljava/io/BufferedReader;
    .end local v7           #mInputStreamReader:Ljava/io/InputStreamReader;
    :cond_4
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v10, "GBK"

    invoke-direct {v7, v2, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 72
    .restart local v7       #mInputStreamReader:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    .restart local v4       #mBufferedReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 79
    :cond_5
    const-string v10, "["

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v10, "]"

    const-string v11, "@"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v10, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, splitLrc_data:[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 87
    iget-object v10, p0, Lcom/index/android/LrcProcess;->mLrcContent:Lcom/index/android/LrcContent;

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Lcom/index/android/LrcContent;->setLrcStr(Ljava/lang/String;)V

    .line 88
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 89
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {p0, v10}, Lcom/index/android/LrcProcess;->time2Str(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, LyricTime:I
    iget-object v10, p0, Lcom/index/android/LrcProcess;->mLrcContent:Lcom/index/android/LrcContent;

    invoke-virtual {v10, v1}, Lcom/index/android/LrcContent;->setLrcTime(I)V

    .line 93
    iget-object v10, p0, Lcom/index/android/LrcProcess;->lrcList:Ljava/util/List;

    iget-object v11, p0, Lcom/index/android/LrcProcess;->mLrcContent:Lcom/index/android/LrcContent;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v10, Lcom/index/android/LrcContent;

    invoke-direct {v10}, Lcom/index/android/LrcContent;-><init>()V

    iput-object v10, p0, Lcom/index/android/LrcProcess;->mLrcContent:Lcom/index/android/LrcContent;

    goto/16 :goto_0
.end method

.method public time2Str(Ljava/lang/String;)I
    .locals 7
    .parameter "timeStr"

    .prologue
    .line 116
    const-string v5, ":"

    const-string v6, "."

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 117
    const-string v5, "."

    const-string v6, "@"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 119
    const-string v5, "@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, timeData:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 123
    .local v2, minute:I
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 124
    .local v3, second:I
    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, millisecond:I
    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v5, v3

    mul-int/lit16 v5, v5, 0x3e8

    mul-int/lit8 v6, v1, 0xa

    add-int v0, v5, v6

    .line 128
    .local v0, currentTime:I
    return v0
.end method
