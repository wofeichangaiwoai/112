.class public Lcom/index/android/View/LyricView;
.super Landroid/widget/TextView;
.source "LyricView.java"


# instance fields
.field private currentPaint:Landroid/graphics/Paint;

.field private height:F

.field private index:I

.field private mLrcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/index/android/LrcContent;",
            ">;"
        }
    .end annotation
.end field

.field private notCurrentPaint:Landroid/graphics/Paint;

.field private textHeight:F

.field private textSize:F

.field private width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/index/android/View/LyricView;->textHeight:F

    .line 23
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/index/android/View/LyricView;->textSize:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/index/android/View/LyricView;->index:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/View/LyricView;->mLrcList:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/index/android/View/LyricView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/index/android/View/LyricView;->textHeight:F

    .line 23
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/index/android/View/LyricView;->textSize:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/index/android/View/LyricView;->index:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/View/LyricView;->mLrcList:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/index/android/View/LyricView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/index/android/View/LyricView;->textHeight:F

    .line 23
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/index/android/View/LyricView;->textSize:F

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/index/android/View/LyricView;->index:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/View/LyricView;->mLrcList:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lcom/index/android/View/LyricView;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p0, v2}, Lcom/index/android/View/LyricView;->setFocusable(Z)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/index/android/View/LyricView;->currentPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/index/android/View/LyricView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/index/android/View/LyricView;->currentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/index/android/View/LyricView;->notCurrentPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/index/android/View/LyricView;->notCurrentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/index/android/View/LyricView;->notCurrentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/16 v9, 0xff

    const/high16 v8, 0x4000

    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/index/android/View/LyricView;->currentPaint:Landroid/graphics/Paint;

    const/16 v4, 0xd2

    const/16 v5, 0xfb

    const/16 v6, 0xf8

    const/16 v7, 0x1d

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v3, p0, Lcom/index/android/View/LyricView;->notCurrentPaint:Landroid/graphics/Paint;

    const/16 v4, 0x8c

    invoke-static {v4, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v3, p0, Lcom/index/android/View/LyricView;->currentPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41c0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 74
    iget-object v3, p0, Lcom/index/android/View/LyricView;->currentPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 76
    iget-object v3, p0, Lcom/index/android/View/LyricView;->notCurrentPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/index/android/View/LyricView;->textSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    iget-object v3, p0, Lcom/index/android/View/LyricView;->notCurrentPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 79
    :try_start_0
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/index/android/View/LyricView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, p0, Lcom/index/android/View/LyricView;->mLrcList:Ljava/util/List;

    iget v4, p0, Lcom/index/android/View/LyricView;->index:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/index/android/LrcContent;

    invoke-virtual {v3}, Lcom/index/android/LrcContent;->getLrcStr()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/index/android/View/LyricView;->width:F

    div-float/2addr v4, v8

    iget v5, p0, Lcom/index/android/View/LyricView;->height:F

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/index/android/View/LyricView;->currentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 82
    iget v3, p0, Lcom/index/android/View/LyricView;->height:F

    div-float v2, v3, v8

    .line 84
    .local v2, tempY:F
    iget v3, p0, Lcom/index/android/View/LyricView;->index:I

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_2

    .line 89
    iget v3, p0, Lcom/index/android/View/LyricView;->height:F

    div-float v2, v3, v8

    .line 91
    iget v3, p0, Lcom/index/android/View/LyricView;->index:I

    add-int/lit8 v1, v3, 0x1

    :goto_2
    iget-object v3, p0, Lcom/index/android/View/LyricView;->mLrcList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 93
    iget v3, p0, Lcom/index/android/View/LyricView;->textHeight:F

    add-float/2addr v2, v3

    .line 94
    iget-object v3, p0, Lcom/index/android/View/LyricView;->mLrcList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/index/android/LrcContent;

    invoke-virtual {v3}, Lcom/index/android/LrcContent;->getLrcStr()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/index/android/View/LyricView;->width:F

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/index/android/View/LyricView;->notCurrentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_2
    iget v3, p0, Lcom/index/android/View/LyricView;->textHeight:F

    sub-float/2addr v2, v3

    .line 87
    iget-object v3, p0, Lcom/index/android/View/LyricView;->mLrcList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/index/android/LrcContent;

    invoke-virtual {v3}, Lcom/index/android/LrcContent;->getLrcStr()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/index/android/View/LyricView;->width:F

    div-float/2addr v4, v8

    iget-object v5, p0, Lcom/index/android/View/LyricView;->notCurrentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 97
    .end local v1           #i:I
    .end local v2           #tempY:F
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "..\u6728\u6709\u6b4c\u8bcd\u6587\u4ef6"

    invoke-virtual {p0, v3}, Lcom/index/android/View/LyricView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 107
    int-to-float v0, p1

    iput v0, p0, Lcom/index/android/View/LyricView;->width:F

    .line 108
    int-to-float v0, p2

    iput v0, p0, Lcom/index/android/View/LyricView;->height:F

    .line 109
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 112
    iput p1, p0, Lcom/index/android/View/LyricView;->index:I

    .line 113
    return-void
.end method

.method public setmLrcList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/index/android/LrcContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, mLrcList:Ljava/util/List;,"Ljava/util/List<Lcom/index/android/LrcContent;>;"
    iput-object p1, p0, Lcom/index/android/View/LyricView;->mLrcList:Ljava/util/List;

    .line 31
    return-void
.end method
