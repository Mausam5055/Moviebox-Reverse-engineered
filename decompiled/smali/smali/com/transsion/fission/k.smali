.class public final Lcom/transsion/fission/k;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/fission/k;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/transsion/fission/FissionConfig;

.field private static final d:Lkotlinx/coroutines/n0;

.field private static final e:Lkotlin/Lazy;

.field private static final f:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/fission/k;

    invoke-direct {v0}, Lcom/transsion/fission/k;-><init>()V

    sput-object v0, Lcom/transsion/fission/k;->a:Lcom/transsion/fission/k;

    const-string v0, "FissionManager"

    sput-object v0, Lcom/transsion/fission/k;->b:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    sput-object v0, Lcom/transsion/fission/k;->d:Lkotlinx/coroutines/n0;

    new-instance v0, Lcom/transsion/fission/g;

    invoke-direct {v0}, Lcom/transsion/fission/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/fission/k;->e:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/fission/h;

    invoke-direct {v0}, Lcom/transsion/fission/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/fission/k;->f:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/fission/k;->e()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lxk/a;
    .locals 1

    invoke-static {}, Lcom/transsion/fission/k;->f()Lxk/a;

    move-result-object v0

    return-object v0
.end method

.method private static final e()Lcom/transsnet/loginapi/ILoginApi;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/loginapi/ILoginApi;

    return-object v0
.end method

.method private static final f()Lxk/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lxk/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk/a;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/fission/l;->a:Lcom/transsion/fission/l;

    invoke-virtual {v0}, Lcom/transsion/fission/l;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/transsion/fission/FissionConfig;
    .locals 1

    sget-object v0, Lcom/transsion/fission/k;->c:Lcom/transsion/fission/FissionConfig;

    return-object v0
.end method
