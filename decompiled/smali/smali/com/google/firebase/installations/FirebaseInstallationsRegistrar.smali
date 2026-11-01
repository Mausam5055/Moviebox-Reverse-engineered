.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmb/e;)Ljc/e;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lmb/e;)Ljc/e;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lmb/e;)Ljc/e;
    .locals 6

    new-instance v0, Lcom/google/firebase/installations/c;

    const-class v1, Lcom/google/firebase/f;

    invoke-interface {p0, v1}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/f;

    const-class v2, Lgc/h;

    invoke-interface {p0, v2}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object v2

    const-class v3, Llb/a;

    const-class v4, Ljava/util/concurrent/ExecutorService;

    invoke-static {v3, v4}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v3

    invoke-interface {p0, v3}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    const-class v4, Llb/b;

    const-class v5, Ljava/util/concurrent/Executor;

    invoke-static {v4, v5}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v4

    invoke-interface {p0, v4}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, Lcom/google/firebase/concurrent/FirebaseExecutors;->b(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/installations/c;-><init>(Lcom/google/firebase/f;Lic/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmb/c;",
            ">;"
        }
    .end annotation

    const-class v0, Ljc/e;

    invoke-static {v0}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v0

    const-string v1, "fire-installations"

    invoke-virtual {v0, v1}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v0

    const-class v2, Lcom/google/firebase/f;

    invoke-static {v2}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v2, Lgc/h;

    invoke-static {v2}, Lmb/r;->i(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v2, Llb/a;

    const-class v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {v2, v3}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v2

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v2, Llb/b;

    const-class v3, Ljava/util/concurrent/Executor;

    invoke-static {v2, v3}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v2

    invoke-static {v2}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    new-instance v2, Ljc/f;

    invoke-direct {v2}, Ljc/f;-><init>()V

    invoke-virtual {v0, v2}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    invoke-static {}, Lgc/g;->a()Lmb/c;

    move-result-object v2

    const-string v3, "18.0.0"

    invoke-static {v1, v3}, Lxc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Lmb/c;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
