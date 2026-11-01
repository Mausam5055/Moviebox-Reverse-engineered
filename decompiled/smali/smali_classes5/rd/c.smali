.class public final Lrd/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[I

.field private final c:[Lcom/google/zxing/k;


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lrd/c;->a:I

    iput-object p2, p0, Lrd/c;->b:[I

    new-instance p1, Lcom/google/zxing/k;

    int-to-float p2, p3

    int-to-float p3, p5

    invoke-direct {p1, p2, p3}, Lcom/google/zxing/k;-><init>(FF)V

    new-instance p2, Lcom/google/zxing/k;

    int-to-float p4, p4

    invoke-direct {p2, p4, p3}, Lcom/google/zxing/k;-><init>(FF)V

    const/4 p3, 0x2

    new-array p3, p3, [Lcom/google/zxing/k;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const/4 p1, 0x1

    aput-object p2, p3, p1

    iput-object p3, p0, Lrd/c;->c:[Lcom/google/zxing/k;

    return-void
.end method


# virtual methods
.method public a()[Lcom/google/zxing/k;
    .locals 1

    iget-object v0, p0, Lrd/c;->c:[Lcom/google/zxing/k;

    return-object v0
.end method

.method public b()[I
    .locals 1

    iget-object v0, p0, Lrd/c;->b:[I

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lrd/c;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lrd/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lrd/c;

    iget v0, p0, Lrd/c;->a:I

    iget p1, p1, Lrd/c;->a:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lrd/c;->a:I

    return v0
.end method
