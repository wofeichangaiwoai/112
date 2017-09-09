.class public Lcom/index/android/ButtonFragment;
.super Landroid/support/v4/app/Fragment;
.source "ButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/index/android/ButtonFragment$runable;
    }
.end annotation


# static fields
.field static current:I

.field static lrcView:Lcom/index/android/LyricView1;


# instance fields
.field ActivityReceiver:Landroid/content/BroadcastReceiver;

.field ActivityReceiver2:Landroid/content/BroadcastReceiver;

.field private currentTime:I

.field private duration:I

.field i:I

.field private index:I

.field private lrcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/index/android/LrcContent;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mUpdateResults:Ljava/lang/Runnable;

.field myButton:Landroid/widget/Button;

.field name1:Ljava/lang/String;

.field tv3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/index/android/ButtonFragment;->current:I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/ButtonFragment;->lrcList:Ljava/util/List;

    .line 46
    iput v1, p0, Lcom/index/android/ButtonFragment;->index:I

    .line 47
    iput v1, p0, Lcom/index/android/ButtonFragment;->currentTime:I

    .line 48
    iput v1, p0, Lcom/index/android/ButtonFragment;->duration:I

    .line 51
    iput v1, p0, Lcom/index/android/ButtonFragment;->i:I

    .line 188
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/index/android/ButtonFragment;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance v0, Lcom/index/android/ButtonFragment$1;

    invoke-direct {v0, p0}, Lcom/index/android/ButtonFragment$1;-><init>(Lcom/index/android/ButtonFragment;)V

    iput-object v0, p0, Lcom/index/android/ButtonFragment;->mUpdateResults:Ljava/lang/Runnable;

    .line 35
    return-void
.end method


# virtual methods
.method public getlrc(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
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
    .line 209
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 211
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    sget-object v10, Lcom/index/android/MusicActivity;->am:Landroid/content/res/AssetManager;

    const-string v11, "Music"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, fs:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    :try_start_1
    array-length v10, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-lt v8, v10, :cond_0

    move-object v0, v1

    .line 242
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #fs:[Ljava/lang/String;
    .end local v8           #i:I
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v3, array2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v8, v10, :cond_4

    .line 249
    new-instance v10, Lcom/index/android/ButtonFragment$3;

    invoke-direct {v10, p0}, Lcom/index/android/ButtonFragment$3;-><init>(Lcom/index/android/ButtonFragment;)V

    invoke-static {v3, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v5, array4:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v8, v10, :cond_5

    .line 273
    return-object v5

    .line 216
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #array2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #array4:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #fs:[Ljava/lang/String;
    :cond_0
    const/4 v10, 0x1

    if-ne p1, v10, :cond_2

    .line 217
    :try_start_2
    aget-object v10, v7, v8

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 221
    :cond_2
    if-eqz p2, :cond_1

    .line 224
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 225
    aget-object v11, v7, v8

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 227
    aget-object v10, v7, v8

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 234
    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #fs:[Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #j:I
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 236
    .local v6, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 245
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #array2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8       #i:I
    :cond_4
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, array1:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 268
    .end local v2           #array1:Ljava/lang/String;
    .restart local v5       #array4:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".lrc"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, array3:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 234
    .end local v0           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #array2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #array3:Ljava/lang/String;
    .end local v5           #array4:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #fs:[Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v0, v1

    .end local v1           #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v0       #array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    iget v1, p0, Lcom/index/android/ButtonFragment;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/index/android/ButtonFragment;->i:I

    .line 59
    new-instance v1, Lcom/index/android/ButtonFragment$2;

    invoke-direct {v1, p0}, Lcom/index/android/ButtonFragment$2;-><init>(Lcom/index/android/ButtonFragment;)V

    iput-object v1, p0, Lcom/index/android/ButtonFragment;->ActivityReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v0, filter2:Landroid/content/IntentFilter;
    const-string v1, "org.crazyit.action.UPDATE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/index/android/ButtonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/index/android/ButtonFragment;->ActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/index/android/ButtonFragment$runable;

    invoke-direct {v2, p0}, Lcom/index/android/ButtonFragment$runable;-><init>(Lcom/index/android/ButtonFragment;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 114
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 121
    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f050018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/index/android/LyricView1;

    sput-object v1, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    .line 159
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/index/android/ButtonFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/index/android/ButtonFragment;->ActivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 352
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 353
    return-void
.end method
