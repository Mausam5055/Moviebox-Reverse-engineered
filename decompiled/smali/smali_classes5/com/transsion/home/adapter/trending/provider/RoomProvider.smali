.class public final Lcom/transsion/home/adapter/trending/provider/RoomProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;,
        Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;,
        Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;
    }
.end annotation


# static fields
.field public static final p:Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;

.field public static final q:I

.field private static final r:Ljava/lang/String;

.field private static final s:Ljava/lang/String;

.field private static final t:Ljava/lang/String;

.field private static final u:Lcom/transsion/mb/config/manager/ConfigBean;


# instance fields
.field private final e:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field private final f:Lcom/transsion/home/viewmodel/TrendingViewModel;

.field private final g:Lkotlin/Lazy;

.field private h:Lsj/b;

.field private i:Lsj/b;

.field private final j:Ljava/lang/String;

.field private final k:Lkotlin/Lazy;

.field private final l:Lcom/transsion/home/adapter/trending/provider/RoomProvider$e;

.field private final m:Lcom/transsion/home/adapter/trending/provider/RoomProvider$d;

.field private final n:Lkotlin/Lazy;

.field private final o:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->p:Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->q:I

    const-string v0, "TrendingRoom"

    sput-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->r:Ljava/lang/String;

    const-string v0, "Trending"

    sput-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->s:Ljava/lang/String;

    const-string v0, "room_home_recommend"

    sput-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->t:Ljava/lang/String;

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v1, "room_entrance_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    sput-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->u:Lcom/transsion/mb/config/manager/ConfigBean;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/TrendingViewModel;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->e:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->f:Lcom/transsion/home/viewmodel/TrendingViewModel;

    const-class p2, Laq/i;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$special$$inlined$activityViewModels$default$1;

    invoke-direct {v0, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v1, Lcom/transsion/home/adapter/trending/provider/RoomProvider$special$$inlined$activityViewModels$default$2;

    invoke-direct {v1, p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p1, p2, v0, v1}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->g:Lkotlin/Lazy;

    sget-object p1, Lhj/i;->a:Lhj/i;

    invoke-virtual {p1}, Lhj/i;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->j:Ljava/lang/String;

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/r;

    invoke-direct {p1}, Lcom/transsion/home/adapter/trending/provider/r;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->k:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/RoomProvider$e;

    invoke-direct {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$e;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->l:Lcom/transsion/home/adapter/trending/provider/RoomProvider$e;

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/RoomProvider$d;

    invoke-direct {p1, p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$d;-><init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider;)V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->m:Lcom/transsion/home/adapter/trending/provider/RoomProvider$d;

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/s;

    invoke-direct {p1}, Lcom/transsion/home/adapter/trending/provider/s;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->n:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/t;

    invoke-direct {p1}, Lcom/transsion/home/adapter/trending/provider/t;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->o:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->L(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B()Ljava/util/HashSet;
    .locals 1

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->S()Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic C()Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;
    .locals 1

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->U()Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic D(Lcom/transsion/home/adapter/trending/provider/RoomProvider;)Ljava/util/HashSet;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->N()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic E()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic F()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->s:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic G(Lcom/transsion/home/adapter/trending/provider/RoomProvider;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic H()Lcom/transsion/mb/config/manager/ConfigBean;
    .locals 1

    sget-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->u:Lcom/transsion/mb/config/manager/ConfigBean;

    return-object v0
.end method

.method public static final synthetic I()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic J(Lcom/transsion/home/adapter/trending/provider/RoomProvider;)Lcom/transsion/home/viewmodel/TrendingViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->f:Lcom/transsion/home/viewmodel/TrendingViewModel;

    return-object p0
.end method

.method private static final L(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;Lcom/transsion/home/bean/RoomEntranceResponse;)Lkotlin/Unit;
    .locals 39

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    sget v2, Lcom/transsion/home/R$id;->main_operation_room_title:I

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/home/bean/RoomEntranceResponse;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/home/bean/RoomEntranceResponse;->getGroups()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->p:Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;

    invoke-virtual {v2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/home/bean/RoomEntranceResponse;->getGroups()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/transsion/home/bean/RoomEntranceResponse;->getPosts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p5 .. p5}, Lcom/transsion/home/bean/RoomEntranceResponse;->getPosts()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-object v2, v1

    const/16 v37, 0x1

    const/16 v38, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    invoke-direct/range {v2 .. v38}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Group;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/transsion/moviedetailapi/bean/Link;Lcom/transsion/moviedetailapi/bean/Media;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Stat;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;ZZZZLcom/transsion/moviedetailapi/bean/CommentBean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->setMore(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final M(Landroid/view/View;)V
    .locals 7

    sget-object p0, Lcom/transsion/room/helper/l;->a:Lcom/transsion/room/helper/l;

    sget-object v3, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->s:Ljava/lang/String;

    sget-object v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->t:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/transsion/room/helper/l;->f(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Laq/h;->a:Laq/h;

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Laq/h;->i(Laq/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final N()Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    return-object v0
.end method

.method private final O()Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;

    return-object v0
.end method

.method private final P()Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->n:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;

    return-object v0
.end method

.method private final Q()Laq/i;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq/i;

    return-object v0
.end method

.method private final R(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;)V
    .locals 14

    move-object v0, p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    new-instance v7, Lsj/b;

    new-instance v3, Lcom/transsion/home/adapter/trending/provider/RoomProvider$b;

    move-object/from16 v1, p3

    invoke-direct {v3, v1, p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$b;-><init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/home/adapter/trending/provider/RoomProvider;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const v2, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lsj/b;-><init>(FLsj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lsj/b;->n(I)V

    sget-object v2, Lcom/transsion/baselib/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/baselib/exposure/ExposureType;

    invoke-virtual {v7, v2}, Lsj/b;->o(Lcom/transsion/baselib/exposure/ExposureType;)V

    move-object v3, p1

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iput-object v7, v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->h:Lsj/b;

    new-instance v3, Lsj/b;

    new-instance v10, Lcom/transsion/home/adapter/trending/provider/RoomProvider$c;

    move-object/from16 v4, p4

    invoke-direct {v10, v4, p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$c;-><init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;Lcom/transsion/home/adapter/trending/provider/RoomProvider;)V

    const/4 v12, 0x4

    const/4 v13, 0x0

    const v9, 0x3f19999a    # 0.6f

    const/4 v11, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lsj/b;-><init>(FLsj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v1}, Lsj/b;->n(I)V

    invoke-virtual {v3, v2}, Lsj/b;->o(Lcom/transsion/baselib/exposure/ExposureType;)V

    move-object/from16 v1, p2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iput-object v3, v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->i:Lsj/b;

    return-void
.end method

.method private static final S()Ljava/util/HashSet;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method private static final T()Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;
    .locals 1

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;

    invoke-direct {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;-><init>()V

    return-object v0
.end method

.method private static final U()Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;
    .locals 1

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;

    invoke-direct {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;-><init>()V

    return-object v0
.end method

.method public static synthetic y()Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;
    .locals 1

    invoke-static {}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->T()Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic z(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->M(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public K(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 12

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/transsion/home/R$id;->main_operation_room_group_recycler:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/home/R$id;->main_operation_room_post_recycler:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    sget v0, Lcom/transsion/home/R$id;->main_operation_room_more_text:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/home/adapter/trending/provider/u;

    invoke-direct {v1}, Lcom/transsion/home/adapter/trending/provider/u;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/home/R$id;->main_operation_room_title:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/transsion/home/bean/OperateItem;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->P()Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->P()Lcom/transsion/home/adapter/trending/provider/RoomProvider$g;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_2
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Lig/f;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    move-object v6, p2

    invoke-direct/range {v6 .. v11}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_3
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->e:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v4, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;

    invoke-direct {v4}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$s;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->O()Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;

    move-result-object v2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->O()Lcom/transsion/home/adapter/trending/provider/RoomProvider$f;

    move-result-object p2

    invoke-virtual {v5, p2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_4
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Lig/f;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v8, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    move-object v6, p2

    invoke-direct/range {v6 .. v11}, Lig/f;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_5
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->e:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->setItemPrefetchEnabled(Z)V

    invoke-virtual {v5, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v6, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;

    iget-object p2, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->j:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->Q()Laq/i;

    move-result-object v0

    invoke-direct {v6, p2, v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;-><init>(Ljava/lang/String;Laq/i;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0, v3, v5, v4, v6}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->R(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;)V

    iget-object p2, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->f:Lcom/transsion/home/viewmodel/TrendingViewModel;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/home/viewmodel/TrendingViewModel;->W()Landroidx/lifecycle/b0;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->e:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->p(Landroidx/lifecycle/u;)V

    :cond_6
    iget-object p2, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->f:Lcom/transsion/home/viewmodel/TrendingViewModel;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/home/viewmodel/TrendingViewModel;->W()Landroidx/lifecycle/b0;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->e:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    new-instance v7, Lcom/transsion/home/adapter/trending/provider/v;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/home/adapter/trending/provider/v;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$RoomAdapter;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/home/adapter/trending/provider/RoomProvider$PostAdapter;)V

    new-instance p1, Lcom/transsion/home/adapter/trending/provider/RoomProvider$h;

    invoke-direct {p1, v7}, Lcom/transsion/home/adapter/trending/provider/RoomProvider$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v0, p1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->K(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->ROOM:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->post_list_item_room:I

    return v0
.end method

.method public r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->r(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->l:Lcom/transsion/home/adapter/trending/provider/RoomProvider$e;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    sget-object v2, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->r:Ljava/lang/String;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "room onViewDetachedFromWindow"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->h:Lsj/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lsj/b;->f()V

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->i:Lsj/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lsj/b;->f()V

    :cond_1
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->l:Lcom/transsion/home/adapter/trending/provider/RoomProvider$e;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
