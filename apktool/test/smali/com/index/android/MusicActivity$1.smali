.class Lcom/index/android/MusicActivity$1;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 303
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    sput v0, Lcom/index/android/MusicActivity;->CurrentPosition:I

    .line 306
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    sput v0, Lcom/index/android/MusicActivity;->mMax:I

    .line 308
    :cond_0
    sget-object v0, Lcom/index/android/MusicActivity;->ProceseekBar2:Landroid/widget/SeekBar;

    sget v1, Lcom/index/android/MusicActivity;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 309
    sget-object v0, Lcom/index/android/MusicActivity;->ProceseekBar2:Landroid/widget/SeekBar;

    sget v1, Lcom/index/android/MusicActivity;->CurrentPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 313
    sget-object v0, Lcom/index/android/MusicActivity;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/index/android/MusicActivity;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 314
    return-void
.end method
