.class final La9/b;
.super La9/k;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/datatransport/runtime/o;

.field private final c:Lcom/google/android/datatransport/runtime/i;


# direct methods
.method constructor <init>(JLcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)V
    .locals 0

    invoke-direct {p0}, La9/k;-><init>()V

    iput-wide p1, p0, La9/b;->a:J

    if-eqz p3, :cond_1

    iput-object p3, p0, La9/b;->b:Lcom/google/android/datatransport/runtime/o;

    if-eqz p4, :cond_0

    iput-object p4, p0, La9/b;->c:Lcom/google/android/datatransport/runtime/i;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null event"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null transportContext"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Lcom/google/android/datatransport/runtime/i;
    .locals 1

    iget-object v0, p0, La9/b;->c:Lcom/google/android/datatransport/runtime/i;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, La9/b;->a:J

    return-wide v0
.end method

.method public d()Lcom/google/android/datatransport/runtime/o;
    .locals 1

    iget-object v0, p0, La9/b;->b:Lcom/google/android/datatransport/runtime/o;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, La9/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, La9/k;

    iget-wide v3, p0, La9/b;->a:J

    invoke-virtual {p1}, La9/k;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, La9/b;->b:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {p1}, La9/k;->d()Lcom/google/android/datatransport/runtime/o;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, La9/b;->c:Lcom/google/android/datatransport/runtime/i;

    invoke-virtual {p1}, La9/k;->b()Lcom/google/android/datatransport/runtime/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, La9/b;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, La9/b;->b:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, La9/b;->c:Lcom/google/android/datatransport/runtime/i;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PersistedEvent{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, La9/b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La9/b;->b:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La9/b;->c:Lcom/google/android/datatransport/runtime/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
