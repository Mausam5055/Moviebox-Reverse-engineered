.class final Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.fragment.DownloadReDetectorGroupMainFragment$initView$4$2"
    f = "DownloadReDetectorGroupMainFragment.kt"
    l = {
        0x192
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Lcom/transsion/memberapi/PremiumV2CheckAccessDto;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->g(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Lcom/transsion/memberapi/PremiumV2CheckAccessDto;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->h(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Lcom/transsion/memberapi/PremiumV2CheckAccessDto;)Lkotlin/Unit;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->getHasAccess()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-class v3, Lcom/transsion/memberapi/IPremiumApi;

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v6, Lcom/transsnet/downloader/manager/f;->a:Lcom/transsnet/downloader/manager/f$a;

    invoke-virtual {v6}, Lcom/transsnet/downloader/manager/f$a;->a()Lcom/transsnet/downloader/manager/f;

    move-result-object v6

    new-instance v7, Lcom/transsnet/downloader/fragment/x2;

    invoke-direct {v7, v0}, Lcom/transsnet/downloader/fragment/x2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V

    invoke-virtual {v6, v2, v5, v7}, Lcom/transsnet/downloader/manager/f;->j(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    new-instance v0, Lcom/transsion/memberapi/PremiumConsumeRequestBean;

    const-string v2, "subject_download"

    const-string v5, "free_download_count"

    invoke-direct {v0, v2, v5, v4, v4}, Lcom/transsion/memberapi/PremiumConsumeRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Lcom/transsion/memberapi/IPremiumApi;->s(Lcom/transsion/memberapi/PremiumConsumeRequestBean;)V

    goto/16 :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->getAction()Ljava/lang/String;

    move-result-object v4

    :cond_3
    const-string v2, "ACCESS_ACTION_VIP"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v5, Lcom/transsion/baselib/helper/f;->a:Lcom/transsion/baselib/helper/f;

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->i1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/baselib/helper/f;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v1, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->g1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->i1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->d1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->f1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/transsion/memberapi/IPremiumApi;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "ACCESS_ACTION_LOTTERY"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-class v2, Lcom/transsion/commercializationapi/ITaskCenterApi;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/commercializationapi/ITaskCenterApi;

    if-eqz v1, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    :cond_5
    const-string v2, ""

    :cond_6
    new-instance v15, Lcom/transsion/memberapi/MemberCheckResult;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/memberapi/PremiumV2CheckAccessDto;->getPopup()Lcom/transsion/memberapi/ThreeInOnePopup;

    move-result-object v16

    const/16 v17, 0xfff

    const/16 v18, 0x0

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

    const/16 v19, 0x0

    move-object v3, v15

    move-object/from16 v20, v15

    move-object/from16 v15, v19

    invoke-direct/range {v3 .. v18}, Lcom/transsion/memberapi/MemberCheckResult;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/memberapi/ThreeInOnePopup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2$a;

    invoke-direct {v3, v0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2$a;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V

    move-object/from16 v0, v20

    invoke-interface {v1, v2, v0, v3}, Lcom/transsion/commercializationapi/ITaskCenterApi;->d(Ljava/lang/String;Lcom/transsion/memberapi/MemberCheckResult;Lok/b;)V

    :cond_7
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private static final h(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->j1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    invoke-direct {p1, v0, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->c1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v1, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->h1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;->e1(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)Ljava/lang/Integer;

    move-result-object v11

    new-instance v1, Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;

    const/16 v12, 0x38

    const/4 v13, 0x0

    const-string v5, "subject_download"

    const-string v6, "free_download_count"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;

    new-instance v4, Lcom/transsnet/downloader/fragment/w2;

    invoke-direct {v4, v3}, Lcom/transsnet/downloader/fragment/w2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment;)V

    iput v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupMainFragment$initView$4$2;->label:I

    invoke-interface {p1, v1, v4, p0}, Lcom/transsion/memberapi/IPremiumApi;->q(Lcom/transsion/memberapi/PremiumV2CheckAccessRequestBean;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
