.class public final Lhf/c;
.super Lhf/e;


# instance fields
.field private final b:Ljf/a;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhf/e;-><init>(Lhf/e;)V

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    iput-object v0, p0, Lhf/c;->b:Ljf/a;

    const/4 v0, 0x0

    iput v0, p0, Lhf/c;->c:I

    return-void
.end method

.method private n(I)V
    .locals 2

    iget v0, p0, Lhf/c;->c:I

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lhf/c;->b:Ljf/a;

    invoke-virtual {v1, p1, v0}, Ljf/a;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;II)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    iget p1, p0, Lhf/c;->c:I

    const/4 p2, 0x4

    add-int/2addr p1, p2

    iput p1, p0, Lhf/c;->c:I

    const/4 p4, 0x1

    if-eq p5, p4, :cond_3

    const/4 p4, 0x2

    if-eq p5, p4, :cond_2

    if-eq p5, p2, :cond_1

    const/16 p4, 0x8

    if-ne p5, p4, :cond_0

    check-cast p3, [J

    array-length p3, p3

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/tencent/tinker/android/dex/DexException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bogus element_width: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lif/a;->b(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/tinker/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p3, [I

    array-length p2, p3

    mul-int/2addr p2, p4

    add-int/2addr p1, p2

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_2
    check-cast p3, [S

    array-length p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_3
    check-cast p3, [B

    array-length p2, p3

    shr-int/lit8 p3, p2, 0x1

    and-int/2addr p2, p4

    add-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Lhf/c;->c:I

    :goto_0
    return-void
.end method

.method public b(IIIIIJIIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    const/16 p1, 0x24

    if-eq p2, p1, :cond_0

    const/16 p1, 0xfc

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public c(IIIIIJIIII)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    const/16 p1, 0x24

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d(IIIII[I)V
    .locals 0

    const/16 p1, 0xfa

    if-ne p2, p1, :cond_0

    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lhf/c;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(IIIIIII)V
    .locals 0

    const/16 p1, 0xfb

    if-ne p2, p1, :cond_0

    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lhf/c;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(IIIIIJI)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    const/16 p1, 0x22

    if-eq p2, p1, :cond_3

    const/16 p1, 0x24

    if-eq p2, p1, :cond_2

    const/16 p1, 0x26

    if-eq p2, p1, :cond_2

    const/16 p1, 0x27

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2b

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2c

    if-eq p2, p1, :cond_2

    const/16 p1, 0xfe

    if-eq p2, p1, :cond_3

    const/16 p1, 0xff

    if-eq p2, p1, :cond_3

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :pswitch_1
    const p1, 0xffff

    if-le p3, p1, :cond_0

    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :pswitch_2
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_1
    :pswitch_3
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_2
    :pswitch_4
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_3
    :pswitch_5
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lhf/c;->c:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public g(III[I)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lhf/c;->c:I

    array-length p2, p4

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lhf/c;->c:I

    return-void
.end method

.method public h(IIIIIJII)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    const/16 p1, 0x25

    if-eq p2, p1, :cond_0

    const/16 p1, 0xfd

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :pswitch_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    return-void

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public i(II[I[I)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lhf/c;->c:I

    array-length p2, p3

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lhf/c;->c:I

    array-length p2, p4

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lhf/c;->c:I

    return-void
.end method

.method public j(IIIIIJIII)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    const/16 p1, 0x24

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_0
    :pswitch_1
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x90
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public k(IIIIIJII)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    const/16 p1, 0x20

    if-eq p2, p1, :cond_2

    const/16 p1, 0x21

    if-eq p2, p1, :cond_1

    const/16 p1, 0x23

    if-eq p2, p1, :cond_2

    const/16 p1, 0x24

    if-eq p2, p1, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_0
    :pswitch_1
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_1
    :pswitch_2
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_2
    :pswitch_3
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lhf/c;->c:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x6e
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7b
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xb0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public l(IIIIIJ)V
    .locals 0

    invoke-direct {p0, p1}, Lhf/c;->n(I)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    if-eqz p2, :cond_4

    const/16 p1, 0xe

    if-eq p2, p1, :cond_4

    const/16 p1, 0x24

    if-eq p2, p1, :cond_3

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unexpected opcode: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lif/a;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lhf/c;->c:I

    invoke-static {p5, p1}, Lhf/b;->q(II)I

    move-result p1

    int-to-short p2, p1

    if-eq p1, p2, :cond_0

    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :pswitch_2
    iget p1, p0, Lhf/c;->c:I

    invoke-static {p5, p1}, Lhf/b;->q(II)I

    move-result p1

    int-to-byte p2, p1

    if-eq p1, p2, :cond_2

    int-to-short p2, p1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_3
    :pswitch_3
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x3

    iput p1, p0, Lhf/c;->c:I

    goto :goto_0

    :cond_4
    iget p1, p0, Lhf/c;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lhf/c;->c:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public m(I)I
    .locals 1

    iget-object v0, p0, Lhf/c;->b:Ljf/a;

    invoke-virtual {v0, p1}, Ljf/a;->k(I)I

    move-result v0

    if-gez v0, :cond_0

    return p1

    :cond_0
    iget-object p1, p0, Lhf/c;->b:Ljf/a;

    invoke-virtual {p1, v0}, Ljf/a;->p(I)I

    move-result p1

    return p1
.end method
