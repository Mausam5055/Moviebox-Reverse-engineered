.class abstract Lcom/google/android/datatransport/runtime/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/n$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/n$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/c$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lr8/c;
.end method

.method abstract c()Lr8/d;
.end method

.method public d()[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/n;->e()Lr8/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/n;->c()Lr8/d;

    move-result-object v1

    invoke-virtual {v1}, Lr8/d;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lr8/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method abstract e()Lr8/g;
.end method

.method public abstract f()Lcom/google/android/datatransport/runtime/o;
.end method

.method public abstract g()Ljava/lang/String;
.end method
