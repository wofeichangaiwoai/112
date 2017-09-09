.class Lcom/index/android/MymusicFragment$8;
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

.field private final synthetic val$ll:Landroid/widget/LinearLayout;

.field private final synthetic val$musiclist:Ljava/util/ArrayList;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/index/android/MymusicFragment;Ljava/util/ArrayList;Ljava/lang/String;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    iput-object p2, p0, Lcom/index/android/MymusicFragment$8;->val$musiclist:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/index/android/MymusicFragment$8;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/index/android/MymusicFragment$8;->val$ll:Landroid/widget/LinearLayout;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->val$musiclist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 266
    .local v7, intSize:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v7, :cond_0

    .line 308
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    iget-object v1, v1, Lcom/index/android/MymusicFragment;->adpMusic:Lcom/index/android/MymusicFragment$MusicAdapter;

    invoke-virtual {v1}, Lcom/index/android/MymusicFragment$MusicAdapter;->notifyDataSetChanged()V

    .line 309
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    #getter for: Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/index/android/MymusicFragment;->access$2(Lcom/index/android/MymusicFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 311
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->val$musiclist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 268
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "D_CHK"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 270
    .local v8, lChk:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v11, map1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "guide5_musicname"

    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->val$musiclist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "D_MusicName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v2, "guide5_musicid"

    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->val$musiclist:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "D_MusicID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    #getter for: Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/index/android/MymusicFragment;->access$1(Lcom/index/android/MymusicFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    #getter for: Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/index/android/MymusicFragment;->access$1(Lcom/index/android/MymusicFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "optionmusiclist"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    #getter for: Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/index/android/MymusicFragment;->access$1(Lcom/index/android/MymusicFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    invoke-virtual {v1}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 282
    .local v9, lv:Landroid/widget/ListView;
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    invoke-virtual {v1}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/index/android/MymusicFragment$8;->this$0:Lcom/index/android/MymusicFragment;

    #getter for: Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/index/android/MymusicFragment;->access$1(Lcom/index/android/MymusicFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f030008

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "guide5_musicname"

    aput-object v12, v4, v5

    .line 283
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v12, 0x0

    const v13, 0x7f050016

    aput v13, v5, v12

    .line 282
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 284
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->val$name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 286
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "\u558a\u8981\u6267\u884c"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/index/android/MymusicFragment$8;->val$ll:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v9           #lv:Landroid/widget/ListView;
    .end local v11           #map1:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method
