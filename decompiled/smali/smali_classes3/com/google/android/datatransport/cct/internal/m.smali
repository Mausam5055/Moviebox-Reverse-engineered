.class public abstract Lcom/google/android/datatransport/cct/internal/m;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/google/android/datatransport/cct/internal/m;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/d;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/cct/internal/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b()Lbc/a;
    .locals 2

    new-instance v0, Ldc/d;

    invoke-direct {v0}, Ldc/d;-><init>()V

    sget-object v1, Lcom/google/android/datatransport/cct/internal/b;->a:Lcc/a;

    invoke-virtual {v0, v1}, Ldc/d;->j(Lcc/a;)Ldc/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldc/d;->k(Z)Ldc/d;

    move-result-object v0

    invoke-virtual {v0}, Ldc/d;->i()Lbc/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/util/List;
.end method
