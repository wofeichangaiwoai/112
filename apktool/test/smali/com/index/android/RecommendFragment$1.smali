.class Lcom/index/android/RecommendFragment$1;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/RecommendFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/RecommendFragment;

.field private final synthetic val$musiccurrentlist1:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/index/android/RecommendFragment;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/RecommendFragment$1;->this$0:Lcom/index/android/RecommendFragment;

    iput-object p2, p0, Lcom/index/android/RecommendFragment$1;->val$musiccurrentlist1:Ljava/util/ArrayList;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move v0, p3

    .line 56
    .local v0, current:I
    iget-object v3, p0, Lcom/index/android/RecommendFragment$1;->this$0:Lcom/index/android/RecommendFragment;

    invoke-virtual {v3}, Lcom/index/android/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f05001d

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 57
    .local v2, vg:Landroid/support/v4/view/ViewPager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 59
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/index/android/RecommendFragment$1;->this$0:Lcom/index/android/RecommendFragment;

    invoke-virtual {v3}, Lcom/index/android/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/index/android/MusicService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.jxutcm.music.MusicService"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v3, "current"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v3, "FLAG"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v3, "list"

    iget-object v4, p0, Lcom/index/android/RecommendFragment$1;->val$musiccurrentlist1:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 64
    iget-object v3, p0, Lcom/index/android/RecommendFragment$1;->this$0:Lcom/index/android/RecommendFragment;

    invoke-virtual {v3}, Lcom/index/android/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    return-void
.end method
