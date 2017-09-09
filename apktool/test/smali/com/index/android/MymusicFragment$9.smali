.class Lcom/index/android/MymusicFragment$9;
.super Ljava/lang/Object;
.source "MymusicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/MymusicFragment;->showAlertDialogMusic(Ljava/lang/String;Landroid/widget/LinearLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/MymusicFragment;


# direct methods
.method constructor <init>(Lcom/index/android/MymusicFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/MymusicFragment$9;->this$0:Lcom/index/android/MymusicFragment;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/index/android/MymusicFragment$9;->this$0:Lcom/index/android/MymusicFragment;

    iget-object v0, v0, Lcom/index/android/MymusicFragment;->adpMusic:Lcom/index/android/MymusicFragment$MusicAdapter;

    invoke-virtual {v0}, Lcom/index/android/MymusicFragment$MusicAdapter;->notifyDataSetChanged()V

    .line 339
    iget-object v0, p0, Lcom/index/android/MymusicFragment$9;->this$0:Lcom/index/android/MymusicFragment;

    #getter for: Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/index/android/MymusicFragment;->access$2(Lcom/index/android/MymusicFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 340
    return-void
.end method
