.class public final Lhf/f;
.super Lhf/e;


# instance fields
.field private final b:Lhf/i;

.field private final c:Lhf/c;

.field private final d:Z

.field e:I

.field f:I

.field g:I

.field h:J

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:[I

.field s:[I

.field t:I

.field u:I

.field v:Ljava/lang/Object;

.field w:I


# direct methods
.method public constructor <init>(Lhf/i;Lhf/c;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhf/e;-><init>(Lhf/e;)V

    const/4 v1, 0x0

    iput v1, p0, Lhf/f;->e:I

    iput v1, p0, Lhf/f;->f:I

    iput v1, p0, Lhf/f;->g:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lhf/f;->h:J

    iput v1, p0, Lhf/f;->i:I

    iput v1, p0, Lhf/f;->j:I

    iput v1, p0, Lhf/f;->k:I

    iput v1, p0, Lhf/f;->l:I

    iput v1, p0, Lhf/f;->m:I

    iput v1, p0, Lhf/f;->n:I

    iput v1, p0, Lhf/f;->o:I

    iput v1, p0, Lhf/f;->p:I

    iput v1, p0, Lhf/f;->q:I

    iput-object v0, p0, Lhf/f;->r:[I

    iput-object v0, p0, Lhf/f;->s:[I

    iput v1, p0, Lhf/f;->t:I

    iput v1, p0, Lhf/f;->u:I

    iput-object v0, p0, Lhf/f;->v:Ljava/lang/Object;

    iput v1, p0, Lhf/f;->w:I

    iput-object p1, p0, Lhf/f;->b:Lhf/i;

    iput-object p2, p0, Lhf/f;->c:Lhf/c;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lhf/f;->d:Z

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;II)V
    .locals 0

    iput p2, p0, Lhf/f;->e:I

    iput-object p3, p0, Lhf/f;->v:Ljava/lang/Object;

    iput p4, p0, Lhf/f;->w:I

    iput p5, p0, Lhf/f;->u:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->i:I

    iput p1, p0, Lhf/f;->j:I

    iput p1, p0, Lhf/f;->k:I

    iput p1, p0, Lhf/f;->l:I

    iput p1, p0, Lhf/f;->m:I

    iput p1, p0, Lhf/f;->n:I

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public b(IIIIIJIIIII)V
    .locals 0

    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p5, p0, Lhf/f;->g:I

    iput-wide p6, p0, Lhf/f;->h:J

    const/4 p1, 0x5

    iput p1, p0, Lhf/f;->i:I

    iput p8, p0, Lhf/f;->j:I

    iput p9, p0, Lhf/f;->k:I

    iput p10, p0, Lhf/f;->l:I

    iput p11, p0, Lhf/f;->m:I

    iput p12, p0, Lhf/f;->n:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public c(IIIIIJIIII)V
    .locals 0

    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p5, p0, Lhf/f;->g:I

    iput-wide p6, p0, Lhf/f;->h:J

    const/4 p1, 0x4

    iput p1, p0, Lhf/f;->i:I

    iput p8, p0, Lhf/f;->j:I

    iput p9, p0, Lhf/f;->k:I

    iput p10, p0, Lhf/f;->l:I

    iput p11, p0, Lhf/f;->m:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->n:I

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public d(IIIII[I)V
    .locals 0

    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p5, p0, Lhf/f;->q:I

    array-length p1, p6

    iput p1, p0, Lhf/f;->i:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->j:I

    iput p1, p0, Lhf/f;->k:I

    array-length p2, p6

    if-lez p2, :cond_0

    aget p2, p6, p1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput p2, p0, Lhf/f;->l:I

    array-length p2, p6

    const/4 p3, 0x1

    if-le p2, p3, :cond_1

    aget p2, p6, p3

    goto :goto_1

    :cond_1
    move p2, p1

    :goto_1
    iput p2, p0, Lhf/f;->m:I

    array-length p2, p6

    const/4 p3, 0x2

    if-le p2, p3, :cond_2

    aget p2, p6, p3

    goto :goto_2

    :cond_2
    move p2, p1

    :goto_2
    iput p2, p0, Lhf/f;->n:I

    array-length p2, p6

    const/4 p3, 0x3

    if-le p2, p3, :cond_3

    aget p2, p6, p3

    goto :goto_3

    :cond_3
    move p2, p1

    :goto_3
    iput p2, p0, Lhf/f;->o:I

    array-length p2, p6

    const/4 p3, 0x4

    if-le p2, p3, :cond_4

    aget p1, p6, p3

    :cond_4
    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public e(IIIIIII)V
    .locals 0

    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p6, p0, Lhf/f;->i:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->j:I

    iput p1, p0, Lhf/f;->k:I

    iput p5, p0, Lhf/f;->l:I

    iput p1, p0, Lhf/f;->m:I

    iput p1, p0, Lhf/f;->n:I

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iput p7, p0, Lhf/f;->q:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public f(IIIIIJI)V
    .locals 0

    iget-boolean p1, p0, Lhf/f;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhf/f;->c:Lhf/c;

    invoke-virtual {p1, p5}, Lhf/c;->m(I)I

    move-result p5

    :cond_0
    const/16 p1, 0x1a

    if-ne p2, p1, :cond_3

    iget-boolean p1, p0, Lhf/f;->d:Z

    const p4, 0xffff

    if-eqz p1, :cond_1

    if-le p3, p4, :cond_3

    const/16 p2, 0x1b

    goto :goto_0

    :cond_1
    if-gt p3, p4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "string index out of bound: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lif/a;->d(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", perhaps you need to enable force jumbo mode."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p5, p0, Lhf/f;->g:I

    iput-wide p6, p0, Lhf/f;->h:J

    const/4 p1, 0x1

    iput p1, p0, Lhf/f;->i:I

    iput p8, p0, Lhf/f;->j:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->k:I

    iput p1, p0, Lhf/f;->l:I

    iput p1, p0, Lhf/f;->m:I

    iput p1, p0, Lhf/f;->n:I

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public g(III[I)V
    .locals 2

    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->t:I

    iget-boolean p1, p0, Lhf/f;->d:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    array-length p1, p4

    new-array p1, p1, [I

    iput-object p1, p0, Lhf/f;->s:[I

    move p1, p2

    :goto_0
    array-length p3, p4

    if-ge p1, p3, :cond_1

    iget-object p3, p0, Lhf/f;->s:[I

    iget-object v0, p0, Lhf/f;->c:Lhf/c;

    aget v1, p4, p1

    invoke-virtual {v0, v1}, Lhf/c;->m(I)I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lhf/f;->s:[I

    :cond_1
    iput p2, p0, Lhf/f;->i:I

    iput p2, p0, Lhf/f;->j:I

    iput p2, p0, Lhf/f;->k:I

    iput p2, p0, Lhf/f;->l:I

    iput p2, p0, Lhf/f;->m:I

    iput p2, p0, Lhf/f;->n:I

    iput p2, p0, Lhf/f;->o:I

    iput p2, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public h(IIIIIJII)V
    .locals 0

    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p5, p0, Lhf/f;->g:I

    iput-wide p6, p0, Lhf/f;->h:J

    iput p9, p0, Lhf/f;->i:I

    iput p8, p0, Lhf/f;->j:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->k:I

    iput p1, p0, Lhf/f;->l:I

    iput p1, p0, Lhf/f;->m:I

    iput p1, p0, Lhf/f;->n:I

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public i(II[I[I)V
    .locals 2

    iput p2, p0, Lhf/f;->e:I

    iput-object p3, p0, Lhf/f;->r:[I

    iget-boolean p1, p0, Lhf/f;->d:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    array-length p1, p4

    new-array p1, p1, [I

    iput-object p1, p0, Lhf/f;->s:[I

    move p1, p2

    :goto_0
    array-length p3, p4

    if-ge p1, p3, :cond_1

    iget-object p3, p0, Lhf/f;->s:[I

    iget-object v0, p0, Lhf/f;->c:Lhf/c;

    aget v1, p4, p1

    invoke-virtual {v0, v1}, Lhf/c;->m(I)I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lhf/f;->s:[I

    :cond_1
    iput p2, p0, Lhf/f;->i:I

    iput p2, p0, Lhf/f;->j:I

    iput p2, p0, Lhf/f;->k:I

    iput p2, p0, Lhf/f;->l:I

    iput p2, p0, Lhf/f;->m:I

    iput p2, p0, Lhf/f;->n:I

    iput p2, p0, Lhf/f;->o:I

    iput p2, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public j(IIIIIJIII)V
    .locals 0

    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p5, p0, Lhf/f;->g:I

    iput-wide p6, p0, Lhf/f;->h:J

    const/4 p1, 0x3

    iput p1, p0, Lhf/f;->i:I

    iput p8, p0, Lhf/f;->j:I

    iput p9, p0, Lhf/f;->k:I

    iput p10, p0, Lhf/f;->l:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->m:I

    iput p1, p0, Lhf/f;->n:I

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public k(IIIIIJII)V
    .locals 0

    iget-boolean p1, p0, Lhf/f;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhf/f;->c:Lhf/c;

    invoke-virtual {p1, p5}, Lhf/c;->m(I)I

    move-result p5

    :cond_0
    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p5, p0, Lhf/f;->g:I

    iput-wide p6, p0, Lhf/f;->h:J

    const/4 p1, 0x2

    iput p1, p0, Lhf/f;->i:I

    iput p8, p0, Lhf/f;->j:I

    iput p9, p0, Lhf/f;->k:I

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->l:I

    iput p1, p0, Lhf/f;->m:I

    iput p1, p0, Lhf/f;->n:I

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method

.method public l(IIIIIJ)V
    .locals 2

    iget-boolean p1, p0, Lhf/f;->d:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lhf/f;->c:Lhf/c;

    invoke-virtual {p1, p5}, Lhf/c;->m(I)I

    move-result p5

    const/16 p1, 0x28

    const/16 p4, 0x2a

    const/16 v0, 0x29

    if-eq p2, p1, :cond_2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-virtual {p1}, Lhf/a;->c()I

    move-result p1

    invoke-static {p5, p1}, Lhf/b;->q(II)I

    move-result p1

    int-to-short v0, p1

    if-eq p1, v0, :cond_3

    :cond_1
    move p2, p4

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-virtual {p1}, Lhf/a;->c()I

    move-result p1

    invoke-static {p5, p1}, Lhf/b;->q(II)I

    move-result p1

    int-to-byte v1, p1

    if-eq p1, v1, :cond_3

    int-to-short p2, p1

    if-ne p1, p2, :cond_1

    move p2, v0

    :cond_3
    :goto_0
    iput p2, p0, Lhf/f;->e:I

    iput p3, p0, Lhf/f;->f:I

    iput p5, p0, Lhf/f;->g:I

    iput-wide p6, p0, Lhf/f;->h:J

    const/4 p1, 0x0

    iput p1, p0, Lhf/f;->i:I

    iput p1, p0, Lhf/f;->j:I

    iput p1, p0, Lhf/f;->k:I

    iput p1, p0, Lhf/f;->l:I

    iput p1, p0, Lhf/f;->m:I

    iput p1, p0, Lhf/f;->n:I

    iput p1, p0, Lhf/f;->o:I

    iput p1, p0, Lhf/f;->p:I

    iget-object p1, p0, Lhf/f;->b:Lhf/i;

    invoke-static {p1, p0}, Lhf/b;->g(Lhf/i;Lhf/f;)V

    return-void
.end method
