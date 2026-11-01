.class public final Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private f:Ljava/lang/String;

.field private final g:Landroidx/lifecycle/b0;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->i:Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/search_pugc/fragment/result/o;

    invoke-direct {p1}, Lcom/transsion/search_pugc/fragment/result/o;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->b:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->c:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->d:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->e:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->g:Landroidx/lifecycle/b0;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->h:I

    return-void
.end method

.method public static synthetic c()Lfr/a;
    .locals 1

    invoke-static {}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->o()Lfr/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)I
    .locals 0

    iget p0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->h:I

    return p0
.end method

.method public static final synthetic e(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;)Lfr/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->j()Lfr/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->h:I

    return-void
.end method

.method private final j()Lfr/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/a;

    return-object v0
.end method

.method public static synthetic n(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/search_pugc/bean/SecondTab;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    :cond_1
    move v5, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/search_pugc/bean/SecondTab;)V

    return-void
.end method

.method private static final o()Lfr/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lfr/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/a;

    return-object v0
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->e:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->d:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/search_pugc/bean/SecondTab;)V
    .locals 10

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageFrom"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p5

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel$requestUGCSearchResult$1;-><init>(Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/search_pugc/bean/SecondTab;ZLkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->f:Ljava/lang/String;

    return-void
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/search_pugc/fragment/result/SearchResultViewModel;->h:I

    return-void
.end method
