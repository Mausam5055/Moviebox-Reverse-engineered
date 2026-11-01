.class public final Lcom/transsion/moviedetail/preload/b;
.super Lqm/b;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Integer;

.field private h:Z

.field private final i:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lqm/b;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/moviedetail/preload/b;->g:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/transsion/moviedetail/preload/b;->h:Z

    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/transsion/moviedetail/preload/a;

    invoke-direct {p2}, Lcom/transsion/moviedetail/preload/a;-><init>()V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b;->i:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/moviedetail/preload/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static synthetic k()Lfn/a;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/preload/b;->n()Lfn/a;

    move-result-object v0

    return-object v0
.end method

.method private final l()Lfn/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/preload/b;->i:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfn/a;

    return-object v0
.end method

.method private static final n()Lfn/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lfn/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfn/a;

    return-object v0
.end method


# virtual methods
.method public h(Landroidx/lifecycle/b0;)V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/moviedetail/preload/b;->l()Lfn/a;

    move-result-object p1

    sget-object v0, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v0}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/moviedetail/preload/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/moviedetail/preload/b;->g:Ljava/lang/Integer;

    invoke-interface {p1, v0, v1, v2}, Lfn/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/moviedetail/preload/b$a;

    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/preload/b$a;-><init>(Lcom/transsion/moviedetail/preload/b;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/moviedetail/preload/b;->h:Z

    return v0
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/moviedetail/preload/b;->h:Z

    return-void
.end method

.method public final p(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b;->g:Ljava/lang/Integer;

    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/moviedetail/preload/b;->f:Ljava/lang/String;

    return-void
.end method
