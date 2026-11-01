.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/fragment/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;ZZILjava/lang/Object;)Lcom/transsion/postdetail/ui/fragment/VideoFragment;
    .locals 16

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v7, v1

    goto :goto_0

    :cond_0
    move/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v8, v2

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    move/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    move v12, v3

    goto :goto_5

    :cond_5
    move/from16 v12, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object v13, v2

    goto :goto_6

    :cond_6
    move-object/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_7

    move v14, v3

    goto :goto_7

    :cond_7
    move/from16 v14, p12

    :goto_7
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    move v15, v3

    goto :goto_8

    :cond_8
    move/from16 v15, p13

    :goto_8
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v15}, Lcom/transsion/postdetail/ui/fragment/VideoFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;ZZ)Lcom/transsion/postdetail/ui/fragment/VideoFragment;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p9

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-direct {v5}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;-><init>()V

    if-eqz v0, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    invoke-direct {v6, v0}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;-><init>(Ljava/lang/String;)V

    sget-object v7, Lqm/e;->a:Lqm/e;

    new-array v8, v4, [Lqm/b;

    aput-object v6, v8, v3

    invoke-virtual {v7, v8}, Lqm/e;->c([Lqm/b;)I

    move-result v6

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v6, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;

    const-string v7, "1"

    const-string v8, "0"

    invoke-direct {v6, v1, v8, v7, v2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoaderV2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v7, Lqm/e;->a:Lqm/e;

    new-array v8, v4, [Lqm/b;

    aput-object v6, v8, v3

    invoke-virtual {v7, v8}, Lqm/e;->c([Lqm/b;)I

    move-result v6

    :goto_1
    const-string v7, "id"

    invoke-static {v7, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v7, "item_type"

    move-object/from16 v8, p2

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-string v8, "tab_id"

    move-object/from16 v9, p3

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "video_load_more"

    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, "from_comment"

    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const-string v11, "rec_ops"

    move-object/from16 v12, p6

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, "attach_to_main"

    invoke-static {v13, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v13, "yy_preload_id"

    invoke-static {v13, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const-string v13, "comment_id"

    move-object/from16 v14, p8

    invoke-static {v13, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const-string v14, "page_from"

    invoke-static {v14, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v15, "need_back_to_room"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    const-string v15, "downloaded_shorts_list"

    move-object/from16 v2, p11

    invoke-static {v15, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v4, "prioritize_downloaded"

    invoke-static {v4, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v3, "is_from_downloaded"

    invoke-static {v3, v15}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v15, 0xe

    new-array v15, v15, [Lkotlin/Pair;

    const/16 v16, 0x0

    aput-object v0, v15, v16

    const/4 v0, 0x1

    aput-object v7, v15, v0

    const/4 v0, 0x2

    aput-object v8, v15, v0

    const/4 v0, 0x3

    aput-object v9, v15, v0

    const/4 v0, 0x4

    aput-object v10, v15, v0

    const/4 v0, 0x5

    aput-object v11, v15, v0

    const/4 v0, 0x6

    aput-object v12, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v13, v15, v0

    const/16 v0, 0x9

    aput-object v1, v15, v0

    const/16 v0, 0xa

    aput-object v14, v15, v0

    const/16 v0, 0xb

    aput-object v2, v15, v0

    const/16 v0, 0xc

    aput-object v4, v15, v0

    const/16 v0, 0xd

    aput-object v3, v15, v0

    invoke-static {v15}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v5
.end method
