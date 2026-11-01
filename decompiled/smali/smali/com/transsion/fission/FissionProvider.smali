.class public final Lcom/transsion/fission/FissionProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/fissionapi/IFissionProvider;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/fission/m;

    invoke-direct {v0}, Lcom/transsion/fission/m;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/fission/FissionProvider;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic j()Lxk/b;
    .locals 1

    invoke-static {}, Lcom/transsion/fission/FissionProvider;->m()Lxk/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic k(Lcom/transsion/fission/FissionProvider;)Lxk/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/fission/FissionProvider;->l()Lxk/b;

    move-result-object p0

    return-object p0
.end method

.method private final l()Lxk/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/fission/FissionProvider;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk/b;

    return-object v0
.end method

.method private static final m()Lxk/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lxk/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxk/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "inviteCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/fission/l;->a:Lcom/transsion/fission/l;

    invoke-virtual {v0, p1}, Lcom/transsion/fission/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 4

    sget-object v0, Lc;->a:Lc;

    invoke-virtual {v0}, Lc;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "kv_task_is_exists"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePalmPayTask() ---> isExists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/fission/k;->a:Lcom/transsion/fission/k;

    invoke-virtual {v0}, Lcom/transsion/fission/k;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lzk/b;

    invoke-direct {v0, p1}, Lzk/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public enable()Z
    .locals 2

    sget-object v0, Lcom/transsion/fission/k;->a:Lcom/transsion/fission/k;

    invoke-virtual {v0}, Lcom/transsion/fission/k;->d()Lcom/transsion/fission/FissionConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/fission/WebViewCacheConfigData;->getHtmlUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    xor-int/2addr v0, v1

    return v0
.end method

.method public f(I)V
    .locals 7

    sget-object v0, Lc;->a:Lc;

    invoke-virtual {v0}, Lc;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "kv_task_is_exists"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;-><init>(ILcom/transsion/fission/FissionProvider;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public g()Z
    .locals 4

    sget-object v0, Lc;->a:Lc;

    invoke-virtual {v0}, Lc;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "kv_task_is_exists"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0}, Lc;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v2, "kv_task_is_finished"

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/fission/l;->a:Lcom/transsion/fission/l;

    invoke-virtual {v0}, Lcom/transsion/fission/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method
