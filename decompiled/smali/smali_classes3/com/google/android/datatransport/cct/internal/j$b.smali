.class final Lcom/google/android/datatransport/cct/internal/j$b;
.super Lcom/google/android/datatransport/cct/internal/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

.field private d:Ljava/lang/Long;

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Long;

.field private h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

.field private i:Lcom/google/android/datatransport/cct/internal/n;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/datatransport/cct/internal/q;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/j$b;->a:Ljava/lang/Long;

    const-string v2, ""

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventTimeMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/j$b;->d:Ljava/lang/Long;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventUptimeMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v1, v0, Lcom/google/android/datatransport/cct/internal/j$b;->g:Ljava/lang/Long;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timezoneOffsetSeconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/datatransport/cct/internal/j;

    iget-object v2, v0, Lcom/google/android/datatransport/cct/internal/j$b;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, v0, Lcom/google/android/datatransport/cct/internal/j$b;->b:Ljava/lang/Integer;

    iget-object v7, v0, Lcom/google/android/datatransport/cct/internal/j$b;->c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    iget-object v2, v0, Lcom/google/android/datatransport/cct/internal/j$b;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v0, Lcom/google/android/datatransport/cct/internal/j$b;->e:[B

    iget-object v11, v0, Lcom/google/android/datatransport/cct/internal/j$b;->f:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/datatransport/cct/internal/j$b;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v14, v0, Lcom/google/android/datatransport/cct/internal/j$b;->h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    iget-object v15, v0, Lcom/google/android/datatransport/cct/internal/j$b;->i:Lcom/google/android/datatransport/cct/internal/n;

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/google/android/datatransport/cct/internal/j;-><init>(JLjava/lang/Integer;Lcom/google/android/datatransport/cct/internal/ComplianceData;J[BLjava/lang/String;JLcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;Lcom/google/android/datatransport/cct/internal/n;Lcom/google/android/datatransport/cct/internal/j$a;)V

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing required properties:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/ComplianceData;)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->c:Lcom/google/android/datatransport/cct/internal/ComplianceData;

    return-object p0
.end method

.method public c(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method public d(J)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public e(J)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->d:Ljava/lang/Long;

    return-object p0
.end method

.method public f(Lcom/google/android/datatransport/cct/internal/n;)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->i:Lcom/google/android/datatransport/cct/internal/n;

    return-object p0
.end method

.method public g(Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->h:Lcom/google/android/datatransport/cct/internal/NetworkConnectionInfo;

    return-object p0
.end method

.method h([B)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->e:[B

    return-object p0
.end method

.method i(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public j(J)Lcom/google/android/datatransport/cct/internal/q$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/j$b;->g:Ljava/lang/Long;

    return-object p0
.end method
