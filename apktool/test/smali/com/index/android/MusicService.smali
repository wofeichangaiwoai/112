.class public Lcom/index/android/MusicService;
.super Landroid/app/Service;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/index/android/MusicService$MyReceiver;
    }
.end annotation


# static fields
.field static mPlayer:Landroid/media/MediaPlayer;


# instance fields
.field a1:Ljava/lang/String;

.field arrayList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field current:I

.field flag:I

.field flag1:I

.field flag2:I

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field msg:I

.field serviceReceiver:Lcom/index/android/MusicService$MyReceiver;

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    const/16 v0, 0x11

    iput v0, p0, Lcom/index/android/MusicService;->status:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/index/android/MusicService;->msg:I

    .line 39
    iput v2, p0, Lcom/index/android/MusicService;->current:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    .line 41
    iget v0, p0, Lcom/index/android/MusicService;->msg:I

    iget-object v1, p0, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/index/android/MusicService;->getMusic2(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    .line 42
    iput v2, p0, Lcom/index/android/MusicService;->flag:I

    .line 43
    iput v2, p0, Lcom/index/android/MusicService;->flag1:I

    .line 44
    iput v2, p0, Lcom/index/android/MusicService;->flag2:I

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/index/android/MusicService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/index/android/MusicService;->prepareAndPlay(Ljava/lang/String;)V

    return-void
.end method

.method private prepareAndPlay(Ljava/lang/String;)V
    .locals 8
    .parameter "music"

    .prologue
    .line 393
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 394
    sget-object v0, Lcom/index/android/MusicActivity;->am:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Movies/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 395
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 397
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 399
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 400
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 402
    invoke-static {}, Lcom/index/android/MusicActivity;->StrartbarUpdate()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v7

    .line 405
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private stop()V
    .locals 3

    .prologue
    .line 410
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 411
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 415
    :cond_0
    :try_start_0
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 416
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 426
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 419
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 420
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 422
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getMusic2(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "is"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 205
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    sget-object v6, Lcom/index/android/MusicActivity;->am:Landroid/content/res/AssetManager;

    if-eqz v6, :cond_0

    .line 208
    sget-object v6, Lcom/index/android/MusicActivity;->am:Landroid/content/res/AssetManager;

    const-string v7, "Movies"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, fs:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    :try_start_1
    array-length v6, v3

    if-lt v4, v6, :cond_1

    move-object v0, v1

    .line 235
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #fs:[Ljava/lang/String;
    .end local v4           #i:I
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v0

    .line 213
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #fs:[Ljava/lang/String;
    .restart local v4       #i:I
    :cond_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_3

    .line 214
    aget-object v6, v3, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_3
    if-eqz p2, :cond_2

    .line 221
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 222
    aget-object v7, v3, v4

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 224
    aget-object v6, v3, v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 231
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #fs:[Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #j:I
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 233
    .local v2, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 231
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #fs:[Ljava/lang/String;
    .restart local v4       #i:I
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3
.end method

.method public next(Ljava/util/ArrayList;II)V
    .locals 4
    .parameter
    .parameter "flag"
    .parameter "flag2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, arrayList2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 153
    if-nez p2, :cond_3

    .line 154
    iget v0, p0, Lcom/index/android/MusicService;->current:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    iget v0, p0, Lcom/index/android/MusicService;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/index/android/MusicService;->current:I

    .line 157
    :cond_0
    iget v0, p0, Lcom/index/android/MusicService;->current:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 159
    if-nez p3, :cond_2

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/index/android/MusicService;->current:I

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    if-ne p3, v2, :cond_1

    .line 166
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 171
    :cond_3
    if-ne p2, v2, :cond_1

    .line 172
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/index/android/MusicService;->current:I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 443
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 49
    new-instance v1, Lcom/index/android/MusicService$MyReceiver;

    invoke-direct {v1, p0}, Lcom/index/android/MusicService$MyReceiver;-><init>(Lcom/index/android/MusicService;)V

    iput-object v1, p0, Lcom/index/android/MusicService;->serviceReceiver:Lcom/index/android/MusicService$MyReceiver;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "org.crazyit.action.CTL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/index/android/MusicService;->serviceReceiver:Lcom/index/android/MusicService$MyReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/index/android/MusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 55
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 56
    const/4 v1, 0x0

    sput-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 58
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 60
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/index/android/MusicService$1;

    invoke-direct {v2, p0}, Lcom/index/android/MusicService$1;-><init>(Lcom/index/android/MusicService;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 104
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/index/android/MusicService;->serviceReceiver:Lcom/index/android/MusicService$MyReceiver;

    invoke-virtual {p0, v0}, Lcom/index/android/MusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 432
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/index/android/MusicService;->stop()V

    .line 435
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 436
    const/4 v0, 0x0

    sput-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    .line 438
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 439
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string v1, "FLAG"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/index/android/MusicService;->msg:I

    .line 112
    const-string v1, "list"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    .line 113
    const-string v1, "current"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/index/android/MusicService;->current:I

    .line 114
    iget v1, p0, Lcom/index/android/MusicService;->msg:I

    iget-object v2, p0, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/index/android/MusicService;->getMusic2(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    .line 117
    iget v1, p0, Lcom/index/android/MusicService;->msg:I

    if-ne v1, v3, :cond_1

    .line 118
    iget-object v1, p0, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    iget v2, p0, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/index/android/MusicService;->prepareAndPlay(Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.crazyit.action.UPDATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "current"

    iget v2, p0, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "i"

    iget v2, p0, Lcom/index/android/MusicService;->msg:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    const-string v1, "list"

    iget-object v2, p0, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 124
    const-string v1, "update"

    iget v2, p0, Lcom/index/android/MusicService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v0}, Lcom/index/android/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    .end local v0           #sendIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 150
    return-void

    .line 126
    :cond_1
    iget v1, p0, Lcom/index/android/MusicService;->msg:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 127
    iget-object v1, p0, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    iget v2, p0, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/index/android/MusicService;->prepareAndPlay(Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.crazyit.action.UPDATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .restart local v0       #sendIntent:Landroid/content/Intent;
    const-string v1, "current"

    iget v2, p0, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v1, "i"

    iget v2, p0, Lcom/index/android/MusicService;->msg:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v1, "update"

    iget v2, p0, Lcom/index/android/MusicService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v1, "list"

    iget-object v2, p0, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0}, Lcom/index/android/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    .end local v0           #sendIntent:Landroid/content/Intent;
    :cond_2
    iget v1, p0, Lcom/index/android/MusicService;->msg:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    iget v2, p0, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/index/android/MusicService;->prepareAndPlay(Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.crazyit.action.UPDATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v0       #sendIntent:Landroid/content/Intent;
    const-string v1, "current"

    iget v2, p0, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v1, "i"

    iget v2, p0, Lcom/index/android/MusicService;->msg:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    const-string v1, "update"

    iget v2, p0, Lcom/index/android/MusicService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, "list"

    iget-object v2, p0, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Lcom/index/android/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pre(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, arrayList2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 182
    iget v0, p0, Lcom/index/android/MusicService;->flag:I

    if-nez v0, :cond_3

    .line 183
    iget v0, p0, Lcom/index/android/MusicService;->current:I

    if-lez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/index/android/MusicService;->current:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/index/android/MusicService;->current:I

    .line 186
    :cond_0
    iget v0, p0, Lcom/index/android/MusicService;->current:I

    if-nez v0, :cond_1

    .line 188
    iget v0, p0, Lcom/index/android/MusicService;->flag2:I

    if-nez v0, :cond_2

    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/index/android/MusicService;->current:I

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    iget v0, p0, Lcom/index/android/MusicService;->flag2:I

    if-ne v0, v1, :cond_1

    .line 191
    sget-object v0, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 194
    :cond_3
    iget v0, p0, Lcom/index/android/MusicService;->flag:I

    if-ne v0, v1, :cond_1

    .line 195
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/index/android/MusicService;->current:I

    goto :goto_0
.end method
