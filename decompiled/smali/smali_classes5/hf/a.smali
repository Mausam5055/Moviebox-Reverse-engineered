.class public abstract Lhf/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljf/a;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljf/a;

    invoke-direct {v0}, Ljf/a;-><init>()V

    iput-object v0, p0, Lhf/a;->a:Ljf/a;

    const/4 v0, 0x0

    iput v0, p0, Lhf/a;->b:I

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 1

    iget v0, p0, Lhf/a;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lhf/a;->b:I

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lhf/a;->a:Ljf/a;

    iget v1, p0, Lhf/a;->b:I

    invoke-virtual {v0, v1}, Ljf/a;->k(I)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lhf/a;->b:I

    return v0

    :cond_0
    iget-object v1, p0, Lhf/a;->a:Ljf/a;

    invoke-virtual {v1, v0}, Ljf/a;->p(I)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lhf/a;->b:I

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lhf/a;->a:Ljf/a;

    invoke-virtual {v0}, Ljf/a;->e()V

    const/4 v0, 0x0

    iput v0, p0, Lhf/a;->b:I

    return-void
.end method

.method public final e(II)V
    .locals 1

    iget-object v0, p0, Lhf/a;->a:Ljf/a;

    invoke-virtual {v0, p1, p2}, Ljf/a;->n(II)V

    return-void
.end method
