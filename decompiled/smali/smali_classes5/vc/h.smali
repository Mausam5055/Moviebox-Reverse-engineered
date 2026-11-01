.class public final synthetic Lvc/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lvc/k;

.field public final synthetic b:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

.field public final synthetic c:Lcom/google/firebase/perf/v1/ApplicationProcessState;


# direct methods
.method public synthetic constructor <init>(Lvc/k;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc/h;->a:Lvc/k;

    iput-object p2, p0, Lvc/h;->b:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iput-object p3, p0, Lvc/h;->c:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvc/h;->a:Lvc/k;

    iget-object v1, p0, Lvc/h;->b:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    iget-object v2, p0, Lvc/h;->c:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-static {v0, v1, v2}, Lvc/k;->d(Lvc/k;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method
