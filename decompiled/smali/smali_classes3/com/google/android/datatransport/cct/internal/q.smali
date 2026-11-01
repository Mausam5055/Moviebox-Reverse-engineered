.class public abstract Lcom/google/android/datatransport/cct/internal/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/q$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/j$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/j$b;-><init>()V

    return-object v0
.end method

.method public static k(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 1

    invoke-static {}, Lcom/google/android/datatransport/cct/internal/q;->a()Lcom/google/android/datatransport/cct/internal/q$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/cct/internal/q$a;->i(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/q$a;

    move-result-object p0

    return-object p0
.end method

.method public static l([B)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 1

    invoke-static {}, Lcom/google/android/datatransport/cct/internal/q;->a()Lcom/google/android/datatransport/cct/internal/q$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/cct/internal/q$a;->h([B)Lcom/google/android/datatransport/cct/internal/q$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract b()Lcom/google/android/datatransport/cct/internal/ComplianceData;
.end method

.method public abstract c()Ljava/lang/Integer;
.end method

.method public abstract d()J
.end method

.method public abstract e()J
.end method

.method public abstract f()Lcom/google/android/datatransport/cct/internal/n;
.end method

.method public abstract g()Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;
.end method

.method public abstract h()[B
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()J
.end method
