.class public final Lcom/transsion/ugcvideodetail/hepler/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ugcvideodetail/hepler/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/g;

    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/hepler/g;-><init>()V

    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/g;->a:Lcom/transsion/ugcvideodetail/hepler/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/ugcvideodetail/hepler/g;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lsj/b;
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v8, v2

    goto :goto_0

    :cond_0
    move-object/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    move-object v10, v2

    goto :goto_2

    :cond_2
    move-object/from16 v10, p7

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    move-object v11, v2

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Lcom/transsion/ugcvideodetail/hepler/g;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lsj/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lsj/b;
    .locals 11

    move-object v0, p1

    const-string v1, "recyclerView"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "viewModel"

    move-object v4, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getItemAtPosition"

    move-object v3, p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lsj/b;

    new-instance v10, Lcom/transsion/ugcvideodetail/hepler/g$a;

    move-object v2, v10

    move-object v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/transsion/ugcvideodetail/hepler/g$a;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x0

    move-object p2, v1

    move p3, v4

    move-object p4, v10

    move/from16 p5, v5

    move/from16 p6, v2

    move-object/from16 p7, v3

    invoke-direct/range {p2 .. p7}, Lsj/b;-><init>(FLsj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lsj/b;->n(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-object v1
.end method

.method public final c(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    sget-object v0, Lcom/transsion/ugcvideodetail/hepler/h;->a:Lcom/transsion/ugcvideodetail/hepler/h;

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/ugcvideodetail/hepler/h;->f(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
