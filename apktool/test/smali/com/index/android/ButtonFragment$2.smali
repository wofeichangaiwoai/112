.class Lcom/index/android/ButtonFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/ButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/ButtonFragment;


# direct methods
.method constructor <init>(Lcom/index/android/ButtonFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/ButtonFragment$2;->this$0:Lcom/index/android/ButtonFragment;

    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 64
    const-string v5, "i"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, i:I
    const-string v5, "current"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/index/android/ButtonFragment;->current:I

    .line 66
    const-string v5, "list"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 68
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/index/android/ButtonFragment$2;->this$0:Lcom/index/android/ButtonFragment;

    invoke-virtual {v5, v2, v4}, Lcom/index/android/ButtonFragment;->getlrc(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 71
    .local v0, arrayList2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    sget-object v6, Lcom/index/android/MusicActivity;->am:Landroid/content/res/AssetManager;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v5, "Music/"

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/index/android/ButtonFragment;->current:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 73
    .local v3, in:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/index/android/LyricView1;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v3           #in:Ljava/io/InputStream;
    :goto_0
    sget-object v5, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    invoke-virtual {v5}, Lcom/index/android/LyricView1;->SetTextSize()V

    .line 83
    sget-object v5, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    const/high16 v6, 0x43af

    invoke-virtual {v5, v6}, Lcom/index/android/LyricView1;->setOffsetY(F)V

    .line 84
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 76
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
