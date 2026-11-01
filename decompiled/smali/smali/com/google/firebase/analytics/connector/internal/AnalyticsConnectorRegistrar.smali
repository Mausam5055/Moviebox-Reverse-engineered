.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Lmb/e;)Lkb/a;
    .locals 3

    const-class v0, Lcom/google/firebase/f;

    invoke-interface {p0, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/f;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lfc/d;

    invoke-interface {p0, v2}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfc/d;

    invoke-static {v0, v1, p0}, Lkb/b;->h(Lcom/google/firebase/f;Landroid/content/Context;Lfc/d;)Lkb/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmb/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lkb/a;

    invoke-static {v0}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v0

    const-class v1, Lcom/google/firebase/f;

    invoke-static {v1}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v1, Lfc/d;

    invoke-static {v1}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/analytics/connector/internal/b;

    invoke-direct {v1}, Lcom/google/firebase/analytics/connector/internal/b;-><init>()V

    invoke-virtual {v0, v1}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->e()Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-string v1, "fire-analytics"

    const-string v2, "22.1.2"

    invoke-static {v1, v2}, Lxc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lmb/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
