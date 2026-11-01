.class final Lcom/google/android/datatransport/cct/internal/b$i;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# static fields
.field static final a:Lcom/google/android/datatransport/cct/internal/b$i;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;

.field private static final g:Lbc/b;

.field private static final h:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/cct/internal/b$i;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/internal/b$i;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->a:Lcom/google/android/datatransport/cct/internal/b$i;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->b:Lbc/b;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->c:Lbc/b;

    const-string v0, "clientInfo"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->d:Lbc/b;

    const-string v0, "logSource"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->e:Lbc/b;

    const-string v0, "logSourceName"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->f:Lbc/b;

    const-string v0, "logEvent"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->g:Lbc/b;

    const-string v0, "qosTier"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->h:Lbc/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/datatransport/cct/internal/r;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/cct/internal/b$i;->b(Lcom/google/android/datatransport/cct/internal/r;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/r;Lbc/d;)V
    .locals 3

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->b()Lcom/google/android/datatransport/cct/internal/ClientInfo;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->g:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/android/datatransport/cct/internal/b$i;->h:Lbc/b;

    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/r;->f()Lcom/google/android/datatransport/cct/internal/QosTier;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
