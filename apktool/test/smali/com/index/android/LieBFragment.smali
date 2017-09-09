.class public Lcom/index/android/LieBFragment;
.super Landroid/support/v4/app/Fragment;
.source "LieBFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/index/android/LieBFragment$ListViewAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/index/android/LieBFragment$ListViewAdapter;

.field db:Lcom/index/db/DB;

.field private handler:Landroid/os/Handler;

.field private loadMoreButton:Landroid/widget/Button;

.field private loadMoreView:Landroid/view/View;

.field lv:Landroid/widget/ListView;

.field private visibleItemCount:I

.field private visibleLastIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/index/android/LieBFragment;->visibleLastIndex:I

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/index/android/LieBFragment;->handler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/index/db/DB;

    invoke-direct {v0}, Lcom/index/db/DB;-><init>()V

    iput-object v0, p0, Lcom/index/android/LieBFragment;->db:Lcom/index/db/DB;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/index/android/LieBFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/index/android/LieBFragment;->loadMoreButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/index/android/LieBFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/index/android/LieBFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/index/android/LieBFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/index/android/LieBFragment;->loadData()V

    return-void
.end method

.method static synthetic access$3(Lcom/index/android/LieBFragment;)Lcom/index/android/LieBFragment$ListViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/index/android/LieBFragment;->adapter:Lcom/index/android/LieBFragment$ListViewAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/index/android/LieBFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/index/android/LieBFragment;->visibleLastIndex:I

    return v0
.end method

.method static synthetic access$5(Lcom/index/android/LieBFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/index/android/LieBFragment;->visibleItemCount:I

    return v0
.end method

.method private initAdapter()V
    .locals 8

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/index/android/MusicContact;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT * FROM RM_Recipe limit 0,"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/index/android/Constant;->musicitems:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, sql:Ljava/lang/String;
    iget-object v5, p0, Lcom/index/android/LieBFragment;->db:Lcom/index/db/DB;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/index/android/LieBFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/index/db/DB;->rawQueryData(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, records1:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 134
    new-instance v5, Lcom/index/android/LieBFragment$ListViewAdapter;

    invoke-direct {v5, p0, p0, v1}, Lcom/index/android/LieBFragment$ListViewAdapter;-><init>(Lcom/index/android/LieBFragment;Lcom/index/android/LieBFragment;Ljava/util/ArrayList;)V

    iput-object v5, p0, Lcom/index/android/LieBFragment;->adapter:Lcom/index/android/LieBFragment$ListViewAdapter;

    .line 135
    return-void

    .line 128
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 129
    .local v2, record1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/index/android/MusicContact;

    invoke-direct {v0}, Lcom/index/android/MusicContact;-><init>()V

    .line 130
    .local v0, item:Lcom/index/android/MusicContact;
    const-string v6, "cRecipeID"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/index/android/MusicContact;->setId(Ljava/lang/String;)V

    .line 131
    const-string v6, "vcRecipeName"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/index/android/MusicContact;->setName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadData()V
    .locals 8

    .prologue
    .line 139
    iget-object v5, p0, Lcom/index/android/LieBFragment;->adapter:Lcom/index/android/LieBFragment$ListViewAdapter;

    invoke-virtual {v5}, Lcom/index/android/LieBFragment$ListViewAdapter;->getCount()I

    move-result v0

    .line 142
    .local v0, count:I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SELECT * FROM RM_Recipe limit "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/index/android/Constant;->musicitems:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, sql:Ljava/lang/String;
    iget-object v5, p0, Lcom/index/android/LieBFragment;->db:Lcom/index/db/DB;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/index/android/LieBFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Lcom/index/db/DB;->rawQueryData(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 144
    .local v3, records2:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 162
    return-void

    .line 144
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 145
    .local v2, record2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/index/android/MusicContact;

    invoke-direct {v1}, Lcom/index/android/MusicContact;-><init>()V

    .line 146
    .local v1, item2:Lcom/index/android/MusicContact;
    const-string v6, "cRecipeID"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/index/android/MusicContact;->setId(Ljava/lang/String;)V

    .line 147
    const-string v6, "vcRecipeName"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/index/android/MusicContact;->setName(Ljava/lang/String;)V

    .line 148
    iget-object v6, p0, Lcom/index/android/LieBFragment;->adapter:Lcom/index/android/LieBFragment$ListViewAdapter;

    invoke-virtual {v6, v1}, Lcom/index/android/LieBFragment$ListViewAdapter;->addItem(Lcom/index/android/MusicContact;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 64
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, rootView:Landroid/view/View;
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/index/android/LieBFragment;->loadMoreView:Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/index/android/LieBFragment;->loadMoreView:Landroid/view/View;

    const v2, 0x7f050017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/index/android/LieBFragment;->loadMoreButton:Landroid/widget/Button;

    .line 68
    iget-object v1, p0, Lcom/index/android/LieBFragment;->loadMoreButton:Landroid/widget/Button;

    new-instance v2, Lcom/index/android/LieBFragment$1;

    invoke-direct {v2, p0}, Lcom/index/android/LieBFragment$1;-><init>(Lcom/index/android/LieBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/index/android/LieBFragment;->lv:Landroid/widget/ListView;

    .line 88
    iget-object v1, p0, Lcom/index/android/LieBFragment;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/index/android/LieBFragment;->loadMoreView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 97
    invoke-direct {p0}, Lcom/index/android/LieBFragment;->initAdapter()V

    .line 98
    iget-object v1, p0, Lcom/index/android/LieBFragment;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/index/android/LieBFragment;->adapter:Lcom/index/android/LieBFragment$ListViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    iget-object v1, p0, Lcom/index/android/LieBFragment;->lv:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 100
    iget-object v1, p0, Lcom/index/android/LieBFragment;->lv:Landroid/widget/ListView;

    new-instance v2, Lcom/index/android/LieBFragment$2;

    invoke-direct {v2, p0}, Lcom/index/android/LieBFragment$2;-><init>(Lcom/index/android/LieBFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 211
    iput p3, p0, Lcom/index/android/LieBFragment;->visibleItemCount:I

    .line 212
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/index/android/LieBFragment;->visibleLastIndex:I

    .line 213
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 218
    iget-object v2, p0, Lcom/index/android/LieBFragment;->adapter:Lcom/index/android/LieBFragment$ListViewAdapter;

    invoke-virtual {v2}, Lcom/index/android/LieBFragment$ListViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 219
    .local v0, itemsLastIndex:I
    add-int/lit8 v1, v0, 0x1

    .line 220
    .local v1, lastIndex:I
    if-nez p2, :cond_0

    iget v2, p0, Lcom/index/android/LieBFragment;->visibleLastIndex:I

    if-ne v2, v1, :cond_0

    .line 222
    const-string v2, "LOADMORE"

    const-string v3, "loading..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    return-void
.end method
