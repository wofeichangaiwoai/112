.class Lcom/index/android/ButtonFragment$3;
.super Ljava/lang/Object;
.source "ButtonFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/index/android/ButtonFragment;->getlrc(ILjava/util/ArrayList;)Ljava/util/ArrayList;
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
    iput-object p1, p0, Lcom/index/android/ButtonFragment$3;->this$0:Lcom/index/android/ButtonFragment;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/Double;

    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Double;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v1, p2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method
