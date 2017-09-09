.class public Lcom/index/android/RecommendFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/index/android/RecommendFragment$ListViewAdapter;
    }
.end annotation


# instance fields
.field private adapter:Landroid/widget/ListAdapter;

.field db:Lcom/index/db/DB;

.field recommend_lv:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    new-instance v0, Lcom/index/db/DB;

    invoke-direct {v0}, Lcom/index/db/DB;-><init>()V

    iput-object v0, p0, Lcom/index/android/RecommendFragment;->db:Lcom/index/db/DB;

    .line 27
    return-void
.end method

.method private initAdapter(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, records1:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/index/android/MusicContact;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    new-instance v3, Lcom/index/android/RecommendFragment$ListViewAdapter;

    invoke-direct {v3, p0, p0, v1}, Lcom/index/android/RecommendFragment$ListViewAdapter;-><init>(Lcom/index/android/RecommendFragment;Lcom/index/android/RecommendFragment;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/index/android/RecommendFragment;->adapter:Landroid/widget/ListAdapter;

    .line 85
    return-void

    .line 77
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 78
    .local v2, record1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/index/android/MusicContact;

    invoke-direct {v0}, Lcom/index/android/MusicContact;-><init>()V

    .line 79
    .local v0, item:Lcom/index/android/MusicContact;
    const-string v4, "cRecipeID"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/index/android/MusicContact;->setId(Ljava/lang/String;)V

    .line 80
    const-string v4, "vcRecipeName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/index/android/MusicContact;->setName(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 37
    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 38
    .local v4, view:Landroid/view/View;
    const v5, 0x7f05000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/index/android/RecommendFragment;->recommend_lv:Landroid/widget/ListView;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v1, musiccurrentlist1:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "SELECT * FROM RM_Recipe limit 0,10"

    .line 43
    .local v3, sql:Ljava/lang/String;
    iget-object v5, p0, Lcom/index/android/RecommendFragment;->db:Lcom/index/db/DB;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/index/android/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v3, v6, v7}, Lcom/index/db/DB;->rawQueryData(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 44
    .local v2, records1:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0, v2}, Lcom/index/android/RecommendFragment;->initAdapter(Ljava/util/List;)V

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 48
    iget-object v5, p0, Lcom/index/android/RecommendFragment;->recommend_lv:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/index/android/RecommendFragment;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    iget-object v5, p0, Lcom/index/android/RecommendFragment;->recommend_lv:Landroid/widget/ListView;

    new-instance v6, Lcom/index/android/RecommendFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/index/android/RecommendFragment$1;-><init>(Lcom/index/android/RecommendFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    return-object v4

    .line 46
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "cRecipeID"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
