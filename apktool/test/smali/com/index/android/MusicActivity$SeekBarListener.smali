.class Lcom/index/android/MusicActivity$SeekBarListener;
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
    name = "SeekBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/MusicActivity;


# direct methods
.method constructor <init>(Lcom/index/android/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/index/android/MusicActivity$SeekBarListener;->this$0:Lcom/index/android/MusicActivity;

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
    .line 265
    if-eqz p3, :cond_0

    .line 266
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 267
    .local v0, SeekPosition:I
    iget-object v1, p0, Lcom/index/android/MusicActivity$SeekBarListener;->this$0:Lcom/index/android/MusicActivity;

    iget-object v1, v1, Lcom/index/android/MusicActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 270
    .end local v0           #SeekPosition:I
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 276
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 282
    return-void
.end method
