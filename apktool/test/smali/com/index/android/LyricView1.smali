.class public Lcom/index/android/LyricView1;
.super Landroid/view/View;
.source "LyricView1.java"


# static fields
.field private static blLrc:Z

.field private static lrc_map:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/index/android/LyricObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private INTERVAL:I

.field private SIZEWORD:I

.field private blScrollView:Z

.field private lrcIndex:I

.field private mX:F

.field private offsetY:F

.field paint:Landroid/graphics/Paint;

.field paintHL:Landroid/graphics/Paint;

.field temp:Lcom/index/android/LyricObject;

.field private touchX:F

.field private touchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/index/android/LyricView1;->blLrc:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v0, p0, Lcom/index/android/LyricView1;->blScrollView:Z

    .line 34
    iput v0, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    .line 35
    iput v0, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    .line 36
    const/16 v0, 0x2d

    iput v0, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0}, Lcom/index/android/LyricView1;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/index/android/LyricView1;->blScrollView:Z

    .line 34
    iput v0, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    .line 35
    iput v0, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    .line 36
    const/16 v0, 0x2d

    iput v0, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    .line 46
    invoke-virtual {p0}, Lcom/index/android/LyricView1;->init()V

    .line 47
    return-void
.end method

.method public static isBlLrc()Z
    .locals 1

    .prologue
    .line 307
    sget-boolean v0, Lcom/index/android/LyricView1;->blLrc:Z

    return v0
.end method

.method public static read(Ljava/io/InputStream;)V
    .locals 27
    .parameter "in"

    .prologue
    .line 207
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 208
    .local v12, lrc_read:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/index/android/LyricObject;>;"
    const-string v5, ""

    .line 216
    .local v5, data:Ljava/lang/String;
    const/16 v25, 0x1

    :try_start_0
    sput-boolean v25, Lcom/index/android/LyricView1;->blLrc:Z

    .line 220
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v25, Ljava/io/InputStreamReader;

    const-string v26, "GB2312"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 221
    .local v3, br:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 222
    .local v6, i:I
    const-string v25, "\\d{2}"

    invoke-static/range {v25 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v18

    .line 223
    .local v18, pattern:Ljava/util/regex/Pattern;
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 270
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v6           #i:I
    .end local v18           #pattern:Ljava/util/regex/Pattern;
    :goto_0
    sget-object v25, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual/range {v25 .. v25}, Ljava/util/TreeMap;->clear()V

    .line 280
    const-string v5, ""

    .line 281
    invoke-virtual {v12}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 282
    .local v8, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .line 283
    .local v17, oldval:Lcom/index/android/LyricObject;
    const/4 v6, 0x0

    .line 284
    .restart local v6       #i:I
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_6

    .line 302
    return-void

    .line 225
    .end local v8           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v17           #oldval:Lcom/index/android/LyricObject;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v18       #pattern:Ljava/util/regex/Pattern;
    :cond_2
    :try_start_1
    const-string v25, "["

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 226
    const-string v25, "]"

    const-string v26, "@"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 227
    const-string v25, "@"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 228
    .local v20, splitdata:[Ljava/lang/String;
    const-string v25, "@"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 229
    const/4 v10, 0x0

    .local v10, k:I
    :goto_2
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_0

    .line 230
    aget-object v21, v20, v10

    .line 231
    .local v21, str:Ljava/lang/String;
    const-string v25, ":"

    const-string v26, "."

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 232
    const-string v25, "."

    const-string v26, "@"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 233
    const-string v25, "@"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 234
    .local v22, timedata:[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v25, v22, v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 235
    .local v14, matcher:Ljava/util/regex/Matcher;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 236
    const/16 v25, 0x0

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 237
    .local v13, m:I
    const/16 v25, 0x1

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 238
    .local v19, s:I
    const/16 v25, 0x2

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 239
    .local v15, ms:I
    mul-int/lit8 v25, v13, 0x3c

    add-int v25, v25, v19

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    mul-int/lit8 v26, v15, 0xa

    add-int v4, v25, v26

    .line 240
    .local v4, currTime:I
    new-instance v7, Lcom/index/android/LyricObject;

    invoke-direct {v7}, Lcom/index/android/LyricObject;-><init>()V

    .line 241
    .local v7, item1:Lcom/index/android/LyricObject;
    iput v4, v7, Lcom/index/android/LyricObject;->begintime:I

    .line 242
    const-string v25, ""

    move-object/from16 v0, v25

    iput-object v0, v7, Lcom/index/android/LyricObject;->lrc:Ljava/lang/String;

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v4           #currTime:I
    .end local v7           #item1:Lcom/index/android/LyricObject;
    .end local v13           #m:I
    .end local v15           #ms:I
    .end local v19           #s:I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 248
    .end local v10           #k:I
    .end local v14           #matcher:Ljava/util/regex/Matcher;
    .end local v21           #str:Ljava/lang/String;
    .end local v22           #timedata:[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget-object v11, v20, v25

    .line 249
    .local v11, lrcContenet:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ge v9, v0, :cond_0

    .line 251
    aget-object v23, v20, v9

    .line 252
    .local v23, tmpstr:Ljava/lang/String;
    const-string v25, ":"

    const-string v26, "."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 253
    const-string v25, "."

    const-string v26, "@"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 254
    const-string v25, "@"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 255
    .restart local v22       #timedata:[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v25, v22, v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 256
    .restart local v14       #matcher:Ljava/util/regex/Matcher;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v25

    if-eqz v25, :cond_5

    .line 257
    const/16 v25, 0x0

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 258
    .restart local v13       #m:I
    const/16 v25, 0x1

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 259
    .restart local v19       #s:I
    const/16 v25, 0x2

    aget-object v25, v22, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 260
    .restart local v15       #ms:I
    mul-int/lit8 v25, v13, 0x3c

    add-int v25, v25, v19

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    mul-int/lit8 v26, v15, 0xa

    add-int v4, v25, v26

    .line 261
    .restart local v4       #currTime:I
    new-instance v7, Lcom/index/android/LyricObject;

    invoke-direct {v7}, Lcom/index/android/LyricObject;-><init>()V

    .line 262
    .restart local v7       #item1:Lcom/index/android/LyricObject;
    iput v4, v7, Lcom/index/android/LyricObject;->begintime:I

    .line 263
    iput-object v11, v7, Lcom/index/android/LyricObject;->lrc:Ljava/lang/String;

    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    add-int/lit8 v6, v6, 0x1

    .line 249
    .end local v4           #currTime:I
    .end local v7           #item1:Lcom/index/android/LyricObject;
    .end local v13           #m:I
    .end local v15           #ms:I
    .end local v19           #s:I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 285
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v9           #j:I
    .end local v11           #lrcContenet:Ljava/lang/String;
    .end local v14           #matcher:Ljava/util/regex/Matcher;
    .end local v18           #pattern:Ljava/util/regex/Pattern;
    .end local v20           #splitdata:[Ljava/lang/String;
    .end local v22           #timedata:[Ljava/lang/String;
    .end local v23           #tmpstr:Ljava/lang/String;
    .restart local v8       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v17       #oldval:Lcom/index/android/LyricObject;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 286
    .local v16, ob:Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/index/android/LyricObject;

    .line 287
    .local v24, val:Lcom/index/android/LyricObject;
    if-nez v17, :cond_7

    .line 288
    move-object/from16 v17, v24

    .line 298
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_1

    .line 299
    sget-object v25, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 291
    :cond_7
    new-instance v7, Lcom/index/android/LyricObject;

    invoke-direct {v7}, Lcom/index/android/LyricObject;-><init>()V

    .line 292
    .restart local v7       #item1:Lcom/index/android/LyricObject;
    move-object/from16 v7, v17

    .line 293
    move-object/from16 v0, v24

    iget v0, v0, Lcom/index/android/LyricObject;->begintime:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/index/android/LyricObject;->begintime:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v7, Lcom/index/android/LyricObject;->timeline:I

    .line 294
    sget-object v25, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    add-int/lit8 v6, v6, 0x1

    .line 296
    move-object/from16 v17, v24

    goto :goto_4

    .line 274
    .end local v6           #i:I
    .end local v7           #item1:Lcom/index/android/LyricObject;
    .end local v8           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v16           #ob:Ljava/lang/Object;
    .end local v17           #oldval:Lcom/index/android/LyricObject;
    .end local v24           #val:Lcom/index/android/LyricObject;
    :catch_0
    move-exception v25

    goto/16 :goto_0

    .line 272
    :catch_1
    move-exception v25

    goto/16 :goto_0
.end method


# virtual methods
.method public SelectIndex(I)I
    .locals 6
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    .line 179
    sget-boolean v4, Lcom/index/android/LyricView1;->blLrc:Z

    if-nez v4, :cond_0

    .line 199
    :goto_0
    return v3

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 183
    .local v1, index:I
    sget-object v4, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    if-eqz v4, :cond_1

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v4, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 194
    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    .line 195
    iget v4, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    if-gez v4, :cond_1

    .line 196
    iput v3, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    .line 199
    .end local v0           #i:I
    :cond_1
    iget v3, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    goto :goto_0

    .line 188
    .restart local v0       #i:I
    :cond_2
    sget-object v4, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/index/android/LyricObject;

    .line 189
    .local v2, temp:Lcom/index/android/LyricObject;
    iget v4, v2, Lcom/index/android/LyricObject;->begintime:I

    if-ge v4, p1, :cond_3

    .line 191
    add-int/lit8 v1, v1, 0x1

    .line 186
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public SetTextSize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 130
    sget-boolean v3, Lcom/index/android/LyricView1;->blLrc:Z

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v3, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 135
    sget-object v3, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/index/android/LyricObject;

    iget-object v3, v3, Lcom/index/android/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 136
    .local v2, max:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 144
    const/16 v3, 0x280

    div-int/2addr v3, v2

    iput v3, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    goto :goto_0

    .line 138
    :cond_2
    sget-object v3, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/index/android/LyricObject;

    .line 139
    .local v1, lrcStrLength:Lcom/index/android/LyricObject;
    iget-object v3, v1, Lcom/index/android/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 141
    iget-object v3, v1, Lcom/index/android/LyricObject;->lrc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 136
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public SpeedLrc()Ljava/lang/Float;
    .locals 5

    .prologue
    const/high16 v4, 0x435c

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, speed:F
    iget v1, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v2, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    iget v3, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 162
    iget v1, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v2, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    iget v3, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    const/high16 v2, 0x41a0

    div-float v0, v1, v2

    .line 170
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 163
    :cond_1
    iget v1, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v2, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    iget v3, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x42f0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 164
    const-string v1, "speed"

    const-string v2, "speed is too fast!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/index/android/LyricView1;->offsetY:F

    return v0
.end method

.method public getSIZEWORD()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    .line 112
    const/high16 v0, 0x43a0

    iput v0, p0, Lcom/index/android/LyricView1;->offsetY:F

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 115
    iget-object v0, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object v0, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 118
    iget-object v0, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 121
    iget-object v0, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget-object v0, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 53
    sget-boolean v1, Lcom/index/android/LyricView1;->blLrc:Z

    if-eqz v1, :cond_5

    .line 54
    iget-object v1, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    iget v2, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 55
    iget-object v1, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object v1, p0, Lcom/index/android/LyricView1;->temp:Lcom/index/android/LyricObject;

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    iget v2, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/index/android/LyricObject;

    iput-object v1, p0, Lcom/index/android/LyricView1;->temp:Lcom/index/android/LyricObject;

    .line 58
    iget-object v1, p0, Lcom/index/android/LyricView1;->temp:Lcom/index/android/LyricObject;

    iget-object v1, v1, Lcom/index/android/LyricObject;->lrc:Ljava/lang/String;

    iget v2, p0, Lcom/index/android/LyricView1;->mX:F

    iget v3, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v4, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    iget v5, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/index/android/LyricView1;->paintHL:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    :cond_0
    iget v1, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_3

    .line 69
    :cond_1
    iget v1, p0, Lcom/index/android/LyricView1;->lrcIndex:I

    add-int/lit8 v0, v1, 0x1

    :goto_1
    sget-object v1, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 81
    .end local v0           #i:I
    :cond_2
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 82
    return-void

    .line 62
    .restart local v0       #i:I
    :cond_3
    sget-object v1, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/index/android/LyricObject;

    iput-object v1, p0, Lcom/index/android/LyricView1;->temp:Lcom/index/android/LyricObject;

    .line 63
    iget v1, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v2, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    iget v3, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/index/android/LyricView1;->temp:Lcom/index/android/LyricObject;

    iget-object v1, v1, Lcom/index/android/LyricObject;->lrc:Ljava/lang/String;

    iget v2, p0, Lcom/index/android/LyricView1;->mX:F

    iget v3, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v4, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    iget v5, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 70
    :cond_4
    sget-object v1, Lcom/index/android/LyricView1;->lrc_map:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/index/android/LyricObject;

    iput-object v1, p0, Lcom/index/android/LyricView1;->temp:Lcom/index/android/LyricObject;

    .line 71
    iget v1, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v2, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    iget v3, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x4416

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/index/android/LyricView1;->temp:Lcom/index/android/LyricObject;

    iget-object v1, v1, Lcom/index/android/LyricObject;->lrc:Ljava/lang/String;

    iget v2, p0, Lcom/index/android/LyricView1;->mX:F

    iget v3, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v4, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    iget v5, p0, Lcom/index/android/LyricView1;->INTERVAL:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    .end local v0           #i:I
    :cond_5
    iget-object v1, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x4220

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    const-string v1, "\u627e\u4e0d\u5230\u6b4c\u8bcd"

    iget v2, p0, Lcom/index/android/LyricView1;->mX:F

    const/high16 v3, 0x439b

    iget-object v4, p0, Lcom/index/android/LyricView1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 151
    int-to-float v0, p1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/index/android/LyricView1;->mX:F

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 153
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 89
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bllll==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/index/android/LyricView1;->blScrollView:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 91
    .local v0, tt:F
    sget-boolean v1, Lcom/index/android/LyricView1;->blLrc:Z

    if-nez v1, :cond_0

    .line 93
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_1
    iput v0, p0, Lcom/index/android/LyricView1;->touchY:F

    .line 108
    const/4 v1, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/index/android/LyricView1;->touchX:F

    goto :goto_1

    .line 100
    :pswitch_1
    iget v1, p0, Lcom/index/android/LyricView1;->touchY:F

    sub-float v1, v0, v1

    iput v1, p0, Lcom/index/android/LyricView1;->touchY:F

    .line 101
    iget v1, p0, Lcom/index/android/LyricView1;->offsetY:F

    iget v2, p0, Lcom/index/android/LyricView1;->touchY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/index/android/LyricView1;->offsetY:F

    goto :goto_1

    .line 104
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/index/android/LyricView1;->blScrollView:Z

    goto :goto_1

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOffsetY(F)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 319
    iput p1, p0, Lcom/index/android/LyricView1;->offsetY:F

    .line 320
    return-void
.end method

.method public setSIZEWORD(I)V
    .locals 0
    .parameter "sIZEWORD"

    .prologue
    .line 332
    iput p1, p0, Lcom/index/android/LyricView1;->SIZEWORD:I

    .line 333
    return-void
.end method
