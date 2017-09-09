.class Lcom/index/android/MymusicFragment$1;
.super Ljava/lang/Object;
.source "MymusicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/MymusicFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/MymusicFragment;

.field private final synthetic val$l1:Landroid/widget/LinearLayout;

.field private final synthetic val$l2:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/index/android/MymusicFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/MymusicFragment$1;->this$0:Lcom/index/android/MymusicFragment;

    iput-object p2, p0, Lcom/index/android/MymusicFragment$1;->val$l2:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/index/android/MymusicFragment$1;->val$l1:Landroid/widget/LinearLayout;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 76
    .line 77
    iget-object v0, p0, Lcom/index/android/MymusicFragment$1;->val$l2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/index/android/MymusicFragment$1;->val$l1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/index/android/MymusicFragment$1;->this$0:Lcom/index/android/MymusicFragment;

    const/4 v1, 0x1

    #calls: Lcom/index/android/MymusicFragment;->showAlertDialogMusic(Ljava/lang/String;Landroid/widget/LinearLayout;I)V
    invoke-static {v0, v2, v2, v1}, Lcom/index/android/MymusicFragment;->access$0(Lcom/index/android/MymusicFragment;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    .line 83
    return-void
.end method
