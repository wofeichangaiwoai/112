.class public Lcom/index/android/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static INTERVAL:I

.field public static musicitems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/16 v0, 0x3c

    sput v0, Lcom/index/android/Constant;->musicitems:I

    .line 6
    const/16 v0, 0x2d

    sput v0, Lcom/index/android/Constant;->INTERVAL:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
