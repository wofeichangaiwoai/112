.class Lcom/index/android/MusicActivity$ProcessBarListener;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/MusicActivity;


# direct methods
.method constructor <init>(Lcom/index/android/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/index/android/MusicActivity$ProcessBarListener;->this$0:Lcom/index/android/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 240
    if-eqz p3, :cond_0

    .line 241
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 242
    sget-object v0, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    sget-object v1, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    invoke-virtual {v1, p2}, Lcom/index/android/LyricView1;->SelectIndex(I)I

    move-result v1

    sget-object v2, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    invoke-virtual {v2}, Lcom/index/android/LyricView1;->getSIZEWORD()I

    move-result v2

    iget-object v3, p0, Lcom/index/android/MusicActivity$ProcessBarListener;->this$0:Lcom/index/android/MusicActivity;

    #getter for: Lcom/index/android/MusicActivity;->INTERVAL:I
    invoke-static {v3}, Lcom/index/android/MusicActivity;->access$4(Lcom/index/android/MusicActivity;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0xdc

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/index/android/LyricView1;->setOffsetY(F)V

    .line 246
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 251
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 256
    return-void
.end method
