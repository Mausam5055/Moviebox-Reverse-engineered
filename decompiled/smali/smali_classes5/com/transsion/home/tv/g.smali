.class public final Lcom/transsion/home/tv/g;
.super Landroidx/lifecycle/t0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/tv/g$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/transsion/home/tv/g$a;

.field public static final g:I


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Landroidx/lifecycle/b0;

.field private c:Z

.field private d:Ljava/lang/String;

.field private final e:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/tv/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/tv/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/tv/g;->f:Lcom/transsion/home/tv/g$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/tv/g;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/tv/g;->a:Landroidx/lifecycle/b0;

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/tv/g;->b:Landroidx/lifecycle/b0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/home/tv/g;->c:Z

    new-instance v0, Lcom/transsion/home/tv/f;

    invoke-direct {v0}, Lcom/transsion/home/tv/f;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/tv/g;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic b()Lql/a;
    .locals 1

    invoke-static {}, Lcom/transsion/home/tv/g;->m()Lql/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/home/tv/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/tv/g;->d:Ljava/lang/String;

    return-void
.end method

.method private final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/home/tv/g;->g()Lql/a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, p2, v1, p1}, Lql/a;->d(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/home/tv/g$b;

    invoke-direct {v0, p0, p2}, Lcom/transsion/home/tv/g$b;-><init>(Lcom/transsion/home/tv/g;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method private final g()Lql/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/g;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/a;

    return-object v0
.end method

.method private static final m()Lql/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lql/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql/a;

    return-object v0
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/g;->a:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final f()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/tv/g;->b:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/tv/g;->d:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/home/tv/g;->c:Z

    return v0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    const-string v0, "channelId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/home/tv/g;->g()Lql/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lql/a;->b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    sget-object v1, Lsg/d;->a:Lsg/d;

    invoke-virtual {v1}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/tv/g$c;

    invoke-direct {v1, p1, p0}, Lcom/transsion/home/tv/g$c;-><init>(Ljava/lang/String;Lcom/transsion/home/tv/g;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/tv/g;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/home/tv/g;->c:Z

    invoke-direct {p0, p1, v0}, Lcom/transsion/home/tv/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "TvLiveDetailViewModel"

    const-string v2, "loadMoreChannelList: nextPage is null, stop"

    invoke-virtual {p1, v0, v2, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    const-string v0, "countryCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/home/tv/g;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/home/tv/g;->d:Ljava/lang/String;

    const-string v0, "1"

    invoke-direct {p0, p1, v0}, Lcom/transsion/home/tv/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
