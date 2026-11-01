.class public final Ljm/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Lcom/transsion/lib_web/download_render/data/PageData;


# direct methods
.method public constructor <init>(JLcom/transsion/lib_web/download_render/data/PageData;)V
    .locals 1

    const-string v0, "remotePageData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljm/a;->a:J

    iput-object p3, p0, Ljm/a;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/lib_web/download_render/data/PageData;
    .locals 1

    iget-object v0, p0, Ljm/a;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    return-object v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Ljm/a;->a:J

    return-wide v0
.end method

.method public final c()V
    .locals 5

    new-instance v0, Ljm/e;

    iget-wide v1, p0, Ljm/a;->a:J

    iget-object v3, p0, Ljm/a;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    invoke-direct {v0, v1, v2, v3}, Ljm/e;-><init>(JLcom/transsion/lib_web/download_render/data/PageData;)V

    new-instance v1, Ljm/c;

    iget-wide v2, p0, Ljm/a;->a:J

    iget-object v4, p0, Ljm/a;->b:Lcom/transsion/lib_web/download_render/data/PageData;

    invoke-direct {v1, v2, v3, v4}, Ljm/c;-><init>(JLcom/transsion/lib_web/download_render/data/PageData;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljm/d;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljm/d;

    invoke-interface {v1}, Ljm/d;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method
