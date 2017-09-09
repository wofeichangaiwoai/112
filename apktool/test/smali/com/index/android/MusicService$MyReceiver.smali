.class public Lcom/index/android/MusicService$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/MusicService;


# direct methods
.method public constructor <init>(Lcom/index/android/MusicService;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x12

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 245
    const-string v2, "control"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, control:I
    packed-switch v0, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->current:I

    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v3, v3, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 376
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.crazyit.action.UPDATE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, sendIntent:Landroid/content/Intent;
    const-string v2, "update"

    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v3, v3, Lcom/index/android/MusicService;->status:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v2, "current"

    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v3, v3, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v2, "list"

    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v3, v3, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 381
    const-string v2, "i"

    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v3, v3, Lcom/index/android/MusicService;->msg:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    invoke-virtual {v2, v1}, Lcom/index/android/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    .end local v1           #sendIntent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 266
    :pswitch_0
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->status:I

    if-ne v2, v6, :cond_4

    .line 268
    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 271
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current+++"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v4, v4, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->current:I

    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v3, v3, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 273
    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v2, v2, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v4, v4, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/index/android/MusicService;->prepareAndPlay(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/index/android/MusicService;->access$0(Lcom/index/android/MusicService;Ljava/lang/String;)V

    .line 276
    :cond_3
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v7, v2, Lcom/index/android/MusicService;->status:I

    goto/16 :goto_0

    .line 282
    :cond_4
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->status:I

    if-ne v2, v7, :cond_0

    .line 285
    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 287
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v6, v2, Lcom/index/android/MusicService;->status:I

    goto/16 :goto_0

    .line 292
    :pswitch_1
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->flag:I

    if-nez v2, :cond_7

    .line 294
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->current:I

    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v3, v3, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_6

    .line 296
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->current:I

    .line 306
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v2, v2, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v4, v4, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/index/android/MusicService;->prepareAndPlay(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/index/android/MusicService;->access$0(Lcom/index/android/MusicService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :cond_6
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v3, v2, Lcom/index/android/MusicService;->current:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/index/android/MusicService;->current:I

    goto :goto_1

    .line 302
    :cond_7
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->flag:I

    if-ne v2, v5, :cond_5

    .line 303
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v5, v5, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Lcom/index/android/MusicService;->current:I

    goto :goto_1

    .line 310
    :pswitch_2
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->flag:I

    if-nez v2, :cond_a

    .line 312
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->current:I

    if-lez v2, :cond_9

    .line 313
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v3, v2, Lcom/index/android/MusicService;->current:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/index/android/MusicService;->current:I

    .line 324
    :cond_8
    :goto_2
    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v2, v2, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v4, v4, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    #calls: Lcom/index/android/MusicService;->prepareAndPlay(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/index/android/MusicService;->access$0(Lcom/index/android/MusicService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :cond_9
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v3, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v3, v3, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/index/android/MusicService;->current:I

    goto :goto_2

    .line 320
    :cond_a
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->flag:I

    if-ne v2, v5, :cond_8

    .line 321
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iget-object v5, v5, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Lcom/index/android/MusicService;->current:I

    goto :goto_2

    .line 328
    :pswitch_3
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag:I

    .line 329
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag1:I

    .line 330
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag2:I

    .line 331
    sget v2, Lcom/index/android/MusicActivity;->CurrentPosition:I

    if-lez v2, :cond_b

    .line 333
    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/index/android/MusicActivity;->CurrentPosition:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 336
    :cond_b
    :pswitch_4
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag:I

    .line 337
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag1:I

    .line 338
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v5, v2, Lcom/index/android/MusicService;->flag2:I

    .line 340
    sget v2, Lcom/index/android/MusicActivity;->CurrentPosition:I

    if-lez v2, :cond_0

    .line 342
    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/index/android/MusicActivity;->CurrentPosition:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_0

    .line 347
    :pswitch_5
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag:I

    .line 348
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag2:I

    .line 349
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v5, v2, Lcom/index/android/MusicService;->flag1:I

    .line 352
    sget v2, Lcom/index/android/MusicActivity;->CurrentPosition:I

    if-lez v2, :cond_0

    .line 354
    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/index/android/MusicActivity;->CurrentPosition:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_0

    .line 359
    :pswitch_6
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v5, v2, Lcom/index/android/MusicService;->flag:I

    .line 360
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag1:I

    .line 361
    iget-object v2, p0, Lcom/index/android/MusicService$MyReceiver;->this$0:Lcom/index/android/MusicService;

    iput v4, v2, Lcom/index/android/MusicService;->flag2:I

    .line 364
    sget v2, Lcom/index/android/MusicActivity;->CurrentPosition:I

    if-lez v2, :cond_0

    .line 366
    sget-object v2, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/index/android/MusicActivity;->CurrentPosition:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto/16 :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
