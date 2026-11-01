.class public final Lbi/f;
.super Lokhttp3/EventListener;

# interfaces
.implements Lbi/i;


# instance fields
.field private final a:Lokhttp3/EventListener;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private final o:Lbi/e;

.field private p:Z

.field private q:J

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private final u:I


# direct methods
.method public constructor <init>(Lokhttp3/EventListener;IZLjava/lang/String;ZLjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    iput-object p1, p0, Lbi/f;->a:Lokhttp3/EventListener;

    iput p2, p0, Lbi/f;->b:I

    iput-boolean p3, p0, Lbi/f;->c:Z

    iput-object p6, p0, Lbi/f;->d:Ljava/lang/String;

    iput-boolean p7, p0, Lbi/f;->e:Z

    iput-boolean p8, p0, Lbi/f;->f:Z

    sget-object p1, Lbi/e;->J:Lbi/e$a;

    invoke-virtual {p1, p2, p4}, Lbi/e$a;->a(ILjava/lang/String;)Lbi/e;

    move-result-object p1

    iput-object p1, p0, Lbi/f;->o:Lbi/e;

    const/4 p1, 0x1

    if-nez p3, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p1

    :goto_1
    iput-boolean p2, p0, Lbi/f;->p:Z

    const/16 p2, 0x1e0

    iput p2, p0, Lbi/f;->r:I

    iput p2, p0, Lbi/f;->s:I

    const-string p2, "Unknown"

    iput-object p2, p0, Lbi/f;->t:Ljava/lang/String;

    new-instance p2, Lkotlin/ranges/IntRange;

    const/16 p3, 0xa

    invoke-direct {p2, p1, p3}, Lkotlin/ranges/IntRange;-><init>(II)V

    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->q(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    move-result p1

    iput p1, p0, Lbi/f;->u:I

    return-void
.end method

.method private final b()Z
    .locals 5

    sget-object v0, Lbi/k;->a:Lbi/k;

    invoke-virtual {v0}, Lbi/k;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lbi/k;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lokhttp3/Request;I)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "[onDowngrade]"

    invoke-static {p1}, Lbi/c;->c(Ljava/lang/String;)V

    iget-boolean p1, p0, Lbi/f;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbi/f;->p:Z

    :cond_0
    iget-object p1, p0, Lbi/f;->o:Lbi/e;

    invoke-virtual {p1, p2}, Lbi/e;->d0(I)V

    return-void
.end method

.method public callEnd(Lokhttp3/Call;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    const-string v0, "[callEnd]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbi/e;->I(I)V

    iget-wide v1, p0, Lbi/f;->g:J

    invoke-static {v1, v2}, Lbi/c;->e(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbi/e;->c0(J)V

    iget v1, p0, Lbi/f;->r:I

    invoke-virtual {v0, v1}, Lbi/e;->S(I)V

    invoke-virtual {v0}, Lbi/e;->m()I

    move-result v1

    const/16 v2, 0x130

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lbi/f;->p:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lbi/c;->g(Lbi/e;)V

    :cond_0
    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    :cond_1
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[callFailed]  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbi/e;->I(I)V

    invoke-direct {p0}, Lbi/f;->b()Z

    move-result v0

    const/16 v1, 0x3fc

    if-eqz v0, :cond_2

    sget-object v0, Lbi/k;->a:Lbi/k;

    invoke-virtual {v0}, Lbi/k;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iput v1, p0, Lbi/f;->s:I

    const-string v0, "Network disconnect"

    iput-object v0, p0, Lbi/f;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbi/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3fd

    iput v0, p0, Lbi/f;->s:I

    const-string v0, "Fake Network"

    iput-object v0, p0, Lbi/f;->t:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Lbi/a;->a:Lbi/a;

    iget v2, p0, Lbi/f;->r:I

    invoke-virtual {v0, v2, p2}, Lbi/a;->a(ILjava/io/IOException;)I

    move-result v0

    iput v0, p0, Lbi/f;->s:I

    goto :goto_0

    :cond_2
    sget-object v0, Lbi/a;->a:Lbi/a;

    iget v2, p0, Lbi/f;->r:I

    invoke-virtual {v0, v2, p2}, Lbi/a;->a(ILjava/io/IOException;)I

    move-result v0

    iput v0, p0, Lbi/f;->s:I

    :goto_0
    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    iget v2, p0, Lbi/f;->s:I

    invoke-virtual {v0, v2}, Lbi/e;->S(I)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    iget-object v2, p0, Lbi/f;->t:Ljava/lang/String;

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lbi/c;->f(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lbi/f;->t:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Lbi/e;->T(Ljava/lang/String;)V

    iget-boolean v0, p0, Lbi/f;->p:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lbi/f;->e:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lbi/f;->s:I

    const/16 v3, 0x41a

    if-ne v0, v3, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :goto_2
    iget-boolean v3, p0, Lbi/f;->f:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lbi/f;->s:I

    if-ne v3, v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    if-eqz v2, :cond_6

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    invoke-static {v0}, Lbi/c;->g(Lbi/e;)V

    :cond_6
    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    :cond_7
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 11

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    const-string v0, "[callStart]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "isDownload"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lbi/f;->o:Lbi/e;

    const-string v3, "true"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "T"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lbi/e;->l0(I)V

    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v2, "offlineAd"

    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lbi/f;->o:Lbi/e;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lbi/e;->X(I)V

    :cond_3
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbi/f;->o:Lbi/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-nez v2, :cond_4

    move-object v2, v4

    :cond_4
    :try_start_1
    invoke-virtual {v3, v2}, Lbi/e;->Y(Ljava/lang/String;)V

    iget-object v2, p0, Lbi/f;->o:Lbi/e;

    if-nez v0, :cond_5

    move-object v0, v4

    :cond_5
    invoke-virtual {v2, v0}, Lbi/e;->U(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "call.request().url().toString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lbi/f;->o:Lbi/e;

    iget v3, p0, Lbi/f;->u:I

    const/4 v5, 0x2

    if-gt v3, v5, :cond_6

    move-object v3, v0

    goto :goto_2

    :cond_6
    move-object v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Lbi/e;->P(Ljava/lang/String;)V

    iget-object v2, p0, Lbi/f;->o:Lbi/e;

    iget v3, p0, Lbi/f;->b:I

    if-nez v3, :cond_7

    const-string v3, "?"

    const/4 v6, 0x0

    invoke-static {v0, v3, v1, v5, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v6, "?"

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2, v0}, Lbi/e;->g0(Ljava/lang/String;)V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "infoeyes-tag"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbi/f;->o:Lbi/e;

    if-nez v0, :cond_8

    iget-object v0, p0, Lbi/f;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move-object v4, v0

    :goto_3
    invoke-virtual {v1, v4}, Lbi/e;->O(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[get header exception] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->b(Ljava/lang/String;)V

    :goto_5
    invoke-static {}, Lbi/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbi/f;->g:J

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    :cond_9
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[connectEnd] inetSocketAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    iget-wide v1, p0, Lbi/f;->j:J

    invoke-static {v1, v2}, Lbi/c;->e(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbi/e;->j0(J)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lbi/e;->Z(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    :cond_2
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 8

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[connectFailed] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lbi/e;->Z(Ljava/lang/String;)V

    iget-object v2, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v2, :cond_2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    :cond_2
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    invoke-static {}, Lbi/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbi/f;->j:J

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lbi/e;->W(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[connectStart] inetSocketAddress : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", proxy : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    :cond_1
    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[connectionAcquired] connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    invoke-interface {p2}, Lokhttp3/Connection;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lbi/e;->k0(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbi/e;->Z(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_2
    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    const-string v0, "[connectionReleased]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    :cond_0
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 10

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetAddressList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    move-object v1, p3

    check-cast v1, Ljava/lang/Iterable;

    const/16 v8, 0x38

    const/4 v9, 0x0

    const-string v2, ","

    const-string v3, "["

    const-string v4, "]"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dnsEnd] inetAddressList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    iget-wide v1, p0, Lbi/f;->h:J

    invoke-static {v1, v2}, Lbi/c;->e(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbi/e;->R(J)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dnsStart] domainName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lbi/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbi/f;->h:J

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[requestBodyEnd] byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lbi/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbi/f;->m:J

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    invoke-virtual {v0, p2, p3}, Lbi/e;->b0(J)V

    iget-wide v1, p0, Lbi/f;->m:J

    iget-wide v3, p0, Lbi/f;->k:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lbi/e;->f0(J)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    :cond_0
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    const-string v0, "[requestBodyStart]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[requestFailed] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[requestHeadersEnd] request :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lbi/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbi/f;->l:J

    iget-object v2, p0, Lbi/f;->o:Lbi/e;

    iget-wide v3, p0, Lbi/f;->k:J

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lbi/e;->f0(J)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    :cond_0
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    const-string v0, "[requestHeadersStart]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lbi/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbi/f;->k:J

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[responseBodyEnd] byteCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    invoke-virtual {v0, p2, p3}, Lbi/e;->e0(J)V

    iget-wide v1, p0, Lbi/f;->n:J

    invoke-static {v1, v2}, Lbi/c;->e(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbi/e;->a0(J)V

    iget-wide v1, p0, Lbi/f;->q:J

    invoke-static {v1, v2}, Lbi/c;->e(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbi/e;->J(J)V

    long-to-float v1, p2

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Lbi/e;->c()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbi/e;->M(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    :cond_0
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    const-string v0, "[responseBodyStart]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[responseFailed] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[responseHeadersEnd] code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "x-response-cdn"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "server-time"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "0"

    :cond_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lbi/f;->o:Lbi/e;

    invoke-virtual {v3, v0}, Lbi/e;->K(Ljava/lang/String;)V

    invoke-static {}, Lbi/c;->d()J

    move-result-wide v3

    iput-wide v3, p0, Lbi/f;->q:J

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    iget-wide v3, p0, Lbi/f;->n:J

    invoke-static {v3, v4}, Lbi/c;->e(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lbi/e;->a0(J)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    iget-wide v3, p0, Lbi/f;->g:J

    invoke-static {v3, v4}, Lbi/c;->e(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lbi/e;->L(J)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    invoke-virtual {v0, v1, v2}, Lbi/e;->h0(J)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, p0, Lbi/f;->r:I

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_2
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 7

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    const-string v0, "[responseHeadersStart]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lbi/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbi/f;->n:J

    iget-object v2, p0, Lbi/f;->o:Lbi/e;

    iget-wide v3, p0, Lbi/f;->m:J

    iget-wide v5, p0, Lbi/f;->l:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lbi/e;->m0(J)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    const-string v0, "[secureConnectEnd]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lbi/e;->k0(Ljava/lang/String;)V

    iget-object v0, p0, Lbi/f;->o:Lbi/e;

    iget-wide v1, p0, Lbi/f;->i:J

    invoke-static {v1, v2}, Lbi/c;->e(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbi/e;->i0(J)V

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    :cond_2
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    const-string v0, "[secureConnectStart]"

    invoke-static {v0}, Lbi/c;->c(Ljava/lang/String;)V

    invoke-static {}, Lbi/c;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lbi/f;->i:J

    iget-object v0, p0, Lbi/f;->a:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method
