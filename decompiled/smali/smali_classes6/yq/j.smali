.class public final Lyq/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyq/j$a;
    }
.end annotation


# static fields
.field public static final b:Lyq/j$a;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyq/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyq/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lyq/j;->b:Lyq/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyq/i;

    invoke-direct {v0}, Lyq/i;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lyq/j;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lyq/g;
    .locals 1

    invoke-static {}, Lyq/j;->j()Lyq/g;

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

.method private final f()Lyq/g;
    .locals 1

    iget-object v0, p0, Lyq/j;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyq/g;

    return-object v0
.end method

.method private static final j()Lyq/g;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lyq/g;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyq/g;

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

    new-instance v1, Lyq/j$b;

    invoke-direct {v1, p1}, Lyq/j$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->u(Llz/h;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    const-string v0, "map(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d()Lio/reactivex/rxjava3/core/j;
    .locals 5

    invoke-direct {p0}, Lyq/j;->f()Lyq/g;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lyq/g$a;->a(Lyq/g;IIILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 7

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lyq/j;->f()Lyq/g;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lyq/g$a;->b(Lyq/g;Ljava/lang/String;IIILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lcom/transsion/search/net/RequestJoinGroupEntity;)Lio/reactivex/rxjava3/core/j;
    .locals 3

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "groupId"

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestJoinGroupEntity;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0}, Lyq/j;->f()Lyq/g;

    move-result-object v0

    invoke-direct {p0}, Lyq/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lyq/g;->b(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/transsion/search/net/RequestSearchEntity;)Lio/reactivex/rxjava3/core/j;
    .locals 4

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestSearchEntity;->getPage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "keyword"

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestSearchEntity;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v3, "application/json"

    invoke-virtual {v2, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    invoke-direct {p0}, Lyq/j;->f()Lyq/g;

    move-result-object v0

    invoke-direct {p0}, Lyq/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestSearchEntity;->getPage()I

    move-result v2

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestSearchEntity;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lyq/g;->a(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lcom/transsion/search/net/RequestSearchEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestSearchEntity;->getPage()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestSearchEntity;->getPerPage()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "perPage"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "keyword"

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestSearchEntity;->getKeyword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/search/net/RequestSearchEntity;->getSubjectType()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "subjectType"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "resultMode"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v2, "application/json"

    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-direct {p0}, Lyq/j;->f()Lyq/g;

    move-result-object v0

    invoke-direct {p0}, Lyq/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lyq/g;->e(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
