.class public final Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;
.super Landroidx/lifecycle/b;


# instance fields
.field private b:I

.field private c:I

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->b:I

    const/16 p1, 0xa

    iput p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->c:I

    new-instance p1, Lcom/transsion/shorttv/_channel/ui/viewmodel/a;

    invoke-direct {p1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->d:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/shorttv/_channel/ui/viewmodel/b;

    invoke-direct {p1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->h()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Lnr/a;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->n()Lnr/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->c:I

    return p0
.end method

.method public static final synthetic f(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;)Lnr/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->l()Lnr/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->m(Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;)V

    return-void
.end method

.method private static final h()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private final l()Lnr/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnr/a;

    return-object v0
.end method

.method private final m(Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;->getList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/shorttv/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryItemBean;->getSubject()Lcom/transsion/shorttv/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvCategoryBean;->getOps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/Subject;->setOps(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static final n()Lnr/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lnr/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnr/a;

    return-object v0
.end method


# virtual methods
.method public final i(Ljava/lang/String;)V
    .locals 7

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel$getCategoryList$1;-><init>(Ljava/lang/String;Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->b:I

    return v0
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/shorttv/_channel/ui/viewmodel/ShortTvCategoryViewModel;->b:I

    return-void
.end method
