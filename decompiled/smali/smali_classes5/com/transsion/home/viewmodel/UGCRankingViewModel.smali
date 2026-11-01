.class public final Lcom/transsion/home/viewmodel/UGCRankingViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/UGCRankingViewModel$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/home/viewmodel/UGCRankingViewModel$a;

.field public static final h:I


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Landroidx/lifecycle/b0;

.field private c:Ljava/lang/String;

.field private final d:Lol/d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/viewmodel/UGCRankingViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->g:Lcom/transsion/home/viewmodel/UGCRankingViewModel$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->a:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->b:Landroidx/lifecycle/b0;

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->c:Ljava/lang/String;

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lol/d;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol/d;

    iput-object v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->d:Lol/d;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/home/viewmodel/UGCRankingViewModel;Lcom/transsion/home/bean/UGCRankAllData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->i(Lcom/transsion/home/bean/UGCRankAllData;)V

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Lol/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->d:Lol/d;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/home/viewmodel/UGCRankingViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/home/viewmodel/UGCRankingViewModel;Lcom/transsion/home/bean/UGCRankAllData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->o(Lcom/transsion/home/bean/UGCRankAllData;)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/home/viewmodel/UGCRankingViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->c:Ljava/lang/String;

    return-void
.end method

.method private final i(Lcom/transsion/home/bean/UGCRankAllData;)V
    .locals 6

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/home/bean/UGCRankAllData;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getTopicType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UGC_VIDEO"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/transsion/home/bean/UGCRankAllData;->setItems(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private final o(Lcom/transsion/home/bean/UGCRankAllData;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/UGCRankAllData;->getOps()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/home/bean/UGCRankAllData;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;

    move-result-object v1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v2, v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->setOps(Ljava/lang/String;)V

    :cond_4
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->getOps()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_5
    invoke-virtual {v1, v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCCollection;->setOps(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method private final p(Z)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/home/viewmodel/UGCRankingViewModel$startRequest$1;-><init>(ZLcom/transsion/home/viewmodel/UGCRankingViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "tabId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRankData: category="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tabId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "UGCRankingViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->f:Ljava/lang/String;

    const-string p1, "1"

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->p(Z)V

    return-void
.end method

.method public final m()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadMore: currentPage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "UGCRankingViewModel"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->p(Z)V

    return-void
.end method

.method public final n()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh: category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tabId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "UGCRankingViewModel"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/UGCRankingViewModel;->p(Z)V

    return-void
.end method
