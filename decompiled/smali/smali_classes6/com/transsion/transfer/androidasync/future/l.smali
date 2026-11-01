.class public Lcom/transsion/transfer/androidasync/future/l;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/future/l;->b(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic b(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/androidasync/future/l;->e(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V

    return-void
.end method

.method public static c(Ljava/lang/Iterable;Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 2

    new-instance v0, Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/future/w;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/future/l;->e(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static d([Ljava/lang/Object;Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;
    .locals 0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/transfer/androidasync/future/l;->c(Ljava/lang/Iterable;Lcom/transsion/transfer/androidasync/future/z;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;Ljava/lang/Exception;)V
    .locals 1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/transsion/transfer/androidasync/future/z;->then(Ljava/lang/Object;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/transsion/transfer/androidasync/future/j;

    invoke-direct {v0, p2}, Lcom/transsion/transfer/androidasync/future/j;-><init>(Lcom/transsion/transfer/androidasync/future/w;)V

    invoke-interface {p3, v0}, Lcom/transsion/transfer/androidasync/future/f;->j(Lcom/transsion/transfer/androidasync/future/x;)Lcom/transsion/transfer/androidasync/future/f;

    move-result-object p3

    new-instance v0, Lcom/transsion/transfer/androidasync/future/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/transfer/androidasync/future/k;-><init>(Ljava/util/Iterator;Lcom/transsion/transfer/androidasync/future/z;Lcom/transsion/transfer/androidasync/future/w;)V

    invoke-interface {p3, v0}, Lcom/transsion/transfer/androidasync/future/f;->e(Lcom/transsion/transfer/androidasync/future/d;)Lcom/transsion/transfer/androidasync/future/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "empty list"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p2, p3}, Lcom/transsion/transfer/androidasync/future/w;->G(Ljava/lang/Exception;)Z

    :goto_1
    return-void
.end method
