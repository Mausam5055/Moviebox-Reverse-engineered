.class final Lcom/google/android/datatransport/runtime/c;
.super Lcom/google/android/datatransport/runtime/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/o;

.field private final b:Ljava/lang/String;

.field private final c:Lr8/d;

.field private final d:Lr8/g;

.field private final e:Lr8/c;


# direct methods
.method private constructor <init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lr8/d;Lr8/g;Lr8/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/n;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/c;->a:Lcom/google/android/datatransport/runtime/o;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/c;->c:Lr8/d;

    iput-object p4, p0, Lcom/google/android/datatransport/runtime/c;->d:Lr8/g;

    iput-object p5, p0, Lcom/google/android/datatransport/runtime/c;->e:Lr8/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lr8/d;Lr8/g;Lr8/c;Lcom/google/android/datatransport/runtime/c$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/datatransport/runtime/c;-><init>(Lcom/google/android/datatransport/runtime/o;Ljava/lang/String;Lr8/d;Lr8/g;Lr8/c;)V

    return-void
.end method


# virtual methods
.method public b()Lr8/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/c;->e:Lr8/c;

    return-object v0
.end method

.method c()Lr8/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/c;->c:Lr8/d;

    return-object v0
.end method

.method e()Lr8/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/c;->d:Lr8/g;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/datatransport/runtime/n;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->a:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->f()Lcom/google/android/datatransport/runtime/o;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->c:Lr8/d;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->c()Lr8/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->d:Lr8/g;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->e()Lr8/g;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->e:Lr8/c;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/n;->b()Lr8/c;

    move-result-object p1

    invoke-virtual {v1, p1}, Lr8/c;->equals(Ljava/lang/Object;)Z

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

.method public f()Lcom/google/android/datatransport/runtime/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/c;->a:Lcom/google/android/datatransport/runtime/o;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/c;->a:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/c;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/c;->c:Lr8/d;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/c;->d:Lr8/g;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->e:Lr8/c;

    invoke-virtual {v1}, Lr8/c;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRequest{transportContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->a:Lcom/google/android/datatransport/runtime/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->c:Lr8/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->d:Lr8/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/c;->e:Lr8/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
