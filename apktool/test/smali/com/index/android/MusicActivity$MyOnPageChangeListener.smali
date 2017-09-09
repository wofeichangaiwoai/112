.class public Lcom/index/android/MusicActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field private one:I

.field final synthetic this$0:Lcom/index/android/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/index/android/MusicActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/index/android/MusicActivity$MyOnPageChangeListener;->this$0:Lcom/index/android/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    #getter for: Lcom/index/android/MusicActivity;->offset:I
    invoke-static {p1}, Lcom/index/android/MusicActivity;->access$0(Lcom/index/android/MusicActivity;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    #getter for: Lcom/index/android/MusicActivity;->bmpW:I
    invoke-static {p1}, Lcom/index/android/MusicActivity;->access$1(Lcom/index/android/MusicActivity;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/index/android/MusicActivity$MyOnPageChangeListener;->one:I

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 218
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v3, 0x0

    .line 226
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/index/android/MusicActivity$MyOnPageChangeListener;->this$0:Lcom/index/android/MusicActivity;

    #getter for: Lcom/index/android/MusicActivity;->currIndex:I
    invoke-static {v1}, Lcom/index/android/MusicActivity;->access$2(Lcom/index/android/MusicActivity;)I

    move-result v1

    iget v2, p0, Lcom/index/android/MusicActivity$MyOnPageChangeListener;->one:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/index/android/MusicActivity$MyOnPageChangeListener;->one:I

    mul-int/2addr v2, p1

    int-to-float v2, v2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 228
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/index/android/MusicActivity$MyOnPageChangeListener;->this$0:Lcom/index/android/MusicActivity;

    #setter for: Lcom/index/android/MusicActivity;->currIndex:I
    invoke-static {v1, p1}, Lcom/index/android/MusicActivity;->access$3(Lcom/index/android/MusicActivity;I)V

    .line 229
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 230
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 232
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 222
    return-void
.end method
