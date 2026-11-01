.class public Lorg/mvel2/c;
.super Ljava/lang/Object;


# instance fields
.field private a:[C

.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>([CIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mvel2/c;->a:[C

    iput p2, p0, Lorg/mvel2/c;->b:I

    iput-boolean p3, p0, Lorg/mvel2/c;->c:Z

    iput-object p4, p0, Lorg/mvel2/c;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mvel2/c;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget v0, p0, Lorg/mvel2/c;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mvel2/c;->f:I

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, Lorg/mvel2/c;->a:[C

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, Lorg/mvel2/c;->b:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lorg/mvel2/c;->a:[C

    aget-char v4, v4, v3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iput v1, p0, Lorg/mvel2/c;->e:I

    iput v2, p0, Lorg/mvel2/c;->f:I

    :cond_5
    :goto_2
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/mvel2/c;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/mvel2/c;->b:I

    return v0
.end method

.method public d()[C
    .locals 1

    iget-object v0, p0, Lorg/mvel2/c;->a:[C

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/mvel2/c;->e:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mvel2/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mvel2/c;->c:Z

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/c;->f:I

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/c;->b:I

    return-void
.end method

.method public j([C)V
    .locals 0

    iput-object p1, p0, Lorg/mvel2/c;->a:[C

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lorg/mvel2/c;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lorg/mvel2/c;->c:Z

    const-string v1, ","

    const-string v2, "("

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/mvel2/c;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mvel2/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/mvel2/c;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mvel2/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") WARNING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
