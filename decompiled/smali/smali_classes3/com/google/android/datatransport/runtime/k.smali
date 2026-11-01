.class public final Lcom/google/android/datatransport/runtime/k;
.super Ljava/lang/Object;

# interfaces
.implements Lu8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/datatransport/runtime/k;
    .locals 1

    invoke-static {}, Lcom/google/android/datatransport/runtime/k$a;->a()Lcom/google/android/datatransport/runtime/k;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/google/android/datatransport/runtime/j;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Lu8/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/google/android/datatransport/runtime/k;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/k;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
