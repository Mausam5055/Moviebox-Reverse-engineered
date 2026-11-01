.class public Luc/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# instance fields
.field private final a:Lorg/apache/http/client/ResponseHandler;

.field private final b:Lcom/google/firebase/perf/util/Timer;

.field private final c:Lcom/google/firebase/perf/metrics/i;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Lcom/google/firebase/perf/metrics/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luc/e;->a:Lorg/apache/http/client/ResponseHandler;

    iput-object p2, p0, Luc/e;->b:Lcom/google/firebase/perf/util/Timer;

    iput-object p3, p0, Luc/e;->c:Lcom/google/firebase/perf/metrics/i;

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Luc/e;->c:Lcom/google/firebase/perf/metrics/i;

    iget-object v1, p0, Luc/e;->b:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/metrics/i;->o(J)Lcom/google/firebase/perf/metrics/i;

    iget-object v0, p0, Luc/e;->c:Lcom/google/firebase/perf/metrics/i;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/metrics/i;->g(I)Lcom/google/firebase/perf/metrics/i;

    invoke-static {p1}, Luc/f;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Luc/e;->c:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/perf/metrics/i;->m(J)Lcom/google/firebase/perf/metrics/i;

    :cond_0
    invoke-static {p1}, Luc/f;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Luc/e;->c:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/metrics/i;->l(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/i;

    :cond_1
    iget-object v0, p0, Luc/e;->c:Lcom/google/firebase/perf/metrics/i;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/i;->a()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iget-object v0, p0, Luc/e;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
