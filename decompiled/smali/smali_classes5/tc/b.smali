.class final Ltc/b;
.super Ltc/e;


# instance fields
.field private final a:Lcom/google/firebase/perf/v1/f;


# direct methods
.method constructor <init>(Lcom/google/firebase/perf/v1/f;)V
    .locals 0

    invoke-direct {p0}, Ltc/e;-><init>()V

    iput-object p1, p0, Ltc/b;->a:Lcom/google/firebase/perf/v1/f;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    iget-object v0, p0, Ltc/b;->a:Lcom/google/firebase/perf/v1/f;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/f;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltc/b;->a:Lcom/google/firebase/perf/v1/f;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/f;->q()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Ltc/b;->a:Lcom/google/firebase/perf/v1/f;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/f;->p()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Ltc/b;->a:Lcom/google/firebase/perf/v1/f;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/f;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltc/b;->a:Lcom/google/firebase/perf/v1/f;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/f;->s()Lcom/google/firebase/perf/v1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/e;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
