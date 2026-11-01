.class public final Lkp/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkp/a;

    invoke-direct {v0}, Lkp/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lkp/b;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Llp/a;
    .locals 1

    invoke-static {}, Lkp/b;->g()Llp/a;

    move-result-object v0

    return-object v0
.end method

.method private final b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v0}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 3

    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method private final d()Llp/a;
    .locals 1

    iget-object v0, p0, Lkp/b;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llp/a;

    return-object v0
.end method

.method private static final g()Llp/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Llp/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llp/a;

    return-object v0
.end method


# virtual methods
.method public final e(Lcom/transsion/publish/api/bean/RequestPostEntity;)Lio/reactivex/rxjava3/core/j;
    .locals 2

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkp/b;->c(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0}, Lkp/b;->d()Llp/a;

    move-result-object v0

    invoke-direct {p0}, Lkp/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llp/a;->b(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lcom/transsion/publish/api/bean/RequestPostEntity;)Lio/reactivex/rxjava3/core/j;
    .locals 2

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toJson(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkp/b;->c(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0}, Lkp/b;->d()Llp/a;

    move-result-object v0

    invoke-direct {p0}, Lkp/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llp/a;->c(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method
