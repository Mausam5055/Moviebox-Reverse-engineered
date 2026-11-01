.class public final Lcom/transsion/audio/viewmodel/SubjectListViewModel;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->c:Lcom/transsion/audio/viewmodel/SubjectListViewModel$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Lcom/transsion/audio/viewmodel/f;

    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/audio/viewmodel/g;

    invoke-direct {v0}, Lcom/transsion/audio/viewmodel/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b()Lqy/a;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->j()Lqy/a;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->e()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/audio/viewmodel/SubjectListViewModel;)Lqy/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->i()Lqy/a;

    move-result-object p0

    return-object p0
.end method

.method private static final e()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static synthetic h(Lcom/transsion/audio/viewmodel/SubjectListViewModel;ZLjava/lang/String;Ljava/lang/String;IIIIILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const-string v0, "1"

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    move v7, v1

    goto :goto_3

    :cond_3
    move v7, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v8, v0

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->g(ZLjava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method private final i()Lqy/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method

.method private static final j()Lqy/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lqy/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqy/a;

    return-object v0
.end method


# virtual methods
.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/viewmodel/SubjectListViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final g(ZLjava/lang/String;Ljava/lang/String;IIII)V
    .locals 12

    const-string v0, "nextPage"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v11, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p0

    move-object v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/transsion/audio/viewmodel/SubjectListViewModel$getDownloadList$1;-><init>(Lcom/transsion/audio/viewmodel/SubjectListViewModel;Ljava/lang/String;Ljava/lang/String;IIIIZLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object p1, v0

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v11

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
