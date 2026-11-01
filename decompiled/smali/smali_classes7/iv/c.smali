.class public final Liv/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liv/c$a;,
        Liv/c$b;
    }
.end annotation


# static fields
.field public static final d:Liv/c$a;

.field private static final e:Ljava/lang/String;

.field private static final f:Lkotlin/Lazy;


# instance fields
.field private final a:Lcom/transsion/transfer/impl/g;

.field private b:Lcom/transsion/transfer/impl/i;

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Liv/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Liv/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Liv/c;->d:Liv/c$a;

    const-class v0, Liv/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liv/c;->e:Ljava/lang/String;

    new-instance v0, Liv/a;

    invoke-direct {v0}, Liv/a;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Liv/c;->f:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V
    .locals 1

    const-string v0, "fileHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv/c;->a:Lcom/transsion/transfer/impl/g;

    iput-object p2, p0, Liv/c;->b:Lcom/transsion/transfer/impl/i;

    new-instance p1, Liv/b;

    invoke-direct {p1, p0}, Liv/b;-><init>(Liv/c;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Liv/c;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lcom/google/gson/Gson;
    .locals 1

    invoke-static {}, Liv/c;->f()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Liv/c;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Liv/c;->g(Liv/c;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Liv/c;->f:Lkotlin/Lazy;

    return-object v0
.end method

.method private final d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Liv/c;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final f()Lcom/google/gson/Gson;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method private static final g(Liv/c;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Liv/c$b;

    new-instance v2, Lcom/transsion/transfer/impl/server/service/b;

    iget-object v3, p0, Liv/c;->a:Lcom/transsion/transfer/impl/g;

    iget-object v4, p0, Liv/c;->b:Lcom/transsion/transfer/impl/i;

    invoke-direct {v2, v3, v4}, Lcom/transsion/transfer/impl/server/service/b;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    const-string v3, "get"

    const-string v4, "/client/getTransferFilesList"

    invoke-direct {v1, v3, v4, v2}, Liv/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Liv/c$b;

    new-instance v2, Lcom/transsion/transfer/impl/server/service/a;

    iget-object v4, p0, Liv/c;->a:Lcom/transsion/transfer/impl/g;

    iget-object v5, p0, Liv/c;->b:Lcom/transsion/transfer/impl/i;

    invoke-direct {v2, v4, v5}, Lcom/transsion/transfer/impl/server/service/a;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    const-string v4, "/client/fetchFile*"

    invoke-direct {v1, v3, v4, v2}, Liv/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Liv/c$b;

    new-instance v2, Lcom/transsion/transfer/impl/server/service/d;

    iget-object v4, p0, Liv/c;->a:Lcom/transsion/transfer/impl/g;

    iget-object v5, p0, Liv/c;->b:Lcom/transsion/transfer/impl/i;

    invoke-direct {v2, v4, v5}, Lcom/transsion/transfer/impl/server/service/d;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    const-string v4, "/client/notifyServerCreate"

    invoke-direct {v1, v3, v4, v2}, Liv/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Liv/c$b;

    new-instance v2, Lcom/transsion/transfer/impl/server/service/c;

    iget-object v4, p0, Liv/c;->a:Lcom/transsion/transfer/impl/g;

    iget-object v5, p0, Liv/c;->b:Lcom/transsion/transfer/impl/i;

    invoke-direct {v2, v4, v5}, Lcom/transsion/transfer/impl/server/service/c;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    const-string v4, "/client/notifyClientClose"

    invoke-direct {v1, v3, v4, v2}, Liv/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Liv/c$b;

    new-instance v2, Lcom/transsion/transfer/impl/server/service/g;

    iget-object v4, p0, Liv/c;->a:Lcom/transsion/transfer/impl/g;

    iget-object v5, p0, Liv/c;->b:Lcom/transsion/transfer/impl/i;

    invoke-direct {v2, v4, v5}, Lcom/transsion/transfer/impl/server/service/g;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    const-string v4, "/client/notifyServerSendComplete"

    invoke-direct {v1, v3, v4, v2}, Liv/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Liv/c$b;

    new-instance v2, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;

    iget-object v3, p0, Liv/c;->a:Lcom/transsion/transfer/impl/g;

    iget-object v4, p0, Liv/c;->b:Lcom/transsion/transfer/impl/i;

    invoke-direct {v2, v3, v4}, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    const-string v3, "post"

    const-string v4, "/client/notifyFileTaskFinish"

    invoke-direct {v1, v3, v4, v2}, Liv/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Liv/c$b;

    new-instance v2, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;

    iget-object v4, p0, Liv/c;->a:Lcom/transsion/transfer/impl/g;

    iget-object p0, p0, Liv/c;->b:Lcom/transsion/transfer/impl/i;

    invoke-direct {v2, v4, p0}, Lcom/transsion/transfer/impl/server/service/NotifyFileErrorService;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    const-string p0, "/client/notifyFileTaskError"

    invoke-direct {v1, v3, p0, v2}, Liv/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final e()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Liv/c;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
