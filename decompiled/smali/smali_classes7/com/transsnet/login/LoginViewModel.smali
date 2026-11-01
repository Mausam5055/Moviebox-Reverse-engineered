.class public final Lcom/transsnet/login/LoginViewModel;
.super Landroidx/lifecycle/t0;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/LiveData;

.field private final d:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsnet/login/LoginViewModel;->a:Landroidx/lifecycle/b0;

    new-instance v1, Lcom/transsnet/login/u;

    invoke-direct {v1}, Lcom/transsnet/login/u;-><init>()V

    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/transsnet/login/LoginViewModel;->b:Lkotlin/Lazy;

    iput-object v0, p0, Lcom/transsnet/login/LoginViewModel;->c:Landroidx/lifecycle/LiveData;

    new-instance v0, Lcom/transsnet/login/v;

    invoke-direct {v0}, Lcom/transsnet/login/v;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/login/LoginViewModel;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b()Lcom/transsion/memberapi/IPremiumApi;
    .locals 1

    invoke-static {}, Lcom/transsnet/login/LoginViewModel;->n()Lcom/transsion/memberapi/IPremiumApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Laz/a;
    .locals 1

    invoke-static {}, Lcom/transsnet/login/LoginViewModel;->m()Laz/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsnet/login/LoginViewModel;)Laz/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/login/LoginViewModel;->h()Laz/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsnet/login/LoginViewModel;)Lcom/transsion/memberapi/IPremiumApi;
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/login/LoginViewModel;->i()Lcom/transsion/memberapi/IPremiumApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsnet/login/LoginViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsnet/login/LoginViewModel;->a:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsnet/login/LoginViewModel;Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsnet/login/LoginViewModel;->l(Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method private final h()Laz/a;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/LoginViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laz/a;

    return-object v0
.end method

.method private final i()Lcom/transsion/memberapi/IPremiumApi;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/LoginViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IPremiumApi;

    return-object v0
.end method

.method private final l(Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsnet/login/LoginViewModel$handleLoginSuccess$1;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p2, v1}, Lcom/transsnet/login/LoginViewModel$handleLoginSuccess$1;-><init>(Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final m()Laz/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Laz/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laz/a;

    return-object v0
.end method

.method private static final n()Lcom/transsion/memberapi/IPremiumApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IPremiumApi;

    return-object v0
.end method

.method private final o(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/j;->t(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lcom/transsnet/login/LoginViewModel$a;->a:Lcom/transsnet/login/LoginViewModel$a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsnet/login/LoginViewModel$b;

    invoke-direct {v0, p0}, Lcom/transsnet/login/LoginViewModel$b;-><init>(Lcom/transsnet/login/LoginViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->n(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsnet/login/LoginViewModel$c;

    invoke-direct {v0, p0, p3, p2}, Lcom/transsnet/login/LoginViewModel$c;-><init>(Lcom/transsnet/login/LoginViewModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/LoginViewModel;->c:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "idToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "channel"

    const-string v3, "GOOGLE"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, v3, p2}, Lcom/transsnet/login/LoginViewModel;->o(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
