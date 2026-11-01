.class public abstract Lr8/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Ljava/lang/Object;)Lr8/d;
    .locals 7

    new-instance v6, Lr8/a;

    sget-object v3, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lr8/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;Lr8/f;Lr8/e;)V

    return-object v6
.end method

.method public static g(Ljava/lang/Object;Lr8/f;)Lr8/d;
    .locals 7

    new-instance v6, Lr8/a;

    sget-object v3, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lr8/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;Lr8/f;Lr8/e;)V

    return-object v6
.end method

.method public static h(Ljava/lang/Object;)Lr8/d;
    .locals 7

    new-instance v6, Lr8/a;

    sget-object v3, Lcom/google/android/datatransport/Priority;->HIGHEST:Lcom/google/android/datatransport/Priority;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lr8/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;Lr8/f;Lr8/e;)V

    return-object v6
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()Lr8/e;
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public abstract d()Lcom/google/android/datatransport/Priority;
.end method

.method public abstract e()Lr8/f;
.end method
