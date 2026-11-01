.class public abstract Lcom/google/android/datatransport/runtime/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lr8/h;Lcom/google/android/datatransport/Priority;)V
    .locals 1

    instance-of v0, p0, Lcom/google/android/datatransport/runtime/r;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/datatransport/runtime/r;

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/r;->d()Lcom/google/android/datatransport/runtime/o;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/o;->f(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/o;

    move-result-object p0

    invoke-static {}, Lcom/google/android/datatransport/runtime/t;->c()Lcom/google/android/datatransport/runtime/t;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/t;->e()Lz8/o;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lz8/o;->u(Lcom/google/android/datatransport/runtime/o;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    goto :goto_0

    :cond_0
    const-string p1, "ForcedSender"

    const-string v0, "Expected instance of `TransportImpl`, got `%s`."

    invoke-static {p1, v0, p0}, Lw8/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
