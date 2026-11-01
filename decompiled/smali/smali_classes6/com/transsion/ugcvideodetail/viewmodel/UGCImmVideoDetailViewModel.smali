.class public final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
.super Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;
    }
.end annotation


# static fields
.field public static final d0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;


# instance fields
.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private final K:Lkotlin/Lazy;

.field private final L:I

.field private M:Ljava/lang/String;

.field private N:I

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z

.field private S:F

.field private final T:Landroidx/lifecycle/b0;

.field private final U:Landroidx/lifecycle/b0;

.field private final V:Landroidx/lifecycle/b0;

.field private final W:Landroidx/lifecycle/b0;

.field private final X:Landroidx/lifecycle/LiveData;

.field private final Y:Landroidx/lifecycle/b0;

.field private final Z:Landroidx/lifecycle/LiveData;

.field private final a0:Landroidx/lifecycle/b0;

.field private final b0:Landroidx/lifecycle/b0;

.field private final c0:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->d0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;-><init>()V

    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/a;

    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/viewmodel/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->K:Lkotlin/Lazy;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result v0

    iput v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->L:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Q:Z

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->R:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->S:F

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->T:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->U:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->V:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->W:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->X:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Z:Landroidx/lifecycle/LiveData;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a0:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->b0:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->c0:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->M:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic B0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->O:I

    return-void
.end method

.method public static final synthetic C0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->N:I

    return-void
.end method

.method public static final synthetic D0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->I:Ljava/lang/String;

    return-void
.end method

.method private final F()Lrv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->K:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrv/a;

    return-object v0
.end method

.method private final F0(ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 10

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v5, p1

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZZLcom/transsion/moviedetailapi/bean/Pager;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method static synthetic G0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, -0x1

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->F0(ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V

    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;IIZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->P0(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method private final a1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    instance-of v2, p3, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;

    if-eqz v2, :cond_0

    move-object v2, p3

    check-cast v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;

    iget v3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;

    invoke-direct {v2, p0, p3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->label:I

    if-eqz v4, :cond_2

    if-ne v4, v1, :cond_1

    iget p1, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->I$0:I

    iget-object p2, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception p3

    goto/16 :goto_b

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, p3

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, p3

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFirstVideoDetailSuccess id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", position:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "UGCImmVideoDetailViewModel"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getPosition()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_3

    :cond_5
    const/4 v4, -0x1

    :goto_3
    new-instance v5, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-direct {v5, p1, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getDownloadStatus()I

    move-result p2

    goto :goto_4

    :cond_6
    move p2, v0

    :goto_4
    invoke-virtual {v5, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setDownloadStatus(I)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object p3

    :cond_7
    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    move p2, v0

    goto :goto_6

    :cond_9
    :goto_5
    move p2, v1

    :goto_6
    xor-int/2addr p2, v1

    invoke-virtual {v5, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setCollectionList(Z)V

    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->b0:Landroidx/lifecycle/b0;

    invoke-virtual {p2, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getVideoNum()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_7

    :cond_a
    move p3, v0

    :goto_7
    if-gt p3, v1, :cond_c

    iget-object p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->W:Landroidx/lifecycle/b0;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getVideoNum()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_8

    :cond_b
    move v6, v1

    :goto_8
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-array v7, v1, [Lkotlin/Pair;

    aput-object v6, v7, v0

    invoke-static {v7}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_c
    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->z()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    move-result-object p3

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object v5, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->L$0:Ljava/lang/Object;

    iput v4, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->I$0:I

    iput v1, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->label:I

    invoke-interface {p3, p2, p1, v2}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->a(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v3, :cond_d

    return-object v3

    :cond_d
    move p1, v4

    move-object p2, v5

    :goto_9
    :try_start_2
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_a
    move v4, p1

    move-object v5, p2

    goto :goto_c

    :catchall_1
    move-exception p3

    move p1, v4

    move-object p2, v5

    :goto_b
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_a

    :goto_c
    invoke-static {p3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_e
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isCollectionList()Z

    move-result p1

    if-eqz p1, :cond_f

    if-lez v4, :cond_f

    new-array p1, v1, [Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    aput-object v5, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->E0(Ljava/util/List;Z)V

    :cond_f
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public static synthetic o0()Lrv/a;
    .locals 1

    invoke-static {}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->x()Lrv/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic p0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->F0(ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V

    return-void
.end method

.method public static final synthetic q0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->y(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->O:I

    return p0
.end method

.method public static final synthetic s0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->N:I

    return p0
.end method

.method public static final synthetic t0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Lrv/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->F()Lrv/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->I:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->L:I

    return p0
.end method

.method public static final synthetic w0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->b0:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private static final x()Lrv/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lrv/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrv/a;

    return-object v0
.end method

.method public static final synthetic x0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->W:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final y(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;

    iget v3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    move-object/from16 v3, p0

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v1, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v2

    iget v4, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    const/4 v10, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    iput-object v0, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->L$0:Ljava/lang/Object;

    iput v6, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    invoke-virtual {v1, v0, v7}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    return-object v2

    :cond_4
    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->F()Lrv/a;

    move-result-object v4

    iput-object v1, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->L$0:Ljava/lang/Object;

    iput v5, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lrv/a$a;->i(Lrv/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_5

    return-object v2

    :cond_5
    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    :goto_3
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v4

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->setDownloadStatus(I)V

    :cond_7
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_c

    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    if-eqz v2, :cond_c

    new-instance v4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    const-string v12, "Mp4"

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v6, ""

    if-nez v5, :cond_9

    move-object v13, v6

    goto :goto_5

    :cond_9
    move-object v13, v5

    :goto_5
    :try_start_3
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    move-object v14, v6

    goto :goto_6

    :cond_a
    move-object v14, v5

    :goto_6
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    const-string v19, ""

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "ResourceId"

    :cond_b
    move-object/from16 v20, v0

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->setResources(Ljava/util/List;)V

    :cond_c
    :goto_7
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v0

    goto :goto_9

    :goto_8
    sget-object v4, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchVideoPlayInfoInternal error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "UGCImmVideoDetailViewModel"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_9
    return-object v10
.end method

.method public static final synthetic y0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic z0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final E0(Ljava/util/List;Z)V
    .locals 4

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a0:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a0:Landroidx/lifecycle/b0;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    const-string v0, "<get-values>(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final H0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a0:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final I0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->c0:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final J0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const-string v0, "ugcVideoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFirstVideoDetail--getFirstVideoDetail id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",collectionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "UGCImmVideoDetailViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v7

    new-instance v10, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1;

    const/4 v0, 0x0

    invoke-direct {v10, p0, p1, p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final K0(Ljava/lang/String;)V
    .locals 13

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFirstVideoDetailBySubject id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "UGCImmVideoDetailViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v7

    new-instance v10, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1;

    const/4 v0, 0x0

    invoke-direct {v10, p0, p1, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final L0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->U:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final M0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->V:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final N0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->X:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final O0()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->T:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final P0(Ljava/lang/String;IIZZ)V
    .locals 10

    const-string v0, "collectionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1;

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;IIZZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final R0()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Z:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final S0(ZLjava/lang/String;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, p2, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1;-><init>(ZLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final T0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    const-string v0, "ugcVideoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalDataWithoutNet id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",collectionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "UGCImmVideoDetailViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1;

    const/4 v12, 0x0

    move-object v7, v3

    move-object v8, p2

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v7 .. v12}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final U0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Q:Z

    return v0
.end method

.method public final V0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->J:Ljava/lang/String;

    return-object v0
.end method

.method public final W0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final X0()F
    .locals 1

    iget v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->S:F

    return v0
.end method

.method public final Y0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->R:Z

    return v0
.end method

.method public final Z0(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "ugcVideoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final b1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->R:Z

    return-void
.end method

.method public final c1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Q:Z

    return-void
.end method

.method public final d1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->P:Ljava/lang/String;

    return-void
.end method

.method public final e1(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->S:F

    return-void
.end method

.method public final f1(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJ)V
    .locals 10

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p4

    move-wide v6, p2

    move-object v8, p0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
