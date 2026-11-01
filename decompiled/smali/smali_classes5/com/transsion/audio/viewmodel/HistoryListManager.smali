.class public final Lcom/transsion/audio/viewmodel/HistoryListManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/viewmodel/HistoryListManager$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

.field private static final f:Lkotlin/Lazy;

.field private static g:Z


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/audio/viewmodel/HistoryListManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->e:Lcom/transsion/audio/viewmodel/HistoryListManager$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/audio/viewmodel/e;

    invoke-direct {v1}, Lcom/transsion/audio/viewmodel/e;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->f:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/audio/viewmodel/a;

    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/audio/viewmodel/b;

    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/audio/viewmodel/c;

    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->c:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/audio/viewmodel/d;

    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/audio/viewmodel/HistoryListManager;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->x()Lcom/transsion/audio/viewmodel/HistoryListManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lcj/a;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->y()Lcj/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->l()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->z()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Ljj/a;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/HistoryListManager;->m()Ljj/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/audio/viewmodel/HistoryListManager;)Ljj/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/viewmodel/HistoryListManager;->q()Ljj/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g()Z
    .locals 1

    sget-boolean v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->g:Z

    return v0
.end method

.method public static final synthetic h()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/audio/viewmodel/HistoryListManager;->f:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic i(Lcom/transsion/audio/viewmodel/HistoryListManager;)Lcj/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/viewmodel/HistoryListManager;->u()Lcj/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->g:Z

    return-void
.end method

.method private static final l()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final m()Ljj/a;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->o1()Ljj/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final q()Ljj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj/a;

    return-object v0
.end method

.method public static synthetic t(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0xa

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/viewmodel/HistoryListManager;->s(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private final u()Lcj/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcj/a;

    return-object v0
.end method

.method private static final x()Lcom/transsion/audio/viewmodel/HistoryListManager;
    .locals 1

    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager;

    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/HistoryListManager;-><init>()V

    return-object v0
.end method

.method private static final y()Lcj/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcj/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcj/a;

    return-object v0
.end method

.method private static final z()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final k(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 5

    const-string v0, "audioBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio insert name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1;

    invoke-direct {v0, p1, p0, v4}, Lcom/transsion/audio/viewmodel/HistoryListManager$addToList$1;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v4, v0, p1, v4}, Lkotlinx/coroutines/i;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/audio/viewmodel/HistoryListManager$deleteAll$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$deleteAll$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final o(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 7

    const-string v0, "audioItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/audio/viewmodel/HistoryListManager$deleteItem$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$deleteItem$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final p()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final r()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$getAudioList$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/transsion/audio/viewmodel/HistoryListManager$getResourcePosition$1;-><init>(Lcom/transsion/audio/viewmodel/HistoryListManager;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final v()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/viewmodel/HistoryListManager;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final w(Lcom/transsion/baselib/db/audio/AudioBean;)V
    .locals 7

    const-string v0, "audioBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/audio/viewmodel/HistoryListManager$insert$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/audio/viewmodel/HistoryListManager$insert$1;-><init>(Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/audio/viewmodel/HistoryListManager;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
