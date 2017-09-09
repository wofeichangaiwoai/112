.class Lcom/index/android/LieBFragment$1$1;
.super Ljava/lang/Object;
.source "LieBFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/LieBFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/index/android/LieBFragment$1;


# direct methods
.method constructor <init>(Lcom/index/android/LieBFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/LieBFragment$1$1;->this$1:Lcom/index/android/LieBFragment$1;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/index/android/LieBFragment$1$1;->this$1:Lcom/index/android/LieBFragment$1;

    #getter for: Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;
    invoke-static {v0}, Lcom/index/android/LieBFragment$1;->access$0(Lcom/index/android/LieBFragment$1;)Lcom/index/android/LieBFragment;

    move-result-object v0

    #calls: Lcom/index/android/LieBFragment;->loadData()V
    invoke-static {v0}, Lcom/index/android/LieBFragment;->access$2(Lcom/index/android/LieBFragment;)V

    .line 79
    iget-object v0, p0, Lcom/index/android/LieBFragment$1$1;->this$1:Lcom/index/android/LieBFragment$1;

    #getter for: Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;
    invoke-static {v0}, Lcom/index/android/LieBFragment$1;->access$0(Lcom/index/android/LieBFragment$1;)Lcom/index/android/LieBFragment;

    move-result-object v0

    #getter for: Lcom/index/android/LieBFragment;->adapter:Lcom/index/android/LieBFragment$ListViewAdapter;
    invoke-static {v0}, Lcom/index/android/LieBFragment;->access$3(Lcom/index/android/LieBFragment;)Lcom/index/android/LieBFragment$ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/index/android/LieBFragment$ListViewAdapter;->notifyDataSetChanged()V

    .line 80
    iget-object v0, p0, Lcom/index/android/LieBFragment$1$1;->this$1:Lcom/index/android/LieBFragment$1;

    #getter for: Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;
    invoke-static {v0}, Lcom/index/android/LieBFragment$1;->access$0(Lcom/index/android/LieBFragment$1;)Lcom/index/android/LieBFragment;

    move-result-object v0

    iget-object v0, v0, Lcom/index/android/LieBFragment;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/index/android/LieBFragment$1$1;->this$1:Lcom/index/android/LieBFragment$1;

    #getter for: Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;
    invoke-static {v1}, Lcom/index/android/LieBFragment$1;->access$0(Lcom/index/android/LieBFragment$1;)Lcom/index/android/LieBFragment;

    move-result-object v1

    #getter for: Lcom/index/android/LieBFragment;->visibleLastIndex:I
    invoke-static {v1}, Lcom/index/android/LieBFragment;->access$4(Lcom/index/android/LieBFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/index/android/LieBFragment$1$1;->this$1:Lcom/index/android/LieBFragment$1;

    #getter for: Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;
    invoke-static {v2}, Lcom/index/android/LieBFragment$1;->access$0(Lcom/index/android/LieBFragment$1;)Lcom/index/android/LieBFragment;

    move-result-object v2

    #getter for: Lcom/index/android/LieBFragment;->visibleItemCount:I
    invoke-static {v2}, Lcom/index/android/LieBFragment;->access$5(Lcom/index/android/LieBFragment;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 81
    iget-object v0, p0, Lcom/index/android/LieBFragment$1$1;->this$1:Lcom/index/android/LieBFragment$1;

    #getter for: Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;
    invoke-static {v0}, Lcom/index/android/LieBFragment$1;->access$0(Lcom/index/android/LieBFragment$1;)Lcom/index/android/LieBFragment;

    move-result-object v0

    #getter for: Lcom/index/android/LieBFragment;->loadMoreButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/index/android/LieBFragment;->access$0(Lcom/index/android/LieBFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u66f4\u591a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
