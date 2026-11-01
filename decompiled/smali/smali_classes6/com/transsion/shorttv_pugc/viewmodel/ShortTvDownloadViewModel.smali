.class public final Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private final i:Landroidx/lifecycle/b0;

.field private final j:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->k:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/shorttv_pugc/viewmodel/a;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/viewmodel/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->b:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->e:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->f:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->g:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->h:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->j:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic b()Lrt/a;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->p()Lrt/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;)Lrt/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->f()Lrt/a;

    move-result-object p0

    return-object p0
.end method

.method private final f()Lrt/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrt/a;

    return-object v0
.end method

.method private static final p()Lrt/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lrt/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrt/a;

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/transsion/shorttv_pugc/bean/Subject;)V
    .locals 11

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/Subject;->getShortTVFavInfo()Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;->getHasFavorite()Z

    move-result v2

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v8, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel$favorite$1;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel$favorite$1;-><init>(Lcom/transsion/shorttv_pugc/bean/Subject;ZLcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;Lcom/transsion/shorttv_pugc/bean/ShortTVFavInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 p1, 0x0

    const/4 v7, 0x0

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final g(Ljava/lang/String;II)V
    .locals 0

    const-string p2, "subjectId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->f:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->i:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->h:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->j:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final q(Lot/c;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lot/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lot/c;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lot/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->c:Landroidx/lifecycle/b0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
