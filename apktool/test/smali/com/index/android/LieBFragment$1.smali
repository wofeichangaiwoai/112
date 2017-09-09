.class Lcom/index/android/LieBFragment$1;
.super Ljava/lang/Object;
.source "LieBFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/LieBFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/LieBFragment;


# direct methods
.method constructor <init>(Lcom/index/android/LieBFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/index/android/LieBFragment$1;)Lcom/index/android/LieBFragment;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;

    #getter for: Lcom/index/android/LieBFragment;->loadMoreButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/index/android/LieBFragment;->access$0(Lcom/index/android/LieBFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/index/android/LieBFragment$1;->this$0:Lcom/index/android/LieBFragment;

    #getter for: Lcom/index/android/LieBFragment;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/index/android/LieBFragment;->access$1(Lcom/index/android/LieBFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/index/android/LieBFragment$1$1;

    invoke-direct {v1, p0}, Lcom/index/android/LieBFragment$1$1;-><init>(Lcom/index/android/LieBFragment$1;)V

    .line 83
    const-wide/16 v2, 0x7d0

    .line 75
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    return-void
.end method
