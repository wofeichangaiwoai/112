.class Lcom/index/android/MymusicFragment$MusicAdapter$1;
.super Ljava/lang/Object;
.source "MymusicFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/MymusicFragment$MusicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/index/android/MymusicFragment$MusicAdapter;

.field private final synthetic val$lPosition:I


# direct methods
.method constructor <init>(Lcom/index/android/MymusicFragment$MusicAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/MymusicFragment$MusicAdapter$1;->this$1:Lcom/index/android/MymusicFragment$MusicAdapter;

    iput p2, p0, Lcom/index/android/MymusicFragment$MusicAdapter$1;->val$lPosition:I

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 407
    iget-object v1, p0, Lcom/index/android/MymusicFragment$MusicAdapter$1;->this$1:Lcom/index/android/MymusicFragment$MusicAdapter;

    #getter for: Lcom/index/android/MymusicFragment$MusicAdapter;->musiclist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/index/android/MymusicFragment$MusicAdapter;->access$0(Lcom/index/android/MymusicFragment$MusicAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/index/android/MymusicFragment$MusicAdapter$1;->val$lPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 408
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "D_CHK"

    if-eqz p2, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v1, p0, Lcom/index/android/MymusicFragment$MusicAdapter$1;->this$1:Lcom/index/android/MymusicFragment$MusicAdapter;

    #getter for: Lcom/index/android/MymusicFragment$MusicAdapter;->musiclist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/index/android/MymusicFragment$MusicAdapter;->access$0(Lcom/index/android/MymusicFragment$MusicAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/index/android/MymusicFragment$MusicAdapter$1;->val$lPosition:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-void

    .line 408
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method
