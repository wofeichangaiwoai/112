.class public Lcom/index/android/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static instance:Lcom/index/android/MyApplication;


# instance fields
.field public current:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/index/android/MyApplication;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/index/android/MyApplication;->instance:Lcom/index/android/MyApplication;

    return-object v0
.end method


# virtual methods
.method public getCurrent()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/index/android/MyApplication;->current:I

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    sput-object p0, Lcom/index/android/MyApplication;->instance:Lcom/index/android/MyApplication;

    .line 24
    return-void
.end method

.method public setCurrent(I)V
    .locals 0
    .parameter "current"

    .prologue
    .line 16
    iput p1, p0, Lcom/index/android/MyApplication;->current:I

    .line 17
    return-void
.end method
