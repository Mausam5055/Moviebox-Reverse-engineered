.class public final Lcom/transsion/home/viewmodel/UGCFilterViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;

.field public static final g:I


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lol/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->f:Lcom/transsion/home/viewmodel/UGCFilterViewModel$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/home/viewmodel/z;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/z;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->b:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/viewmodel/a0;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/a0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->c:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/home/viewmodel/b0;

    invoke-direct {p1}, Lcom/transsion/home/viewmodel/b0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->d:Lkotlin/Lazy;

    sget-object p1, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {p1}, Lzg/c$a;->a()Lzg/c;

    move-result-object p1

    const-class v0, Lol/c;

    invoke-virtual {p1, v0}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lol/c;

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->e:Lol/c;

    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->q()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->p()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->g()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/home/viewmodel/UGCFilterViewModel;)Lol/c;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->e:Lol/c;

    return-object p0
.end method

.method private static final g()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final p()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method private static final q()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final h(Ljava/lang/String;)Lcom/transsion/home/bean/ugc/UGCFilterItem;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/ugc/UGCFilterResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/ugc/UGCFilterResponse;->getItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/home/bean/ugc/UGCFilterItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/ugc/UGCFilterItem;->getCategoryId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_2
    check-cast v1, Lcom/transsion/home/bean/ugc/UGCFilterItem;

    :cond_3
    return-object v1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 7

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getFilterItems$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getFilterItems$1;-><init>(Ljava/lang/String;Lcom/transsion/home/viewmodel/UGCFilterViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->k()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 15

    const-string v0, "category"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Education"

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v13

    new-instance v14, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;

    const/4 v12, 0x0

    move-object v1, v14

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    move-object v9, p0

    move/from16 v10, p3

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v12}, Lcom/transsion/home/viewmodel/UGCFilterViewModel$getUGCContentList$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ZLcom/transsion/home/viewmodel/UGCFilterViewModel;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 p1, v0

    move-object/from16 p2, v13

    move-object/from16 p3, v3

    move-object/from16 p4, v14

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->o()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilterViewModel;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method
