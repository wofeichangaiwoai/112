.class Lcom/index/android/MymusicFragment$4;
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
    iput-object p1, p0, Lcom/index/android/MymusicFragment$4;->this$0:Lcom/index/android/MymusicFragment;

    iput-object p2, p0, Lcom/index/android/MymusicFragment$4;->val$l1:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/index/android/MymusicFragment$4;->val$l2:Landroid/widget/LinearLayout;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 121
    .line 122
    iget-object v0, p0, Lcom/index/android/MymusicFragment$4;->val$l1:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/index/android/MymusicFragment$4;->val$l2:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    return-void
.end method
