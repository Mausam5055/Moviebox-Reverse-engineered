.class public final Lcom/transsion/home/viewmodel/RankAllViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Landroidx/lifecycle/b0;

.field private c:I

.field private final d:Lol/d;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->a:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->b:Landroidx/lifecycle/b0;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->c:I

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lol/d;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol/d;

    iput-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->d:Lol/d;

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/home/viewmodel/RankAllViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/home/viewmodel/RankAllViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->c:I

    return p0
.end method

.method public static final synthetic d(Lcom/transsion/home/viewmodel/RankAllViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/home/viewmodel/RankAllViewModel;)Lol/d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->d:Lol/d;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/home/viewmodel/RankAllViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->f:I

    return p0
.end method

.method public static final synthetic g(Lcom/transsion/home/viewmodel/RankAllViewModel;Lcom/transsion/home/bean/RankAllData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->m(Lcom/transsion/home/bean/RankAllData;)V

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/home/viewmodel/RankAllViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->c:I

    return-void
.end method

.method private final m(Lcom/transsion/home/bean/RankAllData;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getOps()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/home/bean/RankAllData;->getSubjects()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    invoke-virtual {v1, v0}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private final n(Z)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsion/home/viewmodel/RankAllViewModel$startRequest$1;-><init>(ZLcom/transsion/home/viewmodel/RankAllViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->e:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->f:I

    iput-object p3, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->g:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/home/viewmodel/RankAllViewModel;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/home/viewmodel/RankAllViewModel;->n(Z)V

    return-void
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/RankAllViewModel;->n(Z)V

    return-void
.end method
