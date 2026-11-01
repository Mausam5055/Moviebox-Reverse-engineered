.class public abstract Lcom/google/android/datatransport/runtime/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/i$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Ljava/lang/String;J)Lcom/google/android/datatransport/runtime/i$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/i$a;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract d()Lcom/google/android/datatransport/runtime/i;
.end method

.method protected abstract e()Ljava/util/Map;
.end method

.method protected abstract f(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract g(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract h(Lcom/google/android/datatransport/runtime/h;)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract i(J)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract j([B)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract k([B)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract l(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract m(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract n(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/i$a;
.end method

.method public abstract o(J)Lcom/google/android/datatransport/runtime/i$a;
.end method
