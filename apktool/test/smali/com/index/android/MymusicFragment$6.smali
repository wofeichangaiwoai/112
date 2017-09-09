.class Lcom/index/android/MymusicFragment$6;
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

.field private final synthetic val$l2:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/index/android/MymusicFragment;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/MymusicFragment$6;->this$0:Lcom/index/android/MymusicFragment;

    iput-object p2, p0, Lcom/index/android/MymusicFragment$6;->val$l2:Landroid/widget/LinearLayout;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 143
    const-string v0, "\u70ed\u836f"

    .line 144
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/index/android/MymusicFragment$6;->this$0:Lcom/index/android/MymusicFragment;

    iget-object v2, p0, Lcom/index/android/MymusicFragment$6;->val$l2:Landroid/widget/LinearLayout;

    const/4 v3, 0x3

    #calls: Lcom/index/android/MymusicFragment;->showAlertDialogMusic(Ljava/lang/String;Landroid/widget/LinearLayout;I)V
    invoke-static {v1, v0, v2, v3}, Lcom/index/android/MymusicFragment;->access$0(Lcom/index/android/MymusicFragment;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    .line 145
    return-void
.end method
