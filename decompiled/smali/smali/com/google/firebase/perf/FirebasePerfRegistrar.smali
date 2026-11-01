.class public Lcom/google/firebase/perf/FirebasePerfRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final EARLY_LIBRARY_NAME:Ljava/lang/String; = "fire-perf-early"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-perf"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmb/e;)Lpc/e;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->providesFirebasePerformance(Lmb/e;)Lpc/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lmb/b0;Lmb/e;)Lpc/b;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->lambda$getComponents$0(Lmb/b0;Lmb/e;)Lpc/b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lmb/b0;Lmb/e;)Lpc/b;
    .locals 3

    new-instance v0, Lpc/b;

    const-class v1, Lcom/google/firebase/f;

    invoke-interface {p1, v1}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/f;

    const-class v2, Lcom/google/firebase/n;

    invoke-interface {p1, v2}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object v2

    invoke-interface {v2}, Lic/b;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/n;

    invoke-interface {p1, p0}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p0}, Lpc/b;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/n;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private static providesFirebasePerformance(Lmb/e;)Lpc/e;
    .locals 6

    const-class v0, Lpc/b;

    invoke-interface {p0, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    invoke-static {}, Lqc/a;->a()Lqc/a$b;

    move-result-object v0

    new-instance v1, Lrc/a;

    const-class v2, Lcom/google/firebase/f;

    invoke-interface {p0, v2}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/f;

    const-class v3, Ljc/e;

    invoke-interface {p0, v3}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljc/e;

    const-class v4, Lcom/google/firebase/remoteconfig/c;

    invoke-interface {p0, v4}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object v4

    const-class v5, Lr8/i;

    invoke-interface {p0, v5}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object p0

    invoke-direct {v1, v2, v3, v4, p0}, Lrc/a;-><init>(Lcom/google/firebase/f;Ljc/e;Lic/b;Lic/b;)V

    invoke-virtual {v0, v1}, Lqc/a$b;->b(Lrc/a;)Lqc/a$b;

    move-result-object p0

    invoke-virtual {p0}, Lqc/a$b;->a()Lqc/b;

    move-result-object p0

    invoke-interface {p0}, Lqc/b;->a()Lpc/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmb/c;",
            ">;"
        }
    .end annotation

    const-class v0, Llb/d;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const-class v1, Lpc/e;

    invoke-static {v1}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v1

    const-string v2, "fire-perf"

    invoke-virtual {v1, v2}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v1

    const-class v3, Lcom/google/firebase/f;

    invoke-static {v3}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v4, Lcom/google/firebase/remoteconfig/c;

    invoke-static {v4}, Lmb/r;->m(Ljava/lang/Class;)Lmb/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v4, Ljc/e;

    invoke-static {v4}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v4, Lr8/i;

    invoke-static {v4}, Lmb/r;->m(Ljava/lang/Class;)Lmb/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    const-class v4, Lpc/b;

    invoke-static {v4}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v1

    new-instance v5, Lpc/c;

    invoke-direct {v5}, Lpc/c;-><init>()V

    invoke-virtual {v1, v5}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lmb/c$b;->d()Lmb/c;

    move-result-object v1

    invoke-static {v4}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v4

    const-string v5, "fire-perf-early"

    invoke-virtual {v4, v5}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v4

    invoke-static {v3}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v3

    invoke-virtual {v4, v3}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v3

    const-class v4, Lcom/google/firebase/n;

    invoke-static {v4}, Lmb/r;->i(Ljava/lang/Class;)Lmb/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v3

    invoke-static {v0}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v3

    invoke-virtual {v3}, Lmb/c$b;->e()Lmb/c$b;

    move-result-object v3

    new-instance v4, Lpc/d;

    invoke-direct {v4, v0}, Lpc/d;-><init>(Lmb/b0;)V

    invoke-virtual {v3, v4}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-string v3, "21.0.3"

    invoke-static {v2, v3}, Lxc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lmb/c;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
