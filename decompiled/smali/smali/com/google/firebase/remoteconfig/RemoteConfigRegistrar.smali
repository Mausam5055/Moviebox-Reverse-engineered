.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-rc"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmb/b0;Lmb/e;)Lcom/google/firebase/remoteconfig/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lmb/b0;Lmb/e;)Lcom/google/firebase/remoteconfig/c;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lmb/b0;Lmb/e;)Lcom/google/firebase/remoteconfig/c;
    .locals 8

    new-instance v7, Lcom/google/firebase/remoteconfig/c;

    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-interface {p1, p0}, Lmb/e;->c(Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    const-class p0, Lcom/google/firebase/f;

    invoke-interface {p1, p0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/google/firebase/f;

    const-class p0, Ljc/e;

    invoke-interface {p1, p0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Ljc/e;

    const-class p0, Lcom/google/firebase/abt/component/a;

    invoke-interface {p1, p0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/abt/component/a;

    const-string v0, "frc"

    invoke-virtual {p0, v0}, Lcom/google/firebase/abt/component/a;->b(Ljava/lang/String;)Lhb/b;

    move-result-object v5

    const-class p0, Lkb/a;

    invoke-interface {p1, p0}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Ljc/e;Lhb/b;Lic/b;)V

    return-object v7
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmb/c;",
            ">;"
        }
    .end annotation

    const-class v0, Llb/b;

    const-class v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lmb/b0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lmb/b0;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lad/a;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lcom/google/firebase/remoteconfig/c;

    invoke-static {v3, v2}, Lmb/c;->d(Ljava/lang/Class;[Ljava/lang/Class;)Lmb/c$b;

    move-result-object v2

    const-string v3, "fire-rc"

    invoke-virtual {v2, v3}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v2

    const-class v5, Landroid/content/Context;

    invoke-static {v5}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v2

    invoke-static {v0}, Lmb/r;->l(Lmb/b0;)Lmb/r;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v2

    const-class v5, Lcom/google/firebase/f;

    invoke-static {v5}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v2

    const-class v5, Ljc/e;

    invoke-static {v5}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v2

    const-class v5, Lcom/google/firebase/abt/component/a;

    invoke-static {v5}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v2

    const-class v5, Lkb/a;

    invoke-static {v5}, Lmb/r;->i(Ljava/lang/Class;)Lmb/r;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v2

    new-instance v5, Lyc/o;

    invoke-direct {v5, v0}, Lyc/o;-><init>(Lmb/b0;)V

    invoke-virtual {v2, v5}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->e()Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-string v2, "22.0.1"

    invoke-static {v3, v2}, Lxc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lmb/c;

    aput-object v0, v3, v4

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
