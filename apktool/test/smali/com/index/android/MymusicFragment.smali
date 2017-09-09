.class public Lcom/index/android/MymusicFragment;
.super Landroid/support/v4/app/Fragment;
.source "MymusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/index/android/MymusicFragment$MusicAdapter;,
        Lcom/index/android/MymusicFragment$ViewHolderMusic1;,
        Lcom/index/android/MymusicFragment$ViewHolderMusic2;
    }
.end annotation


# instance fields
.field adpMusic:Lcom/index/android/MymusicFragment$MusicAdapter;

.field db:Lcom/index/db/DB;

.field private dialogmusics:Landroid/app/Dialog;

.field mymusic_lv:Landroid/widget/ListView;

.field private mymusiclist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private optionmusiclist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/index/android/MymusicFragment;->mymusiclist:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Lcom/index/db/DB;

    invoke-direct {v0}, Lcom/index/db/DB;-><init>()V

    iput-object v0, p0, Lcom/index/android/MymusicFragment;->db:Lcom/index/db/DB;

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/index/android/MymusicFragment;Ljava/lang/String;Landroid/widget/LinearLayout;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-direct {p0, p1, p2, p3}, Lcom/index/android/MymusicFragment;->showAlertDialogMusic(Ljava/lang/String;Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/index/android/MymusicFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/index/android/MymusicFragment;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;

    return-object v0
.end method

.method private showAlertDialogMusic(Ljava/lang/String;Landroid/widget/LinearLayout;I)V
    .locals 14
    .parameter "name"
    .parameter "ll"
    .parameter "flag"

    .prologue
    .line 213
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v7, musiclist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 215
    .local v4, inflater:Landroid/view/LayoutInflater;
    const/high16 v11, 0x7f03

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 217
    .local v5, mLayout:Landroid/widget/LinearLayout;
    new-instance v11, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;

    .line 218
    iget-object v11, p0, Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 219
    iget-object v11, p0, Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 221
    iget-object v11, p0, Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/view/Window;->setGravity(I)V

    .line 222
    iget-object v11, p0, Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, -0x1

    .line 223
    const/4 v13, -0x1

    .line 222
    invoke-virtual {v11, v12, v13}, Landroid/view/Window;->setLayout(II)V

    .line 224
    iget-object v11, p0, Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 226
    iget-object v11, p0, Lcom/index/android/MymusicFragment;->dialogmusics:Landroid/app/Dialog;

    const v12, 0x7f050001

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 227
    .local v3, dialog_lv:Landroid/widget/ListView;
    const/4 v10, 0x0

    .line 228
    .local v10, sql:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 229
    const-string v10, "select * from RM_Recipe"

    .line 238
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/index/android/MymusicFragment;->db:Lcom/index/db/DB;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v11, v10, v12, v13}, Lcom/index/db/DB;->rawQueryData(Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 240
    .local v9, records1:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 250
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "musiclist"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    new-instance v11, Lcom/index/android/MymusicFragment$MusicAdapter;

    invoke-virtual {p0}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-direct {v11, p0, v12, v7}, Lcom/index/android/MymusicFragment$MusicAdapter;-><init>(Lcom/index/android/MymusicFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v11, p0, Lcom/index/android/MymusicFragment;->adpMusic:Lcom/index/android/MymusicFragment$MusicAdapter;

    .line 253
    iget-object v11, p0, Lcom/index/android/MymusicFragment;->adpMusic:Lcom/index/android/MymusicFragment$MusicAdapter;

    invoke-virtual {v3, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    const v11, 0x7f050002

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 259
    .local v2, dialog_btqr:Landroid/widget/Button;
    const v11, 0x7f050003

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 261
    .local v1, dialog_btfh:Landroid/widget/Button;
    new-instance v11, Lcom/index/android/MymusicFragment$8;

    move-object/from16 v0, p2

    invoke-direct {v11, p0, v7, p1, v0}, Lcom/index/android/MymusicFragment$8;-><init>(Lcom/index/android/MymusicFragment;Ljava/util/ArrayList;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    new-instance v11, Lcom/index/android/MymusicFragment$9;

    invoke-direct {v11, p0}, Lcom/index/android/MymusicFragment$9;-><init>(Lcom/index/android/MymusicFragment;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void

    .line 231
    .end local v1           #dialog_btfh:Landroid/widget/Button;
    .end local v2           #dialog_btqr:Landroid/widget/Button;
    .end local v9           #records1:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    .line 232
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "select * from RM_Recipe where vcRecipeName like \'%"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 233
    :cond_2
    const/4 v11, 0x3

    move/from16 v0, p3

    if-ne v0, v11, :cond_0

    .line 234
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "select * from RM_Recipe where RecipeType=\'"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 240
    .restart local v9       #records1:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 242
    .local v8, record1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "D_MusicID"

    const-string v13, "cRecipeID"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v12, "D_MusicName"

    const-string v13, "vcRecipeName"

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v12, "D_CHK"

    const-string v13, "0"

    invoke-virtual {v6, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 25
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const v4, 0x7f030007

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 61
    .local v22, rootView:Landroid/view/View;
    const v4, 0x7f050015

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/index/android/MymusicFragment;->mymusic_lv:Landroid/widget/ListView;

    .line 64
    const v4, 0x7f05000c

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 65
    .local v9, btn:Landroid/widget/Button;
    const v4, 0x7f05000f

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 66
    .local v18, l1:Landroid/widget/LinearLayout;
    const v4, 0x7f050012

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 67
    .local v19, l2:Landroid/widget/LinearLayout;
    const/4 v15, 0x1

    .line 68
    .local v15, flag1:I
    const/16 v16, 0x2

    .line 69
    .local v16, flag2:I
    const/16 v17, 0x3

    .line 71
    .local v17, flag3:I
    new-instance v4, Lcom/index/android/MymusicFragment$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2}, Lcom/index/android/MymusicFragment$1;-><init>(Lcom/index/android/MymusicFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v4, 0x7f05000d

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 86
    .local v10, btn1:Landroid/widget/Button;
    const v4, 0x7f05000e

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 87
    .local v11, btn2:Landroid/widget/Button;
    const v4, 0x7f050011

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 89
    .local v21, mymbtn:Landroid/widget/Button;
    const v4, 0x7f050010

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 91
    .local v14, et:Landroid/widget/EditText;
    new-instance v4, Lcom/index/android/MymusicFragment$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v4, v0, v1, v2}, Lcom/index/android/MymusicFragment$2;-><init>(Lcom/index/android/MymusicFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v4, Lcom/index/android/MymusicFragment$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v14, v1}, Lcom/index/android/MymusicFragment$3;-><init>(Lcom/index/android/MymusicFragment;Landroid/widget/EditText;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v4, Lcom/index/android/MymusicFragment$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/index/android/MymusicFragment$4;-><init>(Lcom/index/android/MymusicFragment;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v4, 0x7f050013

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 128
    .local v12, buttontype1:Landroid/widget/Button;
    new-instance v4, Lcom/index/android/MymusicFragment$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/index/android/MymusicFragment$5;-><init>(Lcom/index/android/MymusicFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v12, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v4, 0x7f050014

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 138
    .local v13, buttontype2:Landroid/widget/Button;
    new-instance v4, Lcom/index/android/MymusicFragment$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Lcom/index/android/MymusicFragment$6;-><init>(Lcom/index/android/MymusicFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v13, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v4, 0x7f050015

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    .line 173
    .local v20, lv:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 174
    new-instance v3, Landroid/widget/SimpleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/index/android/MymusicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/index/android/MymusicFragment;->optionmusiclist:Ljava/util/ArrayList;

    const v6, 0x7f030008

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v23, "guide5_musicname"

    aput-object v23, v7, v8

    .line 175
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/16 v23, 0x0

    const v24, 0x7f050016

    aput v24, v8, v23

    .line 174
    invoke-direct/range {v3 .. v8}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 176
    .local v3, adapter1:Landroid/widget/ListAdapter;
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    new-instance v4, Lcom/index/android/MymusicFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/index/android/MymusicFragment$7;-><init>(Lcom/index/android/MymusicFragment;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    .end local v3           #adapter1:Landroid/widget/ListAdapter;
    :cond_0
    return-object v22
.end method
