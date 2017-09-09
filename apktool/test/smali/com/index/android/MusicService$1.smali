.class Lcom/index/android/MusicService$1;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/MusicService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/MusicService;


# direct methods
.method constructor <init>(Lcom/index/android/MusicService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v1, v1, Lcom/index/android/MusicService;->flag1:I

    if-nez v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget-object v2, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget-object v2, v2, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v3, v3, Lcom/index/android/MusicService;->flag:I

    iget-object v4, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v4, v4, Lcom/index/android/MusicService;->flag2:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/index/android/MusicService;->next(Ljava/util/ArrayList;II)V

    .line 71
    iget-object v1, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v1, v1, Lcom/index/android/MusicService;->current:I

    iget-object v2, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget-object v2, v2, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 74
    sget-object v1, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    invoke-virtual {v1}, Lcom/index/android/LyricView1;->SetTextSize()V

    .line 75
    sget-object v1, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    const/high16 v2, 0x4348

    invoke-virtual {v1, v2}, Lcom/index/android/LyricView1;->setOffsetY(F)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.crazyit.action.UPDATE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "current"

    iget-object v2, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v1, "update"

    iget-object v2, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->status:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v1, "i"

    iget-object v2, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v2, v2, Lcom/index/android/MusicService;->msg:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const-string v1, "list"

    iget-object v2, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget-object v2, v2, Lcom/index/android/MusicService;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    invoke-virtual {v1, v0}, Lcom/index/android/MusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    iget-object v2, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget-object v1, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget-object v1, v1, Lcom/index/android/MusicService;->arrayList2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v3, v3, Lcom/index/android/MusicService;->current:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Lcom/index/android/MusicService;->prepareAndPlay(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/index/android/MusicService;->access$0(Lcom/index/android/MusicService;Ljava/lang/String;)V

    .line 100
    .end local v0           #sendIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/index/android/MusicService$1;->this$0:Lcom/index/android/MusicService;

    iget v1, v1, Lcom/index/android/MusicService;->flag1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 96
    sget-object v1, Lcom/index/android/MusicService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method
