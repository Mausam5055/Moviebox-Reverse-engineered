.class public abstract Lcom/google/android/datatransport/runtime/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/i$a;
    .locals 2

    new-instance v0, Lcom/google/android/datatransport/runtime/b$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/b$b;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/b$b;->f(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method protected abstract c()Ljava/util/Map;
.end method

.method public abstract d()Ljava/lang/Integer;
.end method

.method public abstract e()Lcom/google/android/datatransport/runtime/h;
.end method

.method public abstract f()J
.end method

.method public abstract g()[B
.end method

.method public abstract h()[B
.end method

.method public final i(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final j(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final k()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract l()Ljava/lang/Integer;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public abstract o()J
.end method

.method public p()Lcom/google/android/datatransport/runtime/i$a;
    .locals 3

    new-instance v0, Lcom/google/android/datatransport/runtime/b$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/b$b;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/b$b;->n(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->g(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->l()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->l(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->m(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->g()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->j([B)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->h()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->k([B)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->e()Lcom/google/android/datatransport/runtime/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->h(Lcom/google/android/datatransport/runtime/h;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->i(J)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/datatransport/runtime/i$a;->o(J)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/i$a;->f(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/i$a;

    move-result-object v0

    return-object v0
.end method
