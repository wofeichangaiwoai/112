.class Lcom/index/android/MymusicFragment$3;
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

.field private final synthetic val$et:Landroid/widget/EditText;

.field private final synthetic val$l1:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/index/android/MymusicFragment;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/MymusicFragment$3;->this$0:Lcom/index/android/MymusicFragment;

    iput-object p2, p0, Lcom/index/android/MymusicFragment$3;->val$et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/index/android/MymusicFragment$3;->val$l1:Landroid/widget/LinearLayout;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/index/android/MymusicFragment$3;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/index/android/MymusicFragment$3;->this$0:Lcom/index/android/MymusicFragment;

    invoke-virtual {v1}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "\u8bf7\u8f93\u5165\u65b9\u6b4c\u540d"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/index/android/MymusicFragment$3;->this$0:Lcom/index/android/MymusicFragment;

    iget-object v2, p0, Lcom/index/android/MymusicFragment$3;->val$l1:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    #calls: Lcom/index/android/MymusicFragment;->showAlertDialogMusic(Ljava/lang/String;Landroid/widget/LinearLayout;I)V
    invoke-static {v1, v0, v2, v3}, Lcom/index/android/MymusicFragment;->access$0(Lcom/index/android/MymusicFragment;Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    goto :goto_0
.end method
