.class public final Lcom/transsion/moviedetail/staff/y;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Lkotlin/Lazy;

.field private g:I

.field private h:Z

.field private i:Lio/reactivex/rxjava3/disposables/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/moviedetail/staff/y;->a:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/moviedetail/staff/y;->b:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/moviedetail/staff/y;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/moviedetail/staff/y;->d:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/moviedetail/staff/y;->e:Landroidx/lifecycle/b0;

    new-instance v0, Lcom/transsion/moviedetail/staff/x;

    invoke-direct {v0}, Lcom/transsion/moviedetail/staff/x;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/moviedetail/staff/y;->f:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/moviedetail/staff/y;->g:I

    iput-boolean v0, p0, Lcom/transsion/moviedetail/staff/y;->h:Z

    return-void
.end method

.method public static synthetic b()Lcom/transsion/moviedetail/staff/a;
    .locals 1

    invoke-static {}, Lcom/transsion/moviedetail/staff/y;->x()Lcom/transsion/moviedetail/staff/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/moviedetail/staff/y;)Lio/reactivex/rxjava3/disposables/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/moviedetail/staff/y;->i:Lio/reactivex/rxjava3/disposables/c;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/moviedetail/staff/y;)Lcom/transsion/moviedetail/staff/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/moviedetail/staff/y;->r()Lcom/transsion/moviedetail/staff/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/moviedetail/staff/y;->e:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/moviedetail/staff/y;->a:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/moviedetail/staff/y;->b:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/moviedetail/staff/y;->c:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/moviedetail/staff/y;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/moviedetail/staff/y;->d:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/moviedetail/staff/y;)I
    .locals 0

    iget p0, p0, Lcom/transsion/moviedetail/staff/y;->g:I

    return p0
.end method

.method public static final synthetic k(Lcom/transsion/moviedetail/staff/y;Lio/reactivex/rxjava3/disposables/c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/staff/y;->i:Lio/reactivex/rxjava3/disposables/c;

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/moviedetail/staff/y;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/moviedetail/staff/y;->h:Z

    return-void
.end method

.method public static final synthetic m(Lcom/transsion/moviedetail/staff/y;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/moviedetail/staff/y;->g:I

    return-void
.end method

.method private final r()Lcom/transsion/moviedetail/staff/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetail/staff/a;

    return-object v0
.end method

.method private static final x()Lcom/transsion/moviedetail/staff/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/moviedetail/staff/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetail/staff/a;

    return-object v0
.end method


# virtual methods
.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y;->c:Landroidx/lifecycle/b0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/moviedetail/staff/y;->r()Lcom/transsion/moviedetail/staff/a;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/transsion/moviedetail/staff/a$a;->b(Lcom/transsion/moviedetail/staff/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/moviedetail/staff/y$a;

    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/staff/y$a;-><init>(Lcom/transsion/moviedetail/staff/y;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/moviedetail/staff/y;->r()Lcom/transsion/moviedetail/staff/a;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/transsion/moviedetail/staff/a$a;->a(Lcom/transsion/moviedetail/staff/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/moviedetail/staff/y$b;

    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/staff/y$b;-><init>(Lcom/transsion/moviedetail/staff/y;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final q(Ljava/lang/String;I)V
    .locals 10

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/transsion/moviedetail/staff/y;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y;->i:Lio/reactivex/rxjava3/disposables/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/transsion/moviedetail/staff/y;->g:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :goto_0
    move v5, p2

    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x3c

    add-int v1, p2, v0

    add-int/lit8 p2, v1, 0x3b

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/transsion/moviedetail/staff/y;->r()Lcom/transsion/moviedetail/staff/a;

    move-result-object v2

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Lcom/transsion/moviedetail/staff/a$a;->c(Lcom/transsion/moviedetail/staff/a;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object p2, Lsg/d;->a:Lsg/d;

    invoke-virtual {p2}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance p2, Lcom/transsion/moviedetail/staff/y$c;

    invoke-direct {p2, p0}, Lcom/transsion/moviedetail/staff/y$c;-><init>(Lcom/transsion/moviedetail/staff/y;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final s()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final t()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final u()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final v()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/staff/y;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final y(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "staffId"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v1, Lcom/transsion/moviedetail/staff/y$d;

    invoke-direct {v1, v0}, Lcom/transsion/moviedetail/staff/y$d;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/moviedetail/staff/y$e;

    invoke-direct {v0, p0}, Lcom/transsion/moviedetail/staff/y$e;-><init>(Lcom/transsion/moviedetail/staff/y;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->n(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/moviedetail/staff/y$f;

    invoke-direct {v0, p0, p2}, Lcom/transsion/moviedetail/staff/y$f;-><init>(Lcom/transsion/moviedetail/staff/y;I)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
