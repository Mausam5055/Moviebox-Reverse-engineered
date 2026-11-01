.class final Lh10/p;
.super Ljava/lang/Object;


# instance fields
.field final a:Lh10/q;

.field final b:Lh10/q;

.field final c:Lh10/q;

.field final d:I

.field final e:Ljava/lang/String;

.field f:Lh10/p;


# direct methods
.method constructor <init>(Lh10/p;Lh10/q;Lh10/q;)V
    .locals 6

    iget-object v3, p1, Lh10/p;->c:Lh10/q;

    iget v4, p1, Lh10/p;->d:I

    iget-object v5, p1, Lh10/p;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lh10/p;-><init>(Lh10/q;Lh10/q;Lh10/q;ILjava/lang/String;)V

    iget-object p1, p1, Lh10/p;->f:Lh10/p;

    iput-object p1, p0, Lh10/p;->f:Lh10/p;

    return-void
.end method

.method constructor <init>(Lh10/q;Lh10/q;Lh10/q;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh10/p;->a:Lh10/q;

    iput-object p2, p0, Lh10/p;->b:Lh10/q;

    iput-object p3, p0, Lh10/p;->c:Lh10/q;

    iput p4, p0, Lh10/p;->d:I

    iput-object p5, p0, Lh10/p;->e:Ljava/lang/String;

    return-void
.end method

.method static a(Lh10/p;)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lh10/p;->f:Lh10/p;

    goto :goto_0

    :cond_0
    return v0
.end method

.method static b(Lh10/p;)I
    .locals 0

    invoke-static {p0}, Lh10/p;->a(Lh10/p;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method static c(Lh10/p;Lh10/d;)V
    .locals 2

    invoke-static {p0}, Lh10/p;->a(Lh10/p;)I

    move-result v0

    invoke-virtual {p1, v0}, Lh10/d;->k(I)Lh10/d;

    :goto_0
    if-eqz p0, :cond_0

    iget-object v0, p0, Lh10/p;->a:Lh10/q;

    iget v0, v0, Lh10/q;->d:I

    invoke-virtual {p1, v0}, Lh10/d;->k(I)Lh10/d;

    move-result-object v0

    iget-object v1, p0, Lh10/p;->b:Lh10/q;

    iget v1, v1, Lh10/q;->d:I

    invoke-virtual {v0, v1}, Lh10/d;->k(I)Lh10/d;

    move-result-object v0

    iget-object v1, p0, Lh10/p;->c:Lh10/q;

    iget v1, v1, Lh10/q;->d:I

    invoke-virtual {v0, v1}, Lh10/d;->k(I)Lh10/d;

    move-result-object v0

    iget v1, p0, Lh10/p;->d:I

    invoke-virtual {v0, v1}, Lh10/d;->k(I)Lh10/d;

    iget-object p0, p0, Lh10/p;->f:Lh10/p;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static d(Lh10/p;Lh10/q;Lh10/q;)Lh10/p;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lh10/p;->f:Lh10/p;

    invoke-static {v0, p1, p2}, Lh10/p;->d(Lh10/p;Lh10/q;Lh10/q;)Lh10/p;

    move-result-object v0

    iput-object v0, p0, Lh10/p;->f:Lh10/p;

    iget-object v1, p0, Lh10/p;->a:Lh10/q;

    iget v2, v1, Lh10/q;->d:I

    iget-object v3, p0, Lh10/p;->b:Lh10/q;

    iget v4, v3, Lh10/q;->d:I

    iget v5, p1, Lh10/q;->d:I

    if-nez p2, :cond_1

    const v6, 0x7fffffff

    goto :goto_0

    :cond_1
    iget v6, p2, Lh10/q;->d:I

    :goto_0
    if-ge v5, v4, :cond_6

    if-gt v6, v2, :cond_2

    goto :goto_1

    :cond_2
    if-gt v5, v2, :cond_4

    if-lt v6, v4, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Lh10/p;

    invoke-direct {p1, p0, p2, v3}, Lh10/p;-><init>(Lh10/p;Lh10/q;Lh10/q;)V

    return-object p1

    :cond_4
    if-lt v6, v4, :cond_5

    new-instance p2, Lh10/p;

    invoke-direct {p2, p0, v1, p1}, Lh10/p;-><init>(Lh10/p;Lh10/q;Lh10/q;)V

    return-object p2

    :cond_5
    new-instance v0, Lh10/p;

    invoke-direct {v0, p0, p2, v3}, Lh10/p;-><init>(Lh10/p;Lh10/q;Lh10/q;)V

    iput-object v0, p0, Lh10/p;->f:Lh10/p;

    new-instance p2, Lh10/p;

    iget-object v0, p0, Lh10/p;->a:Lh10/q;

    invoke-direct {p2, p0, v0, p1}, Lh10/p;-><init>(Lh10/p;Lh10/q;Lh10/q;)V

    return-object p2

    :cond_6
    :goto_1
    return-object p0
.end method
