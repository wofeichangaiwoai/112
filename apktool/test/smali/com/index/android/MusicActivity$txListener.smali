.class public Lcom/index/android/MusicActivity$txListener;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "txListener"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/index/android/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/index/android/MusicActivity;I)V
    .locals 1
    .parameter
    .parameter "i"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/index/android/MusicActivity$txListener;->this$0:Lcom/index/android/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/index/android/MusicActivity$txListener;->index:I

    .line 179
    iput p2, p0, Lcom/index/android/MusicActivity$txListener;->index:I

    .line 180
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 185
    sget-object v0, Lcom/index/android/MusicActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/index/android/MusicActivity$txListener;->index:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 186
    return-void
.end method
