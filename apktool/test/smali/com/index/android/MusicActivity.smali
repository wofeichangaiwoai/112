.class public Lcom/index/android/MusicActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/index/android/MusicActivity$ActivityReceiver;,
        Lcom/index/android/MusicActivity$MyOnPageChangeListener;,
        Lcom/index/android/MusicActivity$ProcessBarListener;,
        Lcom/index/android/MusicActivity$SeekBarListener;,
        Lcom/index/android/MusicActivity$txListener;
    }
.end annotation


# static fields
.field public static final CTL_ACTION:Ljava/lang/String; = "org.crazyit.action.CTL_ACTION"

.field static CurrentPosition:I = 0x0

.field static ProceseekBar2:Landroid/widget/SeekBar; = null

.field public static final UPDATE_ACTION:Ljava/lang/String; = "org.crazyit.action.UPDATE_ACTION"

.field static am:Landroid/content/res/AssetManager;

.field static handler:Landroid/os/Handler;

.field static mMax:I

.field static mPager:Landroid/support/v4/view/ViewPager;

.field static r:Ljava/lang/Runnable;


# instance fields
.field private INTERVAL:I

.field SoundseekBar:Landroid/widget/SeekBar;

.field activityReceiver:Lcom/index/android/MusicActivity$ActivityReceiver;

.field audioManager:Landroid/media/AudioManager;

.field private bmpW:I

.field btFragment:Landroid/support/v4/app/Fragment;

.field private currIndex:I

.field private exitTime:J

.field find:Landroid/widget/ImageButton;

.field flag:Z

.field private fragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field list1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private music_title_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field musicservice:Lcom/index/android/MusicService;

.field next:Landroid/widget/ImageButton;

.field private offset:I

.field play:Landroid/widget/ImageButton;

.field pre:Landroid/widget/ImageButton;

.field sp:Landroid/widget/Spinner;

.field status:I

.field private title:Landroid/widget/TextView;

.field private view1:Landroid/widget/TextView;

.field private view2:Landroid/widget/TextView;

.field private view3:Landroid/widget/TextView;

.field private view4:Landroid/widget/TextView;

.field voice:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/index/android/MusicActivity;->handler:Landroid/os/Handler;

    .line 299
    new-instance v0, Lcom/index/android/MusicActivity$1;

    invoke-direct {v0}, Lcom/index/android/MusicActivity$1;-><init>()V

    sput-object v0, Lcom/index/android/MusicActivity;->r:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/MusicActivity;->music_title_list:Ljava/util/ArrayList;

    .line 69
    const/16 v0, 0x11

    iput v0, p0, Lcom/index/android/MusicActivity;->status:I

    .line 77
    const/16 v0, 0x2d

    iput v0, p0, Lcom/index/android/MusicActivity;->INTERVAL:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/MusicActivity;->list1:Ljava/util/ArrayList;

    .line 378
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/index/android/MusicActivity;->exitTime:J

    .line 46
    return-void
.end method

.method public static ShowTime(I)Ljava/lang/String;
    .locals 7
    .parameter "time"

    .prologue
    .line 288
    div-int/lit16 p0, p0, 0x3e8

    .line 289
    div-int/lit8 v1, p0, 0x3c

    .line 290
    .local v1, minute:I
    div-int/lit8 v0, v1, 0x3c

    .line 291
    .local v0, hour:I
    rem-int/lit8 v2, p0, 0x3c

    .line 292
    .local v2, second:I
    rem-int/lit8 v1, v1, 0x3c

    .line 293
    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static StrartbarUpdate()V
    .locals 2

    .prologue
    .line 297
    sget-object v0, Lcom/index/android/MusicActivity;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/index/android/MusicActivity;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void
.end method

.method static synthetic access$0(Lcom/index/android/MusicActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/index/android/MusicActivity;->offset:I

    return v0
.end method

.method static synthetic access$1(Lcom/index/android/MusicActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lcom/index/android/MusicActivity;->bmpW:I

    return v0
.end method

.method static synthetic access$2(Lcom/index/android/MusicActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/index/android/MusicActivity;->currIndex:I

    return v0
.end method

.method static synthetic access$3(Lcom/index/android/MusicActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/index/android/MusicActivity;->currIndex:I

    return-void
.end method

.method static synthetic access$4(Lcom/index/android/MusicActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/index/android/MusicActivity;->INTERVAL:I

    return v0
.end method

.method static synthetic access$5(Lcom/index/android/MusicActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/index/android/MusicActivity;->title:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public InitTextView()V
    .locals 3

    .prologue
    .line 149
    const v0, 0x7f050019

    invoke-virtual {p0, v0}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/index/android/MusicActivity;->view1:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/index/android/MusicActivity;->view2:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/index/android/MusicActivity;->view3:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/index/android/MusicActivity;->view4:Landroid/widget/TextView;

    .line 153
    iget-object v0, p0, Lcom/index/android/MusicActivity;->view1:Landroid/widget/TextView;

    new-instance v1, Lcom/index/android/MusicActivity$txListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/index/android/MusicActivity$txListener;-><init>(Lcom/index/android/MusicActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/index/android/MusicActivity;->view2:Landroid/widget/TextView;

    new-instance v1, Lcom/index/android/MusicActivity$txListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/index/android/MusicActivity$txListener;-><init>(Lcom/index/android/MusicActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/index/android/MusicActivity;->view3:Landroid/widget/TextView;

    new-instance v1, Lcom/index/android/MusicActivity$txListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/index/android/MusicActivity$txListener;-><init>(Lcom/index/android/MusicActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/index/android/MusicActivity;->view4:Landroid/widget/TextView;

    new-instance v1, Lcom/index/android/MusicActivity$txListener;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/index/android/MusicActivity$txListener;-><init>(Lcom/index/android/MusicActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void
.end method

.method public InitViewPager()V
    .locals 7

    .prologue
    .line 190
    const v3, 0x7f05001d

    invoke-virtual {p0, v3}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    sput-object v3, Lcom/index/android/MusicActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/index/android/MusicActivity;->fragmentList:Ljava/util/ArrayList;

    .line 192
    new-instance v3, Lcom/index/android/ButtonFragment;

    invoke-direct {v3}, Lcom/index/android/ButtonFragment;-><init>()V

    iput-object v3, p0, Lcom/index/android/MusicActivity;->btFragment:Landroid/support/v4/app/Fragment;

    .line 193
    new-instance v0, Lcom/index/android/LieBFragment;

    invoke-direct {v0}, Lcom/index/android/LieBFragment;-><init>()V

    .line 195
    .local v0, fourthFragment:Landroid/support/v4/app/Fragment;
    new-instance v1, Lcom/index/android/MymusicFragment;

    invoke-direct {v1}, Lcom/index/android/MymusicFragment;-><init>()V

    .line 196
    .local v1, mymusic_fragment:Landroid/support/v4/app/Fragment;
    new-instance v2, Lcom/index/android/RecommendFragment;

    invoke-direct {v2}, Lcom/index/android/RecommendFragment;-><init>()V

    .line 199
    .local v2, recommend_fragment:Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Lcom/index/android/MusicActivity;->fragmentList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/index/android/MusicActivity;->btFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v3, p0, Lcom/index/android/MusicActivity;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v3, p0, Lcom/index/android/MusicActivity;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v3, p0, Lcom/index/android/MusicActivity;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v3, Lcom/index/android/MusicActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/index/android/MyFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/index/android/MusicActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    .line 208
    iget-object v6, p0, Lcom/index/android/MusicActivity;->fragmentList:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6}, Lcom/index/android/MyFragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    .line 207
    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 209
    sget-object v3, Lcom/index/android/MusicActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 210
    sget-object v3, Lcom/index/android/MusicActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/index/android/MusicActivity$MyOnPageChangeListener;

    invoke-direct {v4, p0}, Lcom/index/android/MusicActivity$MyOnPageChangeListener;-><init>(Lcom/index/android/MusicActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 211
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "source"

    .prologue
    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "org.crazyit.action.CTL_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 414
    :goto_0
    invoke-virtual {p0, v0}, Lcom/index/android/MusicActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 415
    return-void

    .line 405
    :pswitch_0
    const-string v1, "control"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 408
    :pswitch_1
    const-string v1, "control"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 411
    :pswitch_2
    const-string v1, "control"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x7f050023
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v6, 0x7f03000b

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/index/android/MusicActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    sput-object v6, Lcom/index/android/MusicActivity;->am:Landroid/content/res/AssetManager;

    .line 84
    invoke-virtual {p0}, Lcom/index/android/MusicActivity;->InitTextView()V

    .line 86
    invoke-virtual {p0}, Lcom/index/android/MusicActivity;->InitViewPager()V

    .line 87
    const v6, 0x7f050024

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/index/android/MusicActivity;->play:Landroid/widget/ImageButton;

    .line 88
    iget-object v6, p0, Lcom/index/android/MusicActivity;->play:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    const/4 v6, 0x4

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "\u5217\u8868\u5faa\u73af"

    aput-object v6, v5, v8

    const-string v6, "\u987a\u5e8f\u64ad\u653e"

    aput-object v6, v5, v10

    const/4 v6, 0x2

    const-string v7, "\u5355\u66f2\u64ad\u653e"

    aput-object v7, v5, v6

    const-string v6, "\u968f\u673a\u64ad\u653e"

    aput-object v6, v5, v9

    .line 91
    .local v5, items:[Ljava/lang/String;
    const v6, 0x7f050022

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/index/android/MusicActivity;->sp:Landroid/widget/Spinner;

    .line 92
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v1, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 93
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/index/android/MusicActivity;->sp:Landroid/widget/Spinner;

    invoke-virtual {v6, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    iget-object v6, p0, Lcom/index/android/MusicActivity;->sp:Landroid/widget/Spinner;

    const-string v7, "\u8bf7\u9009\u62e9\u64ad\u653e\u65b9\u5f0f"

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v6, p0, Lcom/index/android/MusicActivity;->sp:Landroid/widget/Spinner;

    new-instance v7, Lcom/index/android/MusicActivity$2;

    invoke-direct {v7, p0}, Lcom/index/android/MusicActivity$2;-><init>(Lcom/index/android/MusicActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 115
    const v6, 0x7f050025

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/index/android/MusicActivity;->next:Landroid/widget/ImageButton;

    .line 116
    const v6, 0x7f050023

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/index/android/MusicActivity;->pre:Landroid/widget/ImageButton;

    .line 117
    const v6, 0x7f05001e

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/index/android/MusicActivity;->find:Landroid/widget/ImageButton;

    .line 119
    iget-object v6, p0, Lcom/index/android/MusicActivity;->find:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 120
    iget-object v6, p0, Lcom/index/android/MusicActivity;->pre:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 121
    iget-object v6, p0, Lcom/index/android/MusicActivity;->next:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 124
    iget-object v6, p0, Lcom/index/android/MusicActivity;->play:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v6, p0, Lcom/index/android/MusicActivity;->next:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v6, p0, Lcom/index/android/MusicActivity;->pre:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v6, 0x7f05001f

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/index/android/MusicActivity;->title:Landroid/widget/TextView;

    .line 129
    new-instance v6, Lcom/index/android/MusicActivity$ActivityReceiver;

    invoke-direct {v6, p0}, Lcom/index/android/MusicActivity$ActivityReceiver;-><init>(Lcom/index/android/MusicActivity;)V

    iput-object v6, p0, Lcom/index/android/MusicActivity;->activityReceiver:Lcom/index/android/MusicActivity$ActivityReceiver;

    .line 130
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v6, "org.crazyit.action.UPDATE_ACTION"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v6, p0, Lcom/index/android/MusicActivity;->activityReceiver:Lcom/index/android/MusicActivity$ActivityReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/index/android/MusicActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/index/android/MusicService;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "FLAG"

    invoke-virtual {v4, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v4}, Lcom/index/android/MusicActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 137
    const v6, 0x7f050020

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    sput-object v6, Lcom/index/android/MusicActivity;->ProceseekBar2:Landroid/widget/SeekBar;

    .line 138
    const v6, 0x7f050026

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/index/android/MusicActivity;->SoundseekBar:Landroid/widget/SeekBar;

    .line 139
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/index/android/MusicActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/index/android/MusicActivity;->audioManager:Landroid/media/AudioManager;

    .line 140
    iget-object v6, p0, Lcom/index/android/MusicActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 141
    .local v0, MaxSound:I
    iget-object v6, p0, Lcom/index/android/MusicActivity;->SoundseekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 142
    iget-object v6, p0, Lcom/index/android/MusicActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 143
    .local v2, currentSount:I
    iget-object v6, p0, Lcom/index/android/MusicActivity;->SoundseekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 144
    iget-object v6, p0, Lcom/index/android/MusicActivity;->SoundseekBar:Landroid/widget/SeekBar;

    new-instance v7, Lcom/index/android/MusicActivity$SeekBarListener;

    invoke-direct {v7, p0}, Lcom/index/android/MusicActivity$SeekBarListener;-><init>(Lcom/index/android/MusicActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 145
    sget-object v6, Lcom/index/android/MusicActivity;->ProceseekBar2:Landroid/widget/SeekBar;

    new-instance v7, Lcom/index/android/MusicActivity$ProcessBarListener;

    invoke-direct {v7, p0}, Lcom/index/android/MusicActivity$ProcessBarListener;-><init>(Lcom/index/android/MusicActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/index/android/MusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 426
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/index/android/MusicActivity;->stopService(Landroid/content/Intent;)Z

    .line 427
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 428
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 382
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/index/android/MusicActivity;->exitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/index/android/MusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u7a0b\u5e8f"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/index/android/MusicActivity;->exitTime:J

    .line 393
    :goto_0
    const/4 v0, 0x1

    .line 395
    :goto_1
    return v0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/index/android/MusicActivity;->finish()V

    .line 391
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 395
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/index/android/MusicActivity;->activityReceiver:Lcom/index/android/MusicActivity$ActivityReceiver;

    invoke-virtual {p0, v0}, Lcom/index/android/MusicActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 421
    return-void
.end method
