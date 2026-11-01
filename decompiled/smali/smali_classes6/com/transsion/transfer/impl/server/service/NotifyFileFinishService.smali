.class public final Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/androidasync/http/server/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService$a;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Lcom/transsion/transfer/impl/g;

.field private b:Lcom/transsion/transfer/impl/i;

.field private final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->d:Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService$a;

    const-class v0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V
    .locals 1

    const-string v0, "fileHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->a:Lcom/transsion/transfer/impl/g;

    iput-object p2, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->b:Lcom/transsion/transfer/impl/i;

    new-instance p1, Lcom/transsion/transfer/impl/server/service/f;

    invoke-direct {p1}, Lcom/transsion/transfer/impl/server/service/f;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lcom/google/gson/Gson;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->d()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method private final c()Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method private static final d()Lcom/google/gson/Gson;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(Lcom/transsion/transfer/androidasync/http/server/b;Lcom/transsion/transfer/androidasync/http/server/d;)V
    .locals 13

    const-string v0, ""

    :try_start_0
    sget-object v1, Liv/c;->d:Liv/c$a;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->getHeaders()Lcom/transsion/transfer/androidasync/http/Headers;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Liv/c$a;->c(Lcom/transsion/transfer/androidasync/http/Headers;)Lkotlin/Triple;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    if-eqz p2, :cond_1

    const-string p1, "protocol version compatible error"

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1, v0}, Liv/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/http/server/b;->D()Lcv/a;

    move-result-object p1

    check-cast p1, Lcv/f;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    instance-of v1, p1, Lcv/f;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcv/f;->a()Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-direct {p0}, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->c()Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v1, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService$onRequest$array$1;

    invoke-direct {v1}, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService$onRequest$array$1;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/transsion/transfer/impl/server/service/NotifyFileFinishService;->b:Lcom/transsion/transfer/impl/i;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    move-object v6, v3

    invoke-interface/range {v5 .. v12}, Lcom/transsion/transfer/impl/i;->K(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJ)V

    goto :goto_3

    :cond_7
    sget-object p1, Liv/c;->d:Liv/c$a;

    const-string v1, "noitfy server success"

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0}, Liv/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createResponseJsonObj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    if-eqz p2, :cond_8

    sget-object v1, Liv/c;->d:Liv/c$a;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, p1, v0}, Liv/c$a;->a(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/http/server/d;->send(Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void
.end method
