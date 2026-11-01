.class public final Lcom/tencent/tinker/android/dex/n;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lgf/a;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/android/dex/l;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/l;->a()Lgf/a;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/tencent/tinker/android/dex/n;-><init>(Lgf/a;I)V

    return-void
.end method

.method public constructor <init>(Lgf/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iput p2, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    return-void
.end method

.method private a(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->c()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const-string p1, "Expected %x but was %x"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/android/dex/n;->c:I

    return v0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    invoke-interface {v0}, Lgf/a;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    iput v1, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    :cond_0
    iget v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->c:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    invoke-static {v0}, Lcom/tencent/tinker/android/dex/p;->b(Lgf/a;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget v0, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()B
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/m;->a(Lgf/a;I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public i()C
    .locals 3

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public j()D
    .locals 3

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->d(Lgf/a;IZ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public k()I
    .locals 3

    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 3

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    return v0
.end method

.method public m()F
    .locals 3

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/m;->a(Lgf/a;I)I

    move-result v0

    return v0
.end method

.method public o()J
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/m;->b(Lgf/a;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public p()I
    .locals 3

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 3

    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 3

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    return v0
.end method

.method public s()V
    .locals 1

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    return-void
.end method

.method public t()S
    .locals 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    invoke-static {v0, v1}, Lcom/tencent/tinker/android/dex/m;->a(Lgf/a;I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public u()I
    .locals 3

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 3

    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/n;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    iget-object v0, p0, Lcom/tencent/tinker/android/dex/n;->a:Lgf/a;

    iget v1, p0, Lcom/tencent/tinker/android/dex/n;->d:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/android/dex/m;->c(Lgf/a;IZ)I

    move-result v0

    return v0
.end method

.method public w()V
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->c()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/tencent/tinker/android/dex/DexException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/tinker/android/dex/n;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->g()Z

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->s()V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->d()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->e()I

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->w()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->f()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->w()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->k()I

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->p()I

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->l()I

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->v()I

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->u()I

    goto :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->q()I

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->r()I

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->j()D

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->m()F

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->n()I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->i()C

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->t()S

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->o()J

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/tinker/android/dex/n;->h()B

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
