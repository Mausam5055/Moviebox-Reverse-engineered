.class public final Led/a;
.super Lid/f;


# instance fields
.field private final c:Z

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method public constructor <init>(Lid/b;[Lcom/google/zxing/k;ZIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lid/f;-><init>(Lid/b;[Lcom/google/zxing/k;)V

    iput-boolean p3, p0, Led/a;->c:Z

    iput p4, p0, Led/a;->d:I

    iput p5, p0, Led/a;->e:I

    iput p6, p0, Led/a;->f:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Led/a;->f:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Led/a;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Led/a;->e:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Led/a;->c:Z

    return v0
.end method
