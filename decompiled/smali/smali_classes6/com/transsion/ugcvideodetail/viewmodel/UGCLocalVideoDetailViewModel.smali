.class public final Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->g:Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/b;

    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/viewmodel/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->f:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static synthetic b()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    invoke-static {}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->l()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->g()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->e:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final g()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    return-object v0
.end method

.method private static final l()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 7

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayInfo$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel$getPlayList$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final k()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCLocalVideoDetailViewModel;->f:Landroidx/lifecycle/LiveData;

    return-object v0
.end method
