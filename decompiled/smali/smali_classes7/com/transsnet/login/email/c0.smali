.class public final Lcom/transsnet/login/email/c0;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsnet/login/email/b0;

    invoke-direct {v0}, Lcom/transsnet/login/email/b0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/login/email/c0;->a:Lkotlin/Lazy;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/login/email/c0;->b:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/login/email/c0;->c:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/login/email/c0;->d:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic b()Lcom/transsnet/login/email/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/login/email/c0;->l()Lcom/transsnet/login/email/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsnet/login/email/c0;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/login/email/c0;->b:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsnet/login/email/c0;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/login/email/c0;->c:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/login/email/c0;)Lcom/transsnet/login/email/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/login/email/c0;->k()Lcom/transsnet/login/email/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/transsnet/login/email/c0;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/login/email/c0;->h(Ljava/lang/String;I)V

    return-void
.end method

.method private final k()Lcom/transsnet/login/email/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/c0;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/login/email/a;

    return-object v0
.end method

.method private static final l()Lcom/transsnet/login/email/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsnet/login/email/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/login/email/a;

    return-object v0
.end method


# virtual methods
.method public final f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsnet/login/email/c0$a;

    invoke-direct {v1, p1}, Lcom/transsnet/login/email/c0$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsnet/login/email/c0$b;

    invoke-direct {v0, p0}, Lcom/transsnet/login/email/c0$b;-><init>(Lcom/transsnet/login/email/c0;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->n(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsnet/login/email/c0$c;

    invoke-direct {v0, p0}, Lcom/transsnet/login/email/c0$c;-><init>(Lcom/transsnet/login/email/c0;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final g()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/c0;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final h(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lvy/f;->a:Lvy/f;

    invoke-virtual {v0}, Lvy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v0, v1, v5

    if-gtz v0, :cond_0

    const-wide/32 v0, 0xea60

    cmp-long v0, v5, v0

    if-gez v0, :cond_0

    iget-object p2, p0, Lcom/transsnet/login/email/c0;->c:Landroidx/lifecycle/b0;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "mail"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "authType"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p2

    new-instance v1, Lcom/transsnet/login/email/c0$d;

    invoke-direct {v1, v0}, Lcom/transsnet/login/email/c0$d;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p2

    new-instance v0, Lcom/transsnet/login/email/c0$e;

    invoke-direct {v0, p0}, Lcom/transsnet/login/email/c0$e;-><init>(Lcom/transsnet/login/email/c0;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/j;->n(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p2

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p2

    new-instance v0, Lcom/transsnet/login/email/c0$f;

    invoke-direct {v0, p0, p1}, Lcom/transsnet/login/email/c0$f;-><init>(Lcom/transsnet/login/email/c0;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/c0;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method
