.class public Lcom/index/android/MymusicFragment$MusicAdapter;
.super Landroid/widget/BaseAdapter;
.source "MymusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/MymusicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private musiclist:Ljava/util/ArrayList;
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

.field final synthetic this$0:Lcom/index/android/MymusicFragment;


# direct methods
.method public constructor <init>(Lcom/index/android/MymusicFragment;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p3, musiclist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/index/android/MymusicFragment$MusicAdapter;->this$0:Lcom/index/android/MymusicFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 356
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/index/android/MymusicFragment$MusicAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 357
    iput-object p3, p0, Lcom/index/android/MymusicFragment$MusicAdapter;->musiclist:Ljava/util/ArrayList;

    .line 358
    return-void
.end method

.method static synthetic access$0(Lcom/index/android/MymusicFragment$MusicAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/index/android/MymusicFragment$MusicAdapter;->musiclist:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/index/android/MymusicFragment$MusicAdapter;->musiclist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 369
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 374
    move v1, p1

    .line 376
    .local v1, lPosition:I
    iget-object v5, p0, Lcom/index/android/MymusicFragment$MusicAdapter;->musiclist:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 378
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/index/android/MymusicFragment$ViewHolderMusic1;

    iget-object v5, p0, Lcom/index/android/MymusicFragment$MusicAdapter;->this$0:Lcom/index/android/MymusicFragment;

    invoke-direct {v0, v5}, Lcom/index/android/MymusicFragment$ViewHolderMusic1;-><init>(Lcom/index/android/MymusicFragment;)V

    .line 379
    .local v0, holder:Lcom/index/android/MymusicFragment$ViewHolderMusic1;
    iget-object v5, p0, Lcom/index/android/MymusicFragment$MusicAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 380
    const v5, 0x7f050004

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v0, Lcom/index/android/MymusicFragment$ViewHolderMusic1;->ListCheckBoxId:Landroid/widget/CheckBox;

    .line 381
    const v5, 0x7f050005

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/index/android/MymusicFragment$ViewHolderMusic1;->dialog_listinfo:Landroid/widget/TextView;

    .line 382
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 383
    const-string v5, "D_MusicName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 398
    .local v3, lv_MusicName:Ljava/lang/String;
    iget-object v5, v0, Lcom/index/android/MymusicFragment$ViewHolderMusic1;->dialog_listinfo:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const-string v5, "D_CHK"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 401
    .local v2, lsChk:Ljava/lang/String;
    iget-object v6, v0, Lcom/index/android/MymusicFragment$ViewHolderMusic1;->ListCheckBoxId:Landroid/widget/CheckBox;

    const-string v5, "1"

    if-ne v2, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 403
    iget-object v5, v0, Lcom/index/android/MymusicFragment$ViewHolderMusic1;->ListCheckBoxId:Landroid/widget/CheckBox;

    new-instance v6, Lcom/index/android/MymusicFragment$MusicAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/index/android/MymusicFragment$MusicAdapter$1;-><init>(Lcom/index/android/MymusicFragment$MusicAdapter;I)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 415
    return-object p2

    .line 401
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
