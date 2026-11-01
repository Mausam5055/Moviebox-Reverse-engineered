.class public abstract Landroidx/media3/exoplayer/source/l0;
.super Landroidx/media3/exoplayer/source/c;


# static fields
.field private static final l:Ljava/lang/Void;


# instance fields
.field protected final k:Landroidx/media3/exoplayer/source/r;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroidx/media3/exoplayer/source/r;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/c;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    return-void
.end method


# virtual methods
.method protected bridge synthetic D(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/l0;->K(Ljava/lang/Void;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic E(Ljava/lang/Object;JLandroidx/media3/exoplayer/source/r$b;)J
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/l0;->M(Ljava/lang/Void;JLandroidx/media3/exoplayer/source/r$b;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected bridge synthetic F(Ljava/lang/Object;I)I
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/l0;->O(Ljava/lang/Void;I)I

    move-result p1

    return p1
.end method

.method protected bridge synthetic H(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/l0;->Q(Ljava/lang/Void;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    return-void
.end method

.method protected J(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 0

    return-object p1
.end method

.method protected final K(Ljava/lang/Void;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/l0;->J(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    return-object p1
.end method

.method protected L(JLandroidx/media3/exoplayer/source/r$b;)J
    .locals 0

    return-wide p1
.end method

.method protected final M(Ljava/lang/Void;JLandroidx/media3/exoplayer/source/r$b;)J
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroidx/media3/exoplayer/source/l0;->L(JLandroidx/media3/exoplayer/source/r$b;)J

    move-result-wide p1

    return-wide p1
.end method

.method protected N(I)I
    .locals 0

    return p1
.end method

.method protected final O(Ljava/lang/Void;I)I
    .locals 0

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/l0;->N(I)I

    move-result p1

    return p1
.end method

.method protected abstract P(Landroidx/media3/common/e0;)V
.end method

.method protected final Q(Ljava/lang/Void;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 0

    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/source/l0;->P(Landroidx/media3/common/e0;)V

    return-void
.end method

.method protected final R()V
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/source/l0;->l:Ljava/lang/Void;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/c;->I(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;)V

    return-void
.end method

.method protected S()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l0;->R()V

    return-void
.end method

.method public a()Landroidx/media3/common/t;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/r;->a()Landroidx/media3/common/t;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/r;->b()Z

    move-result v0

    return v0
.end method

.method public c()Landroidx/media3/common/e0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/r;->c()Landroidx/media3/common/e0;

    move-result-object v0

    return-object v0
.end method

.method public l(Landroidx/media3/common/t;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->l(Landroidx/media3/common/t;)V

    return-void
.end method

.method protected final z(Lw1/n;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/c;->z(Lw1/n;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l0;->S()V

    return-void
.end method
