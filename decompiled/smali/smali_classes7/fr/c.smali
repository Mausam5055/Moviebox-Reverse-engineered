.class public final Lfr/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/c$a;
    }
.end annotation


# static fields
.field public static final b:Lfr/c$a;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfr/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfr/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfr/c;->b:Lfr/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfr/b;

    invoke-direct {v0}, Lfr/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lfr/c;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lfr/a;
    .locals 1

    invoke-static {}, Lfr/c;->h()Lfr/a;

    move-result-object v0

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v0}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final d()Lfr/a;
    .locals 1

    iget-object v0, p0, Lfr/c;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfr/a;

    return-object v0
.end method

.method private static final h()Lfr/a;
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
.method public final b(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 2

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lyq/f;->a:Lyq/f;

    invoke-virtual {v0, p1}, Lyq/f;->f(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    new-instance v1, Lfr/c$b;

    invoke-direct {v1, p1}, Lfr/c$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 2

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/c;->d()Lfr/a;

    move-result-object v0

    invoke-direct {p0}, Lfr/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lfr/a;->d(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 2

    const-string v0, "pageFrom"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/c;->d()Lfr/a;

    move-result-object v0

    invoke-direct {p0}, Lfr/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lfr/a;->c(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 2

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageFrom"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lfr/c;->d()Lfr/a;

    move-result-object v0

    invoke-direct {p0}, Lfr/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lfr/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method
