.class Lcom/index/android/ButtonFragment$1;
.super Ljava/lang/Object;
.source "ButtonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/ButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/ButtonFragment;


# direct methods
.method constructor <init>(Lcom/index/android/ButtonFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/ButtonFragment$1;->this$0:Lcom/index/android/ButtonFragment;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/index/android/ButtonFragment;->lrcView:Lcom/index/android/LyricView1;

    invoke-virtual {v0}, Lcom/index/android/LyricView1;->invalidate()V

    .line 192
    return-void
.end method
