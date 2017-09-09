.class Lcom/index/android/ButtonFragment$runable;
.super Ljava/lang/Object;
.source "ButtonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/ButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "runable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/ButtonFragment;


# direct methods
.method constructor <init>(Lcom/index/android/ButtonFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/index/android/ButtonFragment$runable;->this$0:Lcom/index/android/ButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    :cond_0
    :goto_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 171
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    sget-object v1, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    sget-object v2, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    invoke-virtual {v2}, Lcom/index/android/LyricView1;->getOffsetY()F

    move-result v2

    sget-object v3, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    invoke-virtual {v3}, Lcom/index/android/LyricView1;->SpeedLrc()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/index/android/LyricView1;->setOffsetY(F)V

    .line 176
    sget-object v1, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/index/android/LyricView1;->SelectIndex(I)I

    .line 177
    sget-object v1, Lcom/index/android/MusicActivity;->ProceseekBar2:Landroid/widget/SeekBar;

    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 178
    iget-object v1, p0, Lcom/index/android/ButtonFragment$runable;->this$0:Lcom/index/android/ButtonFragment;

    iget-object v1, v1, Lcom/index/android/ButtonFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/index/android/ButtonFragment$runable;->this$0:Lcom/index/android/ButtonFragment;

    iget-object v2, v2, Lcom/index/android/ButtonFragment;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
