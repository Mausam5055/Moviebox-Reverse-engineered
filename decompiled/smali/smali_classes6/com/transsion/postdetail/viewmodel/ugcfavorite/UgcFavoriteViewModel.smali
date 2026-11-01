.class public final Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;
.super Landroidx/lifecycle/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$a;

.field private static i:I


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Ljq/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->h:Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$a;

    const/16 v0, 0xa

    sput v0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->b:Landroidx/lifecycle/b0;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->c:Landroidx/lifecycle/b0;

    sget-object p1, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {p1}, Lzg/c$a;->a()Lzg/c;

    move-result-object p1

    const-class v0, Ljq/a;

    invoke-virtual {p1, v0}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljq/a;

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->d:Ljq/a;

    return-void
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->i:I

    return v0
.end method

.method public static final synthetic d(Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;)Ljq/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->d:Ljq/a;

    return-object p0
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->f:Ljava/lang/String;

    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v4, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel$getUgcVideoFavoriteList$1;-><init>(Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->g:Z

    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->g:Z

    const/4 v0, 0x1

    const-string v1, "UgcFavoriteViewModel"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadMore: load nextPage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v2, "loadMore: nextPage is null or empty, cannot load more"

    invoke-virtual {p1, v1, v2, v0}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->b:Landroidx/lifecycle/b0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final i()V
    .locals 4

    sget-object v0, Llg/a;->a:Llg/a$a;

    const-string v1, "UgcFavoriteViewModel"

    const-string v2, "refresh: reset page to 1 and load first page"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->e:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->g:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
