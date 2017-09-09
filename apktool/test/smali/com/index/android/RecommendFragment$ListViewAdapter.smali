.class public Lcom/index/android/RecommendFragment$ListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListViewAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/index/android/MusicContact;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/index/android/RecommendFragment;


# direct methods
.method public constructor <init>(Lcom/index/android/RecommendFragment;Lcom/index/android/RecommendFragment;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter "rFragment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/index/android/RecommendFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/index/android/MusicContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p3, items2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/index/android/MusicContact;>;"
    iput-object p1, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->this$0:Lcom/index/android/RecommendFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    iput-object p3, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->items:Ljava/util/List;

    .line 93
    invoke-virtual {p2}, Lcom/index/android/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 94
    return-void
.end method


# virtual methods
.method public addItem(Lcom/index/android/MusicContact;)V
    .locals 1
    .parameter "musiccontact"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 116
    const v2, 0x7f050007

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/index/android/MusicContact;

    invoke-virtual {v2}, Lcom/index/android/MusicContact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v2, 0x7f050006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 119
    .local v1, text1:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/index/android/RecommendFragment$ListViewAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/index/android/MusicContact;

    invoke-virtual {v2}, Lcom/index/android/MusicContact;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-object p2
.end method
