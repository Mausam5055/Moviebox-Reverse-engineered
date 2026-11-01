.class public final Lcom/transsion/home/viewmodel/UGCFilmListViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;

.field public static final k:I


# instance fields
.field private final b:Lol/b;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/transsion/moviedetailapi/bean/Pager;

.field private f:Z

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->j:Lcom/transsion/home/viewmodel/UGCFilmListViewModel$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    sget-object p1, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {p1}, Lzg/c$a;->a()Lzg/c;

    move-result-object p1

    const-class v0, Lol/b;

    invoke-virtual {p1, v0}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lol/b;

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->b:Lol/b;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->d:I

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->g:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->h:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static final synthetic c(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i:Z

    return p0
.end method

.method public static final synthetic e(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lcom/transsion/moviedetailapi/bean/Pager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;)Lol/b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->b:Lol/b;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i:Z

    return-void
.end method

.method public static final synthetic h(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;Lcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    return-void
.end method

.method private final i(I)V
    .locals 12

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilmList: start loading, page="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", filmType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "FilmListViewModel"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v6

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v7

    new-instance v9, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;

    const/4 v0, 0x0

    invoke-direct {v9, p0, p1, v0}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel$getFilmList$1;-><init>(Lcom/transsion/home/viewmodel/UGCFilmListViewModel;ILkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final j()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->h:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final k()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->g:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 7

    const-string v0, "filmType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->c:Ljava/lang/String;

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: filmType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FilmListViewModel"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->f:Z

    return v0
.end method

.method public final o()V
    .locals 9

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMore: load nextPage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "FilmListViewModel"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->f:Z

    invoke-static {v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i(I)V

    return-void

    :cond_3
    :goto_2
    sget-object v2, Llg/a;->a:Llg/a$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "FilmListViewModel"

    const-string v4, "loadMore: nextPage is null or empty, cannot load more"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->z(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->g:Landroidx/lifecycle/b0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "FilmListViewModel"

    const-string v2, "refresh: reset page to 1 and load first page"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->d:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->e:Lcom/transsion/moviedetailapi/bean/Pager;

    iput-boolean v0, p0, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->f:Z

    invoke-direct {p0, v0}, Lcom/transsion/home/viewmodel/UGCFilmListViewModel;->i(I)V

    return-void
.end method
