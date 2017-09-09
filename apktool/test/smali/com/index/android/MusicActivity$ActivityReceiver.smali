.class public Lcom/index/android/MusicActivity$ActivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/index/android/MusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/index/android/MusicActivity;


# direct methods
.method public constructor <init>(Lcom/index/android/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 323
    const-string v14, "update"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 325
    .local v13, update:I
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "update"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 326
    const-string v14, "list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 328
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v14, "current"

    const/4 v15, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 329
    .local v1, current:I
    new-instance v2, Lcom/index/db/DB;

    invoke-direct {v2}, Lcom/index/db/DB;-><init>()V

    .line 331
    .local v2, db:Lcom/index/db/DB;
    const-string v10, "select * from RM_Recipe"

    .line 333
    .local v10, sql:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    invoke-virtual {v15}, Lcom/index/android/MusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v2, v10, v14, v15}, Lcom/index/db/DB;->rawQueryData(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 334
    .local v7, records1:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 340
    if-ltz v1, :cond_0

    .line 342
    if-nez v3, :cond_2

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    iget-object v14, v14, Lcom/index/android/MusicActivity;->list1:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 344
    .local v4, music_titile:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "select * from RM_Recipe where cRecipeID =\'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 345
    .local v11, sql1:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    invoke-virtual {v15}, Lcom/index/android/MusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v2, v11, v14, v15}, Lcom/index/db/DB;->rawQueryData(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 346
    .local v8, records2:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    #getter for: Lcom/index/android/MusicActivity;->title:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/index/android/MusicActivity;->access$5(Lcom/index/android/MusicActivity;)Landroid/widget/TextView;

    move-result-object v15

    const/4 v14, 0x0

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    const-string v16, "vcRecipeName"

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    .end local v4           #music_titile:Ljava/lang/String;
    .end local v8           #records2:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v11           #sql1:Ljava/lang/String;
    :cond_0
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 376
    :goto_2
    return-void

    .line 334
    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 335
    .local v6, record1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v15, "cRecipeID"

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, musicaID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    iget-object v15, v15, Lcom/index/android/MusicActivity;->list1:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 348
    .end local v5           #musicaID:Ljava/lang/String;
    .end local v6           #record1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 349
    .restart local v4       #music_titile:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "select * from RM_Recipe where cRecipeID =\'"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 350
    .local v12, sql2:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    invoke-virtual {v15}, Lcom/index/android/MusicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v2, v12, v14, v15}, Lcom/index/db/DB;->rawQueryData(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 351
    .local v9, records3:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    #getter for: Lcom/index/android/MusicActivity;->title:Landroid/widget/TextView;
    invoke-static {v14}, Lcom/index/android/MusicActivity;->access$5(Lcom/index/android/MusicActivity;)Landroid/widget/TextView;

    move-result-object v15

    const/4 v14, 0x0

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    const-string v16, "vcRecipeName"

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 363
    .end local v4           #music_titile:Ljava/lang/String;
    .end local v9           #records3:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v12           #sql2:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    iget-object v14, v14, Lcom/index/android/MusicActivity;->play:Landroid/widget/ImageButton;

    const v15, 0x7f020009

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    const/16 v15, 0x11

    iput v15, v14, Lcom/index/android/MusicActivity;->status:I

    goto :goto_2

    .line 369
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    iget-object v14, v14, Lcom/index/android/MusicActivity;->play:Landroid/widget/ImageButton;

    const v15, 0x7f020001

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 371
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/index/android/MusicActivity$ActivityReceiver;->this$0:Lcom/index/android/MusicActivity;

    const/16 v15, 0x12

    iput v15, v14, Lcom/index/android/MusicActivity;->status:I

    goto/16 :goto_2

    .line 360
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
