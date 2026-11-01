.class public Ly1/s1;
.super Ljava/lang/Object;

# interfaces
.implements Ly1/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/s1$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media3/common/util/i;

.field private final b:Landroidx/media3/common/e0$b;

.field private final c:Landroidx/media3/common/e0$c;

.field private final d:Ly1/s1$a;

.field private final e:Landroid/util/SparseArray;

.field private f:Landroidx/media3/common/util/t;

.field private g:Landroidx/media3/common/a0;

.field private h:Landroidx/media3/common/util/p;

.field private i:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/i;

    iput-object v0, p0, Ly1/s1;->a:Landroidx/media3/common/util/i;

    new-instance v0, Landroidx/media3/common/util/t;

    invoke-static {}, Landroidx/media3/common/util/a1;->X()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Ly1/u;

    invoke-direct {v2}, Ly1/u;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/common/util/t;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/i;Landroidx/media3/common/util/t$b;)V

    iput-object v0, p0, Ly1/s1;->f:Landroidx/media3/common/util/t;

    new-instance p1, Landroidx/media3/common/e0$b;

    invoke-direct {p1}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object p1, p0, Ly1/s1;->b:Landroidx/media3/common/e0$b;

    new-instance v0, Landroidx/media3/common/e0$c;

    invoke-direct {v0}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object v0, p0, Ly1/s1;->c:Landroidx/media3/common/e0$c;

    new-instance v0, Ly1/s1$a;

    invoke-direct {v0, p1}, Ly1/s1$a;-><init>(Landroidx/media3/common/e0$b;)V

    iput-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ly1/s1;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic A0(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->o2(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;Ly1/c;)V

    return-void
.end method

.method private static synthetic A1(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-interface {p1, p0}, Ly1/c;->p(Ly1/c$a;)V

    return-void
.end method

.method public static synthetic B0(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/s1;->F1(Ly1/c$a;Ly1/c;)V

    return-void
.end method

.method private static synthetic B1(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-interface {p1, p0}, Ly1/c;->t(Ly1/c$a;)V

    return-void
.end method

.method public static synthetic C0(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->h1(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V

    return-void
.end method

.method private static synthetic C1(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-interface {p1, p0}, Ly1/c;->k(Ly1/c$a;)V

    return-void
.end method

.method public static synthetic D0(Ly1/c$a;Lg2/i;Lg2/j;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->K1(Ly1/c$a;Lg2/i;Lg2/j;Ly1/c;)V

    return-void
.end method

.method private static synthetic D1(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-interface {p2, p0}, Ly1/c;->A(Ly1/c$a;)V

    invoke-interface {p2, p0, p1}, Ly1/c;->U(Ly1/c$a;I)V

    return-void
.end method

.method public static synthetic E0(Ly1/c$a;JILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/s1;->n2(Ly1/c$a;JILy1/c;)V

    return-void
.end method

.method private static synthetic E1(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->X(Ly1/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic F0(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/s1;->r2(Ly1/c$a;Ly1/c;)V

    return-void
.end method

.method private static synthetic F1(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-interface {p1, p0}, Ly1/c;->Q(Ly1/c$a;)V

    return-void
.end method

.method public static synthetic G0(Ly1/c$a;Landroidx/media3/common/a0$b;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->t1(Ly1/c$a;Landroidx/media3/common/a0$b;Ly1/c;)V

    return-void
.end method

.method private static synthetic G1(Ly1/c$a;IJLy1/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Ly1/c;->h(Ly1/c$a;IJ)V

    return-void
.end method

.method public static synthetic H0(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->E1(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V

    return-void
.end method

.method private static synthetic H1(Ly1/c$a;ZLy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->M(Ly1/c$a;Z)V

    invoke-interface {p2, p0, p1}, Ly1/c;->g(Ly1/c$a;Z)V

    return-void
.end method

.method public static synthetic I(Ly1/c$a;Landroidx/media3/common/h0;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->f2(Ly1/c$a;Landroidx/media3/common/h0;Ly1/c;)V

    return-void
.end method

.method public static synthetic I0(Ly1/c$a;Ljava/lang/String;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->k2(Ly1/c$a;Ljava/lang/String;Ly1/c;)V

    return-void
.end method

.method private static synthetic I1(Ly1/c$a;ZLy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->n(Ly1/c$a;Z)V

    return-void
.end method

.method public static synthetic J(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/s1;->g1(Ly1/c$a;Ly1/c;)V

    return-void
.end method

.method public static synthetic J0(Ly1/c$a;FLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->q2(Ly1/c$a;FLy1/c;)V

    return-void
.end method

.method private static synthetic J1(Ly1/c$a;Lg2/i;Lg2/j;Ly1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->r(Ly1/c$a;Lg2/i;Lg2/j;)V

    return-void
.end method

.method public static synthetic K(Ly1/c$a;IJJLy1/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ly1/s1;->u1(Ly1/c$a;IJJLy1/c;)V

    return-void
.end method

.method public static synthetic K0(Ly1/c$a;Ljava/lang/Object;JLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/s1;->Y1(Ly1/c$a;Ljava/lang/Object;JLy1/c;)V

    return-void
.end method

.method private static synthetic K1(Ly1/c$a;Lg2/i;Lg2/j;Ly1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->x0(Ly1/c$a;Lg2/i;Lg2/j;)V

    return-void
.end method

.method public static synthetic L(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->D1(Ly1/c$a;ILy1/c;)V

    return-void
.end method

.method public static synthetic L0(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->r1(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;Ly1/c;)V

    return-void
.end method

.method private static synthetic L1(Ly1/c$a;Lg2/i;Lg2/j;Ljava/io/IOException;ZLy1/c;)V
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Ly1/c;->v(Ly1/c$a;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic M(Ly1/c$a;IJLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/s1;->G1(Ly1/c$a;IJLy1/c;)V

    return-void
.end method

.method public static synthetic M0(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/s1;->C1(Ly1/c$a;Ly1/c;)V

    return-void
.end method

.method private static synthetic M1(Ly1/c$a;Lg2/i;Lg2/j;ILy1/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2}, Ly1/c;->I(Ly1/c$a;Lg2/i;Lg2/j;)V

    invoke-interface {p4, p0, p1, p2, p3}, Ly1/c;->k0(Ly1/c$a;Lg2/i;Lg2/j;I)V

    return-void
.end method

.method public static synthetic N(Ly1/c$a;Ljava/lang/String;JJLy1/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ly1/s1;->i1(Ly1/c$a;Ljava/lang/String;JJLy1/c;)V

    return-void
.end method

.method public static synthetic N0(Ly1/c$a;IZLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->y1(Ly1/c$a;IZLy1/c;)V

    return-void
.end method

.method private static synthetic N1(Ly1/c$a;Landroidx/media3/common/t;ILy1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->t0(Ly1/c$a;Landroidx/media3/common/t;I)V

    return-void
.end method

.method public static synthetic O(Ly1/c$a;Landroidx/media3/common/PlaybackException;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->U1(Ly1/c$a;Landroidx/media3/common/PlaybackException;Ly1/c;)V

    return-void
.end method

.method public static synthetic O0(Ly1/c$a;Lu1/b;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->w1(Ly1/c$a;Lu1/b;Ly1/c;)V

    return-void
.end method

.method private static synthetic O1(Ly1/c$a;Landroidx/media3/common/v;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->g0(Ly1/c$a;Landroidx/media3/common/v;)V

    return-void
.end method

.method public static synthetic P(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->i2(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V

    return-void
.end method

.method public static synthetic P0(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->p1(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V

    return-void
.end method

.method private static synthetic P1(Ly1/c$a;Landroidx/media3/common/x;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->m(Ly1/c$a;Landroidx/media3/common/x;)V

    return-void
.end method

.method public static synthetic Q(Ly1/c$a;IIZLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/s1;->Z1(Ly1/c$a;IIZLy1/c;)V

    return-void
.end method

.method public static synthetic Q0(Ly1/c$a;Landroidx/media3/common/t;ILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->N1(Ly1/c$a;Landroidx/media3/common/t;ILy1/c;)V

    return-void
.end method

.method private static synthetic Q1(Ly1/c$a;ZILy1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->O(Ly1/c$a;ZI)V

    return-void
.end method

.method public static synthetic R(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/s1;->B1(Ly1/c$a;Ly1/c;)V

    return-void
.end method

.method public static synthetic R0(Ly1/c$a;ZILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->W1(Ly1/c$a;ZILy1/c;)V

    return-void
.end method

.method private static synthetic R1(Ly1/c$a;Landroidx/media3/common/z;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->P(Ly1/c$a;Landroidx/media3/common/z;)V

    return-void
.end method

.method public static synthetic S(Ly1/c$a;Landroidx/media3/common/v;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->O1(Ly1/c$a;Landroidx/media3/common/v;Ly1/c;)V

    return-void
.end method

.method public static synthetic S0(Ly1/c;Landroidx/media3/common/p;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/s1;->f1(Ly1/c;Landroidx/media3/common/p;)V

    return-void
.end method

.method private static synthetic S1(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->l0(Ly1/c$a;I)V

    return-void
.end method

.method public static synthetic T(Ly1/c$a;Landroidx/media3/common/m0;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->p2(Ly1/c$a;Landroidx/media3/common/m0;Ly1/c;)V

    return-void
.end method

.method public static synthetic T0(Ly1/c$a;Ljava/lang/String;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->j1(Ly1/c$a;Ljava/lang/String;Ly1/c;)V

    return-void
.end method

.method private static synthetic T1(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->V(Ly1/c$a;I)V

    return-void
.end method

.method public static synthetic U(Ly1/c$a;Lg2/i;Lg2/j;ILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/s1;->M1(Ly1/c$a;Lg2/i;Lg2/j;ILy1/c;)V

    return-void
.end method

.method public static synthetic U0(Ly1/c$a;Lg2/j;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->h2(Ly1/c$a;Lg2/j;Ly1/c;)V

    return-void
.end method

.method private static synthetic U1(Ly1/c$a;Landroidx/media3/common/PlaybackException;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->c(Ly1/c$a;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public static synthetic V(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->q1(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;Ly1/c;)V

    return-void
.end method

.method public static synthetic V0(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->a2(Ly1/c$a;ILy1/c;)V

    return-void
.end method

.method private static synthetic V1(Ly1/c$a;Landroidx/media3/common/PlaybackException;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->D(Ly1/c$a;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public static synthetic W(Ly1/c$a;IJJLy1/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ly1/s1;->s1(Ly1/c$a;IJJLy1/c;)V

    return-void
.end method

.method public static synthetic W0(Ly1/c$a;ZLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->I1(Ly1/c$a;ZLy1/c;)V

    return-void
.end method

.method private static synthetic W1(Ly1/c$a;ZILy1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->b0(Ly1/c$a;ZI)V

    return-void
.end method

.method public static synthetic X(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->S1(Ly1/c$a;ILy1/c;)V

    return-void
.end method

.method private static synthetic X1(Ly1/c$a;ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;Ly1/c;)V
    .locals 0

    invoke-interface {p4, p0, p1}, Ly1/c;->d(Ly1/c$a;I)V

    invoke-interface {p4, p0, p2, p3, p1}, Ly1/c;->F(Ly1/c$a;Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V

    return-void
.end method

.method public static synthetic Y(Ly1/c$a;Lg2/i;Lg2/j;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->J1(Ly1/c$a;Lg2/i;Lg2/j;Ly1/c;)V

    return-void
.end method

.method private static synthetic Y1(Ly1/c$a;Ljava/lang/Object;JLy1/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Ly1/c;->G(Ly1/c$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic Z(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1}, Ly1/s1;->A1(Ly1/c$a;Ly1/c;)V

    return-void
.end method

.method private Z0(Landroidx/media3/exoplayer/source/r$b;)Ly1/c$a;
    .locals 3

    iget-object v0, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ly1/s1;->d:Ly1/s1$a;

    invoke-virtual {v1, p1}, Ly1/s1$a;->f(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/common/e0;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Ly1/s1;->b:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    invoke-virtual {p0, v1, v0, p1}, Ly1/s1;->Y0(Landroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iget-object p1, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {p1}, Landroidx/media3/common/a0;->t()I

    move-result p1

    iget-object v1, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/e0;->p()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Ly1/s1;->Y0(Landroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic Z1(Ly1/c$a;IIZLy1/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Ly1/c;->f(Ly1/c$a;IIZ)V

    return-void
.end method

.method public static synthetic a0(Ly1/c$a;Landroidx/media3/common/i0;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->g2(Ly1/c$a;Landroidx/media3/common/i0;Ly1/c;)V

    return-void
.end method

.method private a1()Ly1/c$a;
    .locals 1

    iget-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    invoke-virtual {v0}, Ly1/s1$a;->e()Landroidx/media3/exoplayer/source/r$b;

    move-result-object v0

    invoke-direct {p0, v0}, Ly1/s1;->Z0(Landroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic a2(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->z(Ly1/c$a;I)V

    return-void
.end method

.method public static synthetic b0(Ly1/c$a;Landroidx/media3/common/m;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->x1(Ly1/c$a;Landroidx/media3/common/m;Ly1/c;)V

    return-void
.end method

.method private b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;
    .locals 1

    iget-object v0, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    invoke-virtual {v0, p2}, Ly1/s1$a;->f(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/common/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Ly1/s1;->Z0(Landroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    invoke-virtual {p0, v0, p1, p2}, Ly1/s1;->Y0(Landroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    iget-object p2, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {p2}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/e0;->p()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Ly1/s1;->Y0(Landroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic b2(Ly1/c$a;ZLy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->e0(Ly1/c$a;Z)V

    return-void
.end method

.method public static synthetic c0(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->m1(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;Ly1/c;)V

    return-void
.end method

.method private c1()Ly1/c$a;
    .locals 1

    iget-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    invoke-virtual {v0}, Ly1/s1$a;->g()Landroidx/media3/exoplayer/source/r$b;

    move-result-object v0

    invoke-direct {p0, v0}, Ly1/s1;->Z0(Landroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic c2(Ly1/c$a;ZLy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->m0(Ly1/c$a;Z)V

    return-void
.end method

.method public static synthetic d0(Ly1/c$a;JLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->n1(Ly1/c$a;JLy1/c;)V

    return-void
.end method

.method private d1()Ly1/c$a;
    .locals 1

    iget-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    invoke-virtual {v0}, Ly1/s1$a;->h()Landroidx/media3/exoplayer/source/r$b;

    move-result-object v0

    invoke-direct {p0, v0}, Ly1/s1;->Z0(Landroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic d2(Ly1/c$a;IILy1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->p0(Ly1/c$a;II)V

    return-void
.end method

.method public static synthetic e0(Ly1/c$a;Ljava/lang/String;JJLy1/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Ly1/s1;->j2(Ly1/c$a;Ljava/lang/String;JJLy1/c;)V

    return-void
.end method

.method private e1(Landroidx/media3/common/PlaybackException;)Ly1/c$a;
    .locals 1

    instance-of v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/exoplayer/source/r$b;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Ly1/s1;->Z0(Landroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic e2(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->w0(Ly1/c$a;I)V

    return-void
.end method

.method public static synthetic f0(Ly1/s1;Landroidx/media3/common/a0;Ly1/c;Landroidx/media3/common/p;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ly1/s1;->s2(Landroidx/media3/common/a0;Ly1/c;Landroidx/media3/common/p;)V

    return-void
.end method

.method private static synthetic f1(Ly1/c;Landroidx/media3/common/p;)V
    .locals 0

    return-void
.end method

.method private static synthetic f2(Ly1/c$a;Landroidx/media3/common/h0;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->u0(Ly1/c$a;Landroidx/media3/common/h0;)V

    return-void
.end method

.method public static synthetic g0(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->m2(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V

    return-void
.end method

.method private static synthetic g1(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-interface {p1, p0}, Ly1/c;->B(Ly1/c$a;)V

    return-void
.end method

.method private static synthetic g2(Ly1/c$a;Landroidx/media3/common/i0;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->y(Ly1/c$a;Landroidx/media3/common/i0;)V

    return-void
.end method

.method public static synthetic h0(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->k1(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V

    return-void
.end method

.method private static synthetic h1(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->o(Ly1/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic h2(Ly1/c$a;Lg2/j;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->v0(Ly1/c$a;Lg2/j;)V

    return-void
.end method

.method public static synthetic i0(Ly1/c$a;Landroidx/media3/common/x;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->P1(Ly1/c$a;Landroidx/media3/common/x;Ly1/c;)V

    return-void
.end method

.method private static synthetic i1(Ly1/c$a;Ljava/lang/String;JJLy1/c;)V
    .locals 7

    invoke-interface {p6, p0, p1, p2, p3}, Ly1/c;->W(Ly1/c$a;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Ly1/c;->R(Ly1/c$a;Ljava/lang/String;JJ)V

    return-void
.end method

.method private static synthetic i2(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->h0(Ly1/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic j0(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->e2(Ly1/c$a;ILy1/c;)V

    return-void
.end method

.method private static synthetic j1(Ly1/c$a;Ljava/lang/String;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->a0(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic j2(Ly1/c$a;Ljava/lang/String;JJLy1/c;)V
    .locals 7

    invoke-interface {p6, p0, p1, p2, p3}, Ly1/c;->w(Ly1/c$a;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Ly1/c;->q(Ly1/c$a;Ljava/lang/String;JJ)V

    return-void
.end method

.method public static synthetic k0(Ly1/c$a;ZLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->H1(Ly1/c$a;ZLy1/c;)V

    return-void
.end method

.method private static synthetic k1(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->a(Ly1/c$a;Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method private static synthetic k2(Ly1/c$a;Ljava/lang/String;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->Z(Ly1/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l0(Ly1/c$a;ZILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->Q1(Ly1/c$a;ZILy1/c;)V

    return-void
.end method

.method private static synthetic l1(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->K(Ly1/c$a;Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method private static synthetic l2(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->E(Ly1/c$a;Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method public static synthetic m0(Ly1/c$a;Landroidx/media3/common/z;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->R1(Ly1/c$a;Landroidx/media3/common/z;Ly1/c;)V

    return-void
.end method

.method private static synthetic m1(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;Ly1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->i0(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method

.method private static synthetic m2(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->o0(Ly1/c$a;Landroidx/media3/exoplayer/j;)V

    return-void
.end method

.method public static synthetic n0(Ly1/c$a;Lg2/j;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->z1(Ly1/c$a;Lg2/j;Ly1/c;)V

    return-void
.end method

.method private static synthetic n1(Ly1/c$a;JLy1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->j0(Ly1/c$a;J)V

    return-void
.end method

.method private static synthetic n2(Ly1/c$a;JILy1/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Ly1/c;->T(Ly1/c$a;JI)V

    return-void
.end method

.method public static synthetic o0(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->l1(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V

    return-void
.end method

.method private static synthetic o1(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->L(Ly1/c$a;I)V

    return-void
.end method

.method private static synthetic o2(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;Ly1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->x(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method

.method public static synthetic p0(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->T1(Ly1/c$a;ILy1/c;)V

    return-void
.end method

.method private static synthetic p1(Ly1/c$a;Ljava/lang/Exception;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->n0(Ly1/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic p2(Ly1/c$a;Landroidx/media3/common/m0;Ly1/c;)V
    .locals 6

    invoke-interface {p2, p0, p1}, Ly1/c;->S(Ly1/c$a;Landroidx/media3/common/m0;)V

    iget v2, p1, Landroidx/media3/common/m0;->a:I

    iget v3, p1, Landroidx/media3/common/m0;->b:I

    const/4 v4, 0x0

    iget v5, p1, Landroidx/media3/common/m0;->d:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Ly1/c;->f0(Ly1/c$a;IIIF)V

    return-void
.end method

.method public static synthetic q0(Ly1/c$a;Ljava/util/List;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->v1(Ly1/c$a;Ljava/util/List;Ly1/c;)V

    return-void
.end method

.method private static synthetic q1(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->Y(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method private static synthetic q2(Ly1/c$a;FLy1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->b(Ly1/c$a;F)V

    return-void
.end method

.method public static synthetic r0(Ly1/c$a;ZLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->c2(Ly1/c$a;ZLy1/c;)V

    return-void
.end method

.method private static synthetic r1(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->s(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method

.method private static synthetic r2(Ly1/c$a;Ly1/c;)V
    .locals 0

    invoke-interface {p1, p0}, Ly1/c;->q0(Ly1/c$a;)V

    return-void
.end method

.method public static synthetic s0(Ly1/c$a;Lg2/i;Lg2/j;Ljava/io/IOException;ZLy1/c;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ly1/s1;->L1(Ly1/c$a;Lg2/i;Lg2/j;Ljava/io/IOException;ZLy1/c;)V

    return-void
.end method

.method private static synthetic s1(Ly1/c$a;IJJLy1/c;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Ly1/c;->N(Ly1/c$a;IJJ)V

    return-void
.end method

.method private synthetic s2(Landroidx/media3/common/a0;Ly1/c;Landroidx/media3/common/p;)V
    .locals 2

    new-instance v0, Ly1/c$b;

    iget-object v1, p0, Ly1/s1;->e:Landroid/util/SparseArray;

    invoke-direct {v0, p3, v1}, Ly1/c$b;-><init>(Landroidx/media3/common/p;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Ly1/c;->d0(Landroidx/media3/common/a0;Ly1/c$b;)V

    return-void
.end method

.method public static synthetic t0(Ly1/c$a;ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ly1/s1;->X1(Ly1/c$a;ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;Ly1/c;)V

    return-void
.end method

.method private static synthetic t1(Ly1/c$a;Landroidx/media3/common/a0$b;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->c0(Ly1/c$a;Landroidx/media3/common/a0$b;)V

    return-void
.end method

.method private t2()V
    .locals 3

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/m0;

    invoke-direct {v1, v0}, Ly1/m0;-><init>(Ly1/c$a;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    iget-object v0, p0, Ly1/s1;->f:Landroidx/media3/common/util/t;

    invoke-virtual {v0}, Landroidx/media3/common/util/t;->j()V

    return-void
.end method

.method public static synthetic u0(Ly1/c$a;IILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ly1/s1;->d2(Ly1/c$a;IILy1/c;)V

    return-void
.end method

.method private static synthetic u1(Ly1/c$a;IJJLy1/c;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Ly1/c;->J(Ly1/c$a;IJJ)V

    return-void
.end method

.method public static synthetic v0(Ly1/s1;)V
    .locals 0

    invoke-direct {p0}, Ly1/s1;->t2()V

    return-void
.end method

.method private static synthetic v1(Ly1/c$a;Ljava/util/List;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->r0(Ly1/c$a;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic w0(Ly1/c$a;Landroidx/media3/common/PlaybackException;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->V1(Ly1/c$a;Landroidx/media3/common/PlaybackException;Ly1/c;)V

    return-void
.end method

.method private static synthetic w1(Ly1/c$a;Lu1/b;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->i(Ly1/c$a;Lu1/b;)V

    return-void
.end method

.method public static synthetic x0(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->l2(Ly1/c$a;Landroidx/media3/exoplayer/j;Ly1/c;)V

    return-void
.end method

.method private static synthetic x1(Ly1/c$a;Landroidx/media3/common/m;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->u(Ly1/c$a;Landroidx/media3/common/m;)V

    return-void
.end method

.method public static synthetic y0(Ly1/c$a;ILy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->o1(Ly1/c$a;ILy1/c;)V

    return-void
.end method

.method private static synthetic y1(Ly1/c$a;IZLy1/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Ly1/c;->s0(Ly1/c$a;IZ)V

    return-void
.end method

.method public static synthetic z0(Ly1/c$a;ZLy1/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ly1/s1;->b2(Ly1/c$a;ZLy1/c;)V

    return-void
.end method

.method private static synthetic z1(Ly1/c$a;Lg2/j;Ly1/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Ly1/c;->j(Ly1/c$a;Lg2/j;)V

    return-void
.end method


# virtual methods
.method public final A(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/j1;

    invoke-direct {p2, p1}, Ly1/j1;-><init>(Ly1/c$a;)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public B(IIZ)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/s;

    invoke-direct {v1, v0, p1, p2, p3}, Ly1/s;-><init>(Ly1/c$a;IIZ)V

    const/16 p1, 0x409

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final C(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/y;

    invoke-direct {p2, p1, p3, p4}, Ly1/y;-><init>(Ly1/c$a;Lg2/i;Lg2/j;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final D(ILandroidx/media3/exoplayer/source/r$b;Lg2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/d1;

    invoke-direct {p2, p1, p3}, Ly1/d1;-><init>(Ly1/c$a;Lg2/j;)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final E(ILandroidx/media3/exoplayer/source/r$b;Lg2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/j0;

    invoke-direct {p2, p1, p3}, Ly1/j0;-><init>(Ly1/c$a;Lg2/j;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final F(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/v0;

    invoke-direct {p2, p1, p3, p4, p5}, Ly1/v0;-><init>(Ly1/c$a;Lg2/i;Lg2/j;I)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final G(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/e1;

    invoke-direct {p2, p1}, Ly1/e1;-><init>(Ly1/c$a;)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public H(Landroidx/media3/common/a0;Landroid/os/Looper;)V
    .locals 2

    iget-object v0, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    invoke-static {v0}, Ly1/s1$a;->a(Ly1/s1$a;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/a0;

    iput-object v0, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    iget-object v0, p0, Ly1/s1;->a:Landroidx/media3/common/util/i;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroidx/media3/common/util/i;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/p;

    move-result-object v0

    iput-object v0, p0, Ly1/s1;->h:Landroidx/media3/common/util/p;

    iget-object v0, p0, Ly1/s1;->f:Landroidx/media3/common/util/t;

    new-instance v1, Ly1/i;

    invoke-direct {v1, p0, p1}, Ly1/i;-><init>(Ly1/s1;Landroidx/media3/common/a0;)V

    invoke-virtual {v0, p2, v1}, Landroidx/media3/common/util/t;->e(Landroid/os/Looper;Landroidx/media3/common/util/t$b;)Landroidx/media3/common/util/t;

    move-result-object p1

    iput-object p1, p0, Ly1/s1;->f:Landroidx/media3/common/util/t;

    return-void
.end method

.method protected final X0()Ly1/c$a;
    .locals 1

    iget-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    invoke-virtual {v0}, Ly1/s1$a;->d()Landroidx/media3/exoplayer/source/r$b;

    move-result-object v0

    invoke-direct {p0, v0}, Ly1/s1;->Z0(Landroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object v0

    return-object v0
.end method

.method protected final Y0(Landroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    iget-object v1, v0, Ly1/s1;->a:Landroidx/media3/common/util/i;

    invoke-interface {v1}, Landroidx/media3/common/util/i;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/media3/common/e0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->t()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v1, :cond_5

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentAdGroupIndex()I

    move-result v1

    iget v9, v6, Landroidx/media3/exoplayer/source/r$b;->b:I

    if-ne v1, v9, :cond_5

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v9, v6, Landroidx/media3/exoplayer/source/r$b;->c:I

    if-ne v1, v9, :cond_5

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getContentPosition()J

    move-result-wide v7

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/e0;->q()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Ly1/s1;->c:Landroidx/media3/common/e0$c;

    invoke-virtual {v4, v5, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/e0$c;->b()J

    move-result-wide v7

    :cond_5
    :goto_2
    iget-object v1, v0, Ly1/s1;->d:Ly1/s1$a;

    invoke-virtual {v1}, Ly1/s1$a;->d()Landroidx/media3/exoplayer/source/r$b;

    move-result-object v11

    new-instance v16, Ly1/c$a;

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    move-result-object v9

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->t()I

    move-result v10

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentPosition()J

    move-result-wide v12

    iget-object v1, v0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-interface {v1}, Landroidx/media3/common/a0;->d()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Ly1/c$a;-><init>(JLandroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;JLandroidx/media3/common/e0;ILandroidx/media3/exoplayer/source/r$b;JJ)V

    return-object v16
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/f1;

    invoke-direct {v1, v0, p1}, Ly1/f1;-><init>(Ly1/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/p;

    invoke-direct {v1, v0, p1}, Ly1/p;-><init>(Ly1/c$a;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/p1;

    invoke-direct {v1, v0, p1}, Ly1/p1;-><init>(Ly1/c$a;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final d(J)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/o0;

    invoke-direct {v1, v0, p1, p2}, Ly1/o0;-><init>(Ly1/c$a;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/g;

    invoke-direct {v1, v0, p1}, Ly1/g;-><init>(Ly1/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;J)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/c1;

    invoke-direct {v1, v0, p1, p2, p3}, Ly1/c1;-><init>(Ly1/c$a;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final g(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/e0;

    invoke-direct {v1, v0, p1}, Ly1/e0;-><init>(Ly1/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final h(IJJ)V
    .locals 9

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v7

    new-instance v8, Ly1/h1;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ly1/h1;-><init>(Ly1/c$a;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v7, p1, v8}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final i(JI)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->c1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/r0;

    invoke-direct {v1, v0, p1, p2, p3}, Ly1/r0;-><init>(Ly1/c$a;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public j(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/n1;

    invoke-direct {v1, v0, p1}, Ly1/n1;-><init>(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    const/16 p1, 0x407

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public k(Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/l1;

    invoke-direct {v1, v0, p1}, Ly1/l1;-><init>(Ly1/c$a;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    const/16 p1, 0x408

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final l(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/v;

    invoke-direct {p2, p1, p3, p4}, Ly1/v;-><init>(Ly1/c$a;Lg2/i;Lg2/j;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Ly1/s1;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ly1/s1;->i:Z

    new-instance v1, Ly1/a0;

    invoke-direct {v1, v0}, Ly1/a0;-><init>(Ly1/c$a;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    :cond_0
    return-void
.end method

.method public final n(Landroidx/media3/exoplayer/j;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/n0;

    invoke-direct {v1, v0, p1}, Ly1/n0;-><init>(Ly1/c$a;Landroidx/media3/exoplayer/j;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final o(Landroidx/media3/exoplayer/j;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/b1;

    invoke-direct {v1, v0, p1}, Ly1/b1;-><init>(Ly1/c$a;Landroidx/media3/exoplayer/j;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v7

    new-instance v8, Ly1/m;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ly1/m;-><init>(Ly1/c$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v7, p1, v8}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onAudioSessionIdChanged(I)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/y0;

    invoke-direct {v1, v0, p1}, Ly1/y0;-><init>(Ly1/c$a;I)V

    const/16 p1, 0x15

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/a0$b;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/q1;

    invoke-direct {v1, v0, p1}, Ly1/q1;-><init>(Ly1/c$a;Landroidx/media3/common/a0$b;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    invoke-direct {p0}, Ly1/s1;->a1()Ly1/c$a;

    move-result-object v7

    new-instance v8, Ly1/i0;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Ly1/i0;-><init>(Ly1/c$a;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v7, p1, v8}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/t;

    invoke-direct {v1, v0, p1}, Ly1/t;-><init>(Ly1/c$a;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onCues(Lu1/b;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/z;

    invoke-direct {v1, v0, p1}, Ly1/z;-><init>(Ly1/c$a;Lu1/b;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/m;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/u0;

    invoke-direct {v1, v0, p1}, Ly1/u0;-><init>(Ly1/c$a;Landroidx/media3/common/m;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/q0;

    invoke-direct {v1, v0, p1, p2}, Ly1/q0;-><init>(Ly1/c$a;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->c1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/p0;

    invoke-direct {v1, v0, p1, p2, p3}, Ly1/p0;-><init>(Ly1/c$a;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onEvents(Landroidx/media3/common/a0;Landroidx/media3/common/a0$c;)V
    .locals 0

    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/o1;

    invoke-direct {v1, v0, p1}, Ly1/o1;-><init>(Ly1/c$a;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/l;

    invoke-direct {v1, v0, p1}, Ly1/l;-><init>(Ly1/c$a;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onMediaItemTransition(Landroidx/media3/common/t;I)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/e;

    invoke-direct {v1, v0, p1, p2}, Ly1/e;-><init>(Ly1/c$a;Landroidx/media3/common/t;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/v;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/k0;

    invoke-direct {v1, v0, p1}, Ly1/k0;-><init>(Ly1/c$a;Landroidx/media3/common/v;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onMetadata(Landroidx/media3/common/x;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/k;

    invoke-direct {v1, v0, p1}, Ly1/k;-><init>(Ly1/c$a;Landroidx/media3/common/x;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/r;

    invoke-direct {v1, v0, p1, p2}, Ly1/r;-><init>(Ly1/c$a;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Landroidx/media3/common/z;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/d;

    invoke-direct {v1, v0, p1}, Ly1/d;-><init>(Ly1/c$a;Landroidx/media3/common/z;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/x;

    invoke-direct {v1, v0, p1}, Ly1/x;-><init>(Ly1/c$a;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/n;

    invoke-direct {v1, v0, p1}, Ly1/n;-><init>(Ly1/c$a;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    invoke-direct {p0, p1}, Ly1/s1;->e1(Landroidx/media3/common/PlaybackException;)Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/w;

    invoke-direct {v1, v0, p1}, Ly1/w;-><init>(Ly1/c$a;Landroidx/media3/common/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    invoke-direct {p0, p1}, Ly1/s1;->e1(Landroidx/media3/common/PlaybackException;)Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/q;

    invoke-direct {v1, v0, p1}, Ly1/q;-><init>(Ly1/c$a;Landroidx/media3/common/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/j;

    invoke-direct {v1, v0, p1, p2}, Ly1/j;-><init>(Ly1/c$a;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public final onPositionDiscontinuity(Landroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly1/s1;->i:Z

    :cond_0
    iget-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    iget-object v1, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/a0;

    invoke-virtual {v0, v1}, Ly1/s1$a;->j(Landroidx/media3/common/a0;)V

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/b0;

    invoke-direct {v1, v0, p3, p1, p2}, Ly1/b0;-><init>(Ly1/c$a;ILandroidx/media3/common/a0$e;Landroidx/media3/common/a0$e;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/d0;

    invoke-direct {v1, v0, p1}, Ly1/d0;-><init>(Ly1/c$a;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/g0;

    invoke-direct {v1, v0, p1}, Ly1/g0;-><init>(Ly1/c$a;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/m1;

    invoke-direct {v1, v0, p1}, Ly1/m1;-><init>(Ly1/c$a;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/h0;

    invoke-direct {v1, v0, p1, p2}, Ly1/h0;-><init>(Ly1/c$a;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onTimelineChanged(Landroidx/media3/common/e0;I)V
    .locals 1

    iget-object p1, p0, Ly1/s1;->d:Ly1/s1$a;

    iget-object v0, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/a0;

    invoke-virtual {p1, v0}, Ly1/s1$a;->l(Landroidx/media3/common/a0;)V

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object p1

    new-instance v0, Ly1/r1;

    invoke-direct {v0, p1, p2}, Ly1/r1;-><init>(Ly1/c$a;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/h0;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/g1;

    invoke-direct {v1, v0, p1}, Ly1/g1;-><init>(Ly1/c$a;Landroidx/media3/common/h0;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/i0;)V
    .locals 2

    invoke-virtual {p0}, Ly1/s1;->X0()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/o;

    invoke-direct {v1, v0, p1}, Ly1/o;-><init>(Ly1/c$a;Landroidx/media3/common/i0;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v7

    new-instance v8, Ly1/f0;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Ly1/f0;-><init>(Ly1/c$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v7, p1, v8}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/m0;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/z0;

    invoke-direct {v1, v0, p1}, Ly1/z0;-><init>(Ly1/c$a;Landroidx/media3/common/m0;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/f;

    invoke-direct {v1, v0, p1}, Ly1/f;-><init>(Ly1/c$a;F)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final p(Ljava/util/List;Landroidx/media3/exoplayer/source/r$b;)V
    .locals 2

    iget-object v0, p0, Ly1/s1;->d:Ly1/s1$a;

    iget-object v1, p0, Ly1/s1;->g:Landroidx/media3/common/a0;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/a0;

    invoke-virtual {v0, p1, p2, v1}, Ly1/s1$a;->k(Ljava/util/List;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/a0;)V

    return-void
.end method

.method public final q(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/k1;

    invoke-direct {p2, p1}, Ly1/k1;-><init>(Ly1/c$a;)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final r(ILandroidx/media3/exoplayer/source/r$b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/t0;

    invoke-direct {p2, p1, p3}, Ly1/t0;-><init>(Ly1/c$a;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Ly1/s1;->h:Landroidx/media3/common/util/p;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/p;

    new-instance v1, Ly1/c0;

    invoke-direct {v1, p0}, Ly1/c0;-><init>(Ly1/s1;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/a1;

    invoke-direct {v1, v0, p1, p2}, Ly1/a1;-><init>(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final t(Landroidx/media3/exoplayer/j;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->c1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/s0;

    invoke-direct {v1, v0, p1}, Ly1/s0;-><init>(Ly1/c$a;Landroidx/media3/exoplayer/j;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final u(Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->d1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/x0;

    invoke-direct {v1, v0, p1, p2}, Ly1/x0;-><init>(Ly1/c$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method protected final u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V
    .locals 1

    iget-object v0, p0, Ly1/s1;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Ly1/s1;->f:Landroidx/media3/common/util/t;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/util/t;->l(ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final v(Landroidx/media3/exoplayer/j;)V
    .locals 2

    invoke-direct {p0}, Ly1/s1;->c1()Ly1/c$a;

    move-result-object v0

    new-instance v1, Ly1/l0;

    invoke-direct {v1, v0, p1}, Ly1/l0;-><init>(Ly1/c$a;Landroidx/media3/exoplayer/j;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final w(ILandroidx/media3/exoplayer/source/r$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/i1;

    invoke-direct {p2, p1}, Ly1/i1;-><init>(Ly1/c$a;)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final x(ILandroidx/media3/exoplayer/source/r$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/w0;

    invoke-direct {p2, p1, p3}, Ly1/w0;-><init>(Ly1/c$a;Ljava/lang/Exception;)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public final y(ILandroidx/media3/exoplayer/source/r$b;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V
    .locals 6

    invoke-direct {p0, p1, p2}, Ly1/s1;->b1(ILandroidx/media3/exoplayer/source/r$b;)Ly1/c$a;

    move-result-object p1

    new-instance p2, Ly1/h;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Ly1/h;-><init>(Ly1/c$a;Lg2/i;Lg2/j;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Ly1/s1;->u2(Ly1/c$a;ILandroidx/media3/common/util/t$a;)V

    return-void
.end method

.method public z(Ly1/c;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Ly1/s1;->f:Landroidx/media3/common/util/t;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/t;->c(Ljava/lang/Object;)V

    return-void
.end method
