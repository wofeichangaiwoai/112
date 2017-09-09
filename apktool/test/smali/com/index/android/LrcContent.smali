.class public Lcom/index/android/LrcContent;
.super Ljava/lang/Object;
.source "LrcContent.java"


# instance fields
.field private lrcStr:Ljava/lang/String;

.field private lrcTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLrcStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/index/android/LrcContent;->lrcStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcTime()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/index/android/LrcContent;->lrcTime:I

    return v0
.end method

.method public setLrcStr(Ljava/lang/String;)V
    .locals 0
    .parameter "lrcStr"

    .prologue
    .line 10
    iput-object p1, p0, Lcom/index/android/LrcContent;->lrcStr:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setLrcTime(I)V
    .locals 0
    .parameter "lrcTime"

    .prologue
    .line 16
    iput p1, p0, Lcom/index/android/LrcContent;->lrcTime:I

    .line 17
    return-void
.end method
