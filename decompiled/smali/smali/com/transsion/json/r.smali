.class public Lcom/transsion/json/r;
.super Ljava/lang/Object;


# instance fields
.field final a:[Ljava/lang/String;

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/json/r;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/json/r;->c:Z

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    const/16 v2, 0x2a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/transsion/json/r;->b:Z

    iput-boolean p2, p0, Lcom/transsion/json/r;->c:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/json/r;->c:Z

    return v0
.end method

.method public b(Lcom/transsion/json/q;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/json/q;->c()I

    move-result v3

    const-string v4, "*"

    if-ge v1, v3, :cond_3

    invoke-virtual {p1}, Lcom/transsion/json/q;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    array-length v6, v5

    if-ge v2, v6, :cond_1

    aget-object v5, v5, v2

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, -0x1

    if-ltz v3, :cond_2

    iget-object v5, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    const/4 v3, 0x1

    if-lez v2, :cond_5

    iget-object v5, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/transsion/json/q;->c()I

    move-result p1

    if-lt v1, p1, :cond_4

    iget-object p1, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    array-length p1, p1

    if-lt v2, p1, :cond_4

    move v0, v3

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/json/q;->c()I

    move-result v2

    if-lt v1, v2, :cond_6

    invoke-virtual {p1}, Lcom/transsion/json/q;->c()I

    move-result p1

    if-lez p1, :cond_6

    move v0, v3

    :cond_6
    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/json/r;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/transsion/json/r;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/transsion/json/r;

    iget-object v0, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/json/r;->a:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
