.class public final Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;
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

    invoke-direct {p0}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;ZILjava/lang/Object;)Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    const-string v1, ""

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v10, v0

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v10}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Z)Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZLjava/lang/String;Z)Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    invoke-direct {v2}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;-><init>()V

    invoke-static {v2, p1}, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;->s0(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;Landroid/content/Context;)V

    new-instance p1, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;

    invoke-direct {p1}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;-><init>()V

    const-string v3, "1"

    invoke-virtual {p1, v3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPage(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPerPage(I)V

    sget-object v4, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {v4}, Lyg/b$a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setSessionId(Ljava/lang/String;)V

    sget-object v4, Lcom/transsion/baselib/report/h;->a:Lcom/transsion/baselib/report/h;

    invoke-virtual {v4}, Lcom/transsion/baselib/report/h;->c()Landroid/net/Uri;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v5

    :cond_1
    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setDeepLink(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setUserPrefer(Ljava/lang/String;)V

    new-instance v4, Lwj/a;

    sget-object v5, Lwj/b;->a:Lwj/b$a;

    invoke-virtual {v5}, Lwj/b$a;->e()Ljava/util/Queue;

    move-result-object v5

    invoke-direct {v4, v5}, Lwj/a;-><init>(Ljava/util/Queue;)V

    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setLatest_events(Ljava/util/Queue;)V

    const-string v4, "0"

    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setPostId(Ljava/lang/String;)V

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {p1, v4}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setTabId(I)V

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;->setImmersiveRecType(I)V

    new-instance v4, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;

    invoke-direct {v4, p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoImmersiveDataLoader;-><init>(Lcom/transsion/postdetail/viewmodel/ImmVideoRequestEntity;)V

    sget-object p1, Lqm/e;->a:Lqm/e;

    new-array v5, v0, [Lqm/b;

    aput-object v4, v5, v1

    invoke-virtual {p1, v5}, Lqm/e;->c([Lqm/b;)I

    move-result p1

    const-string v4, "id"

    invoke-static {v4, p2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const-string v4, "item_type"

    invoke-static {v4, p3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const-string v4, "tab_id"

    invoke-static {v4, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    const-string v4, "video_load_more"

    invoke-static {v4, p5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    const-string v4, "from_comment"

    invoke-static {v4, p6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p6

    const-string v4, "rec_ops"

    invoke-static {v4, p7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p7

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p8

    const-string v4, "attach_to_main"

    invoke-static {v4, p8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "yy_preload_id"

    invoke-static {v4, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/16 v4, 0x8

    new-array v4, v4, [Lkotlin/Pair;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    const/4 p2, 0x2

    aput-object p4, v4, p2

    const/4 p2, 0x3

    aput-object p5, v4, p2

    const/4 p2, 0x4

    aput-object p6, v4, p2

    aput-object p7, v4, v3

    const/4 p2, 0x6

    aput-object p8, v4, p2

    const/4 p2, 0x7

    aput-object p1, v4, p2

    invoke-static {v4}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2
.end method
