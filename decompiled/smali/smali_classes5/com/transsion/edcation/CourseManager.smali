.class public final Lcom/transsion/edcation/CourseManager;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/n0;


# static fields
.field public static final a:Lcom/transsion/edcation/CourseManager;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static d:Z

.field private static final e:Lkotlinx/coroutines/flow/x0;

.field private static final f:Lkotlinx/coroutines/flow/y0;

.field private static final g:Lkotlinx/coroutines/flow/y0;

.field private static final h:Lkotlinx/coroutines/flow/x0;

.field private static i:Lkotlinx/coroutines/t1;

.field private static final j:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/edcation/CourseManager;

    invoke-direct {v0}, Lcom/transsion/edcation/CourseManager;-><init>()V

    sput-object v0, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    new-instance v0, Lcom/transsion/edcation/a;

    invoke-direct {v0}, Lcom/transsion/edcation/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/edcation/CourseManager;->b:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/edcation/b;

    invoke-direct {v0}, Lcom/transsion/edcation/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/edcation/CourseManager;->c:Lkotlin/Lazy;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/edcation/CourseManager;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/d1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    move-result-object v4

    sput-object v4, Lcom/transsion/edcation/CourseManager;->e:Lkotlinx/coroutines/flow/x0;

    invoke-static {v2}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v4

    sput-object v4, Lcom/transsion/edcation/CourseManager;->f:Lkotlinx/coroutines/flow/y0;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v4

    sput-object v4, Lcom/transsion/edcation/CourseManager;->g:Lkotlinx/coroutines/flow/y0;

    invoke-static {v1, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/d1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    move-result-object v1

    sput-object v1, Lcom/transsion/edcation/CourseManager;->h:Lkotlinx/coroutines/flow/x0;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v2, v0, v2}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sput-object v0, Lcom/transsion/edcation/CourseManager;->j:Lkotlin/coroutines/CoroutineContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/transsion/edcation/CourseManager;->o()Z

    move-result v0

    return v0
.end method

.method public static synthetic b()Lcom/transsion/edcation/c;
    .locals 1

    invoke-static {}, Lcom/transsion/edcation/CourseManager;->p()Lcom/transsion/edcation/c;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/edcation/CourseManager;)Lcom/transsion/edcation/c;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/edcation/CourseManager;->l()Lcom/transsion/edcation/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/edcation/CourseManager;Lcom/transsion/edcation/bean/CourseBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/edcation/CourseManager;->q(Lcom/transsion/edcation/bean/CourseBean;)V

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/edcation/CourseManager;Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/edcation/CourseManager;->x(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/edcation/CourseManager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/edcation/CourseManager;->y(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final l()Lcom/transsion/edcation/c;
    .locals 1

    sget-object v0, Lcom/transsion/edcation/CourseManager;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/edcation/c;

    return-object v0
.end method

.method private final n()Z
    .locals 1

    sget-object v0, Lcom/transsion/edcation/CourseManager;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static final o()Z
    .locals 3

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "edu_interest_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static final p()Lcom/transsion/edcation/c;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lcom/transsion/edcation/c;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/edcation/c;

    return-object v0
.end method

.method private final q(Lcom/transsion/edcation/bean/CourseBean;)V
    .locals 9

    sget-object v0, Lcom/transsion/edcation/CourseManager;->i:Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    new-instance v6, Lcom/transsion/edcation/CourseManager$notifyCourse$1;

    invoke-direct {v6, p1, v1}, Lcom/transsion/edcation/CourseManager$notifyCourse$1;-><init>(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    sput-object p1, Lcom/transsion/edcation/CourseManager;->i:Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static synthetic s(Lcom/transsion/edcation/CourseManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const-string p1, "1"

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/CourseManager;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Lcom/transsion/edcation/CourseManager;Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/edcation/CourseManager;->u(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Boolean;)V

    return-void
.end method

.method private final x(Lcom/transsion/edcation/bean/CourseBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/transsion/edcation/CourseManager$updateCourse$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;

    iget v1, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/edcation/CourseManager$updateCourse$1;-><init>(Lcom/transsion/edcation/CourseManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/transsion/edcation/CourseManager;->g:Lkotlinx/coroutines/flow/y0;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/y0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_6

    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/transsion/edcation/bean/CourseBean;

    invoke-virtual {v7}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSubjectId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_5
    move-object v6, v5

    :goto_1
    check-cast v6, Lcom/transsion/edcation/bean/CourseBean;

    goto :goto_2

    :cond_6
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_7

    invoke-interface {p2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_7
    invoke-virtual {p1}, Lcom/transsion/edcation/bean/CourseBean;->getSeenStatus()I

    move-result v2

    if-ne v2, v4, :cond_8

    if-eqz p2, :cond_8

    const/4 v2, 0x0

    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_8
    sget-object p1, Lcom/transsion/edcation/CourseManager;->g:Lkotlinx/coroutines/flow/y0;

    iput-object p2, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->label:I

    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/flow/x0;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object p1, p2

    :goto_3
    sget-object p2, Lcom/transsion/edcation/CourseManager;->f:Lkotlinx/coroutines/flow/y0;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/edcation/bean/CourseBean;

    goto :goto_4

    :cond_a
    move-object p1, v5

    :goto_4
    iput-object v5, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/transsion/edcation/CourseManager$updateCourse$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/x0;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method private final y(Ljava/util/List;Ljava/lang/String;)V
    .locals 6

    new-instance v3, Lcom/transsion/edcation/CourseManager$updateCourseList$1;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p1, v0}, Lcom/transsion/edcation/CourseManager$updateCourseList$1;-><init>(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    sget-object v0, Lcom/transsion/edcation/CourseManager;->j:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final h(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/edcation/CourseManager;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/transsion/edcation/CourseManager;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/edcation/dialog/InterestSelectDialog;

    invoke-direct {v0}, Lcom/transsion/edcation/dialog/InterestSelectDialog;-><init>()V

    const-string v1, "InterestSelectDialog"

    invoke-virtual {v0, p1, v1}, Lcom/transsion/baseui/dialog/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/y0;
    .locals 1

    sget-object v0, Lcom/transsion/edcation/CourseManager;->g:Lkotlinx/coroutines/flow/y0;

    return-object v0
.end method

.method public final j()Lkotlinx/coroutines/flow/x0;
    .locals 1

    sget-object v0, Lcom/transsion/edcation/CourseManager;->h:Lkotlinx/coroutines/flow/x0;

    return-object v0
.end method

.method public final k()Lkotlinx/coroutines/flow/x0;
    .locals 1

    sget-object v0, Lcom/transsion/edcation/CourseManager;->e:Lkotlinx/coroutines/flow/x0;

    return-object v0
.end method

.method public final m()Lkotlinx/coroutines/flow/y0;
    .locals 1

    sget-object v0, Lcom/transsion/edcation/CourseManager;->f:Lkotlinx/coroutines/flow/y0;

    return-object v0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/edcation/CourseManager;->l()Lcom/transsion/edcation/c;

    move-result-object v1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/edcation/c$a;->b(Lcom/transsion/edcation/c;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    invoke-static {}, Lqz/a;->c()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->v(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lcom/transsion/edcation/CourseManager$a;->a:Lcom/transsion/edcation/CourseManager$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->x(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/edcation/CourseManager$refreshCourseList$2;

    invoke-direct {v1, p1, p2}, Lcom/transsion/edcation/CourseManager$refreshCourseList$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final t(Z)V
    .locals 0

    sput-boolean p1, Lcom/transsion/edcation/CourseManager;->d:Z

    return-void
.end method

.method public final u(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Boolean;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v3, Lcom/transsion/edcation/CourseManager$subscribeCourse$1;

    const/4 v0, 0x0

    invoke-direct {v3, p1, p2, v0}, Lcom/transsion/edcation/CourseManager$subscribeCourse$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/Boolean;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v3, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1;

    const/4 v0, 0x0

    invoke-direct {v3, p2, p1, v0}, Lcom/transsion/edcation/CourseManager$subscribeCourseById$1;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
