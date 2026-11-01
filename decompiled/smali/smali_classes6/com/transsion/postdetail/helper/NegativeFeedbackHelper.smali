.class public final Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

.field private static final b:Ljava/lang/String;

.field private static final c:Lkotlin/Lazy;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    invoke-direct {v0}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;-><init>()V

    sput-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    const-string v0, "NegativeFeedbackHelper"

    sput-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->b:Ljava/lang/String;

    new-instance v0, Lcom/transsion/postdetail/helper/e;

    invoke-direct {v0}, Lcom/transsion/postdetail/helper/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->c:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lxo/b;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->h()Lxo/b;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;)Lxo/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->g()Lxo/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final g()Lxo/b;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method

.method private static final h()Lxo/b;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lxo/b;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxo/b;

    return-object v0
.end method

.method private final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    new-instance v7, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$submitFeedback$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p6, 0x3

    const/4 v0, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object p1, p5

    move-object p4, v7

    move p5, p6

    move-object p6, v0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->e:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->d:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->e:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->d:Ljava/lang/String;

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlinx/coroutines/n0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 9

    const-string v0, "postId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object p1, p4

    move-object p4, v0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
