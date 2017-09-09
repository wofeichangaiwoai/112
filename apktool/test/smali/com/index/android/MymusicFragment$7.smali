.class Lcom/index/android/MymusicFragment$7;
.super Ljava/lang/Object;
.source "MymusicFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/MymusicFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/index/android/MymusicFragment;


# direct methods
.method constructor <init>(Lcom/index/android/MymusicFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/MymusicFragment$7;->this$0:Lcom/index/android/MymusicFragment;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 183
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/index/android/MymusicFragment$7;->this$0:Lcom/index/android/MymusicFragment;

    invoke-virtual {v5}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f05001d

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    .line 184
    .local v4, vg:Landroid/support/v4/view/ViewPager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v3, musiccurrentlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/index/android/MymusicFragment$7;->this$0:Lcom/index/android/MymusicFragment;

    #getter for: Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/index/android/MymusicFragment;->access$1(Lcom/index/android/MymusicFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 194
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/index/android/MymusicFragment$7;->this$0:Lcom/index/android/MymusicFragment;

    invoke-virtual {v5}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-class v6, Lcom/index/android/MusicService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.jxutcm.music.MusicService"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    const-string v5, "current"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    const-string v5, "list"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 198
    const-string v5, "FLAG"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    iget-object v5, p0, Lcom/index/android/MymusicFragment$7;->this$0:Lcom/index/android/MymusicFragment;

    invoke-virtual {v5}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 204
    return-void

    .line 190
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/index/android/MymusicFragment$7;->this$0:Lcom/index/android/MymusicFragment;

    #getter for: Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/index/android/MymusicFragment;->access$1(Lcom/index/android/MymusicFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "guide5_musicid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, musiccurrent:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
