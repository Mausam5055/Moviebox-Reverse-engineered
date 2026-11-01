.class public Le9/p1;
.super Ljava/lang/Object;

# interfaces
.implements Le9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le9/p1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/e;

.field private final b:Lcom/google/android/exoplayer2/k3$b;

.field private final c:Lcom/google/android/exoplayer2/k3$d;

.field private final d:Le9/p1$a;

.field private final e:Landroid/util/SparseArray;

.field private f:Lcom/google/android/exoplayer2/util/r;

.field private g:Lcom/google/android/exoplayer2/o2;

.field private h:Lcom/google/android/exoplayer2/util/o;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/e;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/e;

    iput-object v0, p0, Le9/p1;->a:Lcom/google/android/exoplayer2/util/e;

    new-instance v0, Lcom/google/android/exoplayer2/util/r;

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->Q()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Le9/a0;

    invoke-direct {v2}, Le9/a0;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/util/r;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/e;Lcom/google/android/exoplayer2/util/r$b;)V

    iput-object v0, p0, Le9/p1;->f:Lcom/google/android/exoplayer2/util/r;

    new-instance p1, Lcom/google/android/exoplayer2/k3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/k3$b;-><init>()V

    iput-object p1, p0, Le9/p1;->b:Lcom/google/android/exoplayer2/k3$b;

    new-instance v0, Lcom/google/android/exoplayer2/k3$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k3$d;-><init>()V

    iput-object v0, p0, Le9/p1;->c:Lcom/google/android/exoplayer2/k3$d;

    new-instance v0, Le9/p1$a;

    invoke-direct {v0, p1}, Le9/p1$a;-><init>(Lcom/google/android/exoplayer2/k3$b;)V

    iput-object v0, p0, Le9/p1;->d:Le9/p1$a;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Le9/p1;->e:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic A0(Le9/c$a;Lcom/google/android/exoplayer2/n2;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->J1(Le9/c$a;Lcom/google/android/exoplayer2/n2;Le9/c;)V

    return-void
.end method

.method private static synthetic A1(Le9/c$a;ZLe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->O(Le9/c$a;Z)V

    return-void
.end method

.method public static synthetic B0(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->g1(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V

    return-void
.end method

.method private static synthetic B1(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->y0(Le9/c$a;Lt9/h;Lt9/i;)V

    return-void
.end method

.method public static synthetic C0(Le9/c$a;Lba/f;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->o1(Le9/c$a;Lba/f;Le9/c;)V

    return-void
.end method

.method private static synthetic C1(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->p(Le9/c$a;Lt9/h;Lt9/i;)V

    return-void
.end method

.method public static synthetic D0(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->h1(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;Le9/c;)V

    return-void
.end method

.method private static synthetic D1(Le9/c$a;Lt9/h;Lt9/i;Ljava/io/IOException;ZLe9/c;)V
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Le9/c;->u(Le9/c$a;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic E0(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->g2(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;Le9/c;)V

    return-void
.end method

.method private static synthetic E1(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->d(Le9/c$a;Lt9/h;Lt9/i;)V

    return-void
.end method

.method public static synthetic F0(Le9/c$a;Ljava/lang/Exception;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->w1(Le9/c$a;Ljava/lang/Exception;Le9/c;)V

    return-void
.end method

.method private static synthetic F1(Le9/c$a;Lcom/google/android/exoplayer2/v1;ILe9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->o(Le9/c$a;Lcom/google/android/exoplayer2/v1;I)V

    return-void
.end method

.method public static synthetic G(Le9/c$a;Ljava/lang/String;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->e1(Le9/c$a;Ljava/lang/String;Le9/c;)V

    return-void
.end method

.method public static synthetic G0(Le9/c$a;Ljava/util/List;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->n1(Le9/c$a;Ljava/util/List;Le9/c;)V

    return-void
.end method

.method private static synthetic G1(Le9/c$a;Lcom/google/android/exoplayer2/a2;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->h(Le9/c$a;Lcom/google/android/exoplayer2/a2;)V

    return-void
.end method

.method public static synthetic H(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->f1(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V

    return-void
.end method

.method public static synthetic H0(Le9/p1;)V
    .locals 0

    invoke-direct {p0}, Le9/p1;->l2()V

    return-void
.end method

.method private static synthetic H1(Le9/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->i(Le9/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public static synthetic I(Le9/c$a;JILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/p1;->f2(Le9/c$a;JILe9/c;)V

    return-void
.end method

.method public static synthetic I0(Le9/c$a;Ljava/lang/String;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->c2(Le9/c$a;Ljava/lang/String;Le9/c;)V

    return-void
.end method

.method private static synthetic I1(Le9/c$a;ZILe9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->g(Le9/c$a;ZI)V

    return-void
.end method

.method public static synthetic J(Le9/c$a;Ljava/lang/Exception;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->j1(Le9/c$a;Ljava/lang/Exception;Le9/c;)V

    return-void
.end method

.method public static synthetic J0(Le9/c$a;ILcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/p1;->P1(Le9/c$a;ILcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;Le9/c;)V

    return-void
.end method

.method private static synthetic J1(Le9/c$a;Lcom/google/android/exoplayer2/n2;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->q0(Le9/c$a;Lcom/google/android/exoplayer2/n2;)V

    return-void
.end method

.method public static synthetic K(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->B1(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V

    return-void
.end method

.method public static synthetic K0(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-static {p0, p1}, Le9/p1;->t1(Le9/c$a;Le9/c;)V

    return-void
.end method

.method private static synthetic K1(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->s0(Le9/c$a;I)V

    return-void
.end method

.method public static synthetic L(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->K1(Le9/c$a;ILe9/c;)V

    return-void
.end method

.method public static synthetic L0(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-static {p0, p1}, Le9/p1;->b1(Le9/c$a;Le9/c;)V

    return-void
.end method

.method private static synthetic L1(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->c(Le9/c$a;I)V

    return-void
.end method

.method public static synthetic M(Le9/c;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    invoke-static {p0, p1}, Le9/p1;->a1(Le9/c;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method public static synthetic M0(Le9/c$a;Ljava/lang/String;JJLe9/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Le9/p1;->d1(Le9/c$a;Ljava/lang/String;JJLe9/c;)V

    return-void
.end method

.method private static synthetic M1(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->M(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic N(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->N1(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;Le9/c;)V

    return-void
.end method

.method public static synthetic N0(Le9/c$a;Ljava/lang/String;JJLe9/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Le9/p1;->b2(Le9/c$a;Ljava/lang/String;JJLe9/c;)V

    return-void
.end method

.method private static synthetic N1(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->z0(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public static synthetic O(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->e2(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V

    return-void
.end method

.method public static synthetic O0(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->M1(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;Le9/c;)V

    return-void
.end method

.method private static synthetic O1(Le9/c$a;ZILe9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->y(Le9/c$a;ZI)V

    return-void
.end method

.method public static synthetic P(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-static {p0, p1}, Le9/p1;->j2(Le9/c$a;Le9/c;)V

    return-void
.end method

.method public static synthetic P0(Le9/c$a;IJJLe9/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Le9/p1;->k1(Le9/c$a;IJJLe9/c;)V

    return-void
.end method

.method private static synthetic P1(Le9/c$a;ILcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;Le9/c;)V
    .locals 0

    invoke-interface {p4, p0, p1}, Le9/c;->R(Le9/c$a;I)V

    invoke-interface {p4, p0, p2, p3, p1}, Le9/c;->k(Le9/c$a;Lcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;I)V

    return-void
.end method

.method public static synthetic Q(Le9/c$a;Lcom/google/android/exoplayer2/a2;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->G1(Le9/c$a;Lcom/google/android/exoplayer2/a2;Le9/c;)V

    return-void
.end method

.method public static synthetic Q0(Le9/c$a;ZLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->U1(Le9/c$a;ZLe9/c;)V

    return-void
.end method

.method private static synthetic Q1(Le9/c$a;Ljava/lang/Object;JLe9/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Le9/c;->A(Le9/c$a;Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic R(Le9/c$a;ZILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->O1(Le9/c$a;ZILe9/c;)V

    return-void
.end method

.method public static synthetic R0(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-static {p0, p1}, Le9/p1;->u1(Le9/c$a;Le9/c;)V

    return-void
.end method

.method private static synthetic R1(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->K(Le9/c$a;I)V

    return-void
.end method

.method public static synthetic S(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->W1(Le9/c$a;ILe9/c;)V

    return-void
.end method

.method private static synthetic S1(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-interface {p1, p0}, Le9/c;->X(Le9/c$a;)V

    return-void
.end method

.method public static synthetic T(Le9/c$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->X1(Le9/c$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Le9/c;)V

    return-void
.end method

.method private static synthetic T1(Le9/c$a;ZLe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->l0(Le9/c$a;Z)V

    return-void
.end method

.method public static synthetic U(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->d2(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V

    return-void
.end method

.method private U0(Lcom/google/android/exoplayer2/source/o$b;)Le9/c$a;
    .locals 3

    iget-object v0, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le9/p1;->d:Le9/p1$a;

    invoke-virtual {v1, p1}, Le9/p1$a;->f(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/k3;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lt9/j;->a:Ljava/lang/Object;

    iget-object v2, p0, Le9/p1;->b:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/k3$b;->c:I

    invoke-virtual {p0, v1, v0, p1}, Le9/p1;->T0(Lcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    iget-object p1, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result p1

    iget-object v1, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/android/exoplayer2/k3;->a:Lcom/google/android/exoplayer2/k3;

    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Le9/p1;->T0(Lcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic U1(Le9/c$a;ZLe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->b0(Le9/c$a;Z)V

    return-void
.end method

.method public static synthetic V(Le9/c$a;Lt9/i;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->r1(Le9/c$a;Lt9/i;Le9/c;)V

    return-void
.end method

.method private V0()Le9/c$a;
    .locals 1

    iget-object v0, p0, Le9/p1;->d:Le9/p1$a;

    invoke-virtual {v0}, Le9/p1$a;->e()Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v0

    invoke-direct {p0, v0}, Le9/p1;->U0(Lcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic V1(Le9/c$a;IILe9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->x0(Le9/c$a;II)V

    return-void
.end method

.method public static synthetic W(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->R1(Le9/c$a;ILe9/c;)V

    return-void
.end method

.method private W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;
    .locals 1

    iget-object v0, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Le9/p1;->d:Le9/p1$a;

    invoke-virtual {v0, p2}, Le9/p1$a;->f(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Le9/p1;->U0(Lcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/k3;->a:Lcom/google/android/exoplayer2/k3;

    invoke-virtual {p0, v0, p1, p2}, Le9/p1;->T0(Lcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    iget-object p2, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k3;->t()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/google/android/exoplayer2/k3;->a:Lcom/google/android/exoplayer2/k3;

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Le9/p1;->T0(Lcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic W1(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->i0(Le9/c$a;I)V

    return-void
.end method

.method public static synthetic X(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->C1(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V

    return-void
.end method

.method private X0()Le9/c$a;
    .locals 1

    iget-object v0, p0, Le9/p1;->d:Le9/p1$a;

    invoke-virtual {v0}, Le9/p1$a;->g()Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v0

    invoke-direct {p0, v0}, Le9/p1;->U0(Lcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic X1(Le9/c$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->p0(Le9/c$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public static synthetic Y(Le9/c$a;IJJLe9/c;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Le9/p1;->m1(Le9/c$a;IJJLe9/c;)V

    return-void
.end method

.method private Y0()Le9/c$a;
    .locals 1

    iget-object v0, p0, Le9/p1;->d:Le9/p1$a;

    invoke-virtual {v0}, Le9/p1$a;->h()Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v0

    invoke-direct {p0, v0}, Le9/p1;->U0(Lcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic Y1(Le9/c$a;Lcom/google/android/exoplayer2/p3;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->V(Le9/c$a;Lcom/google/android/exoplayer2/p3;)V

    return-void
.end method

.method public static synthetic Z(Le9/c$a;Lt9/h;Lt9/i;Ljava/io/IOException;ZLe9/c;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Le9/p1;->D1(Le9/c$a;Lt9/h;Lt9/i;Ljava/io/IOException;ZLe9/c;)V

    return-void
.end method

.method private Z0(Lcom/google/android/exoplayer2/PlaybackException;)Le9/c$a;
    .locals 1

    instance-of v0, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ExoPlaybackException;->mediaPeriodId:Lt9/j;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/o$b;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/o$b;-><init>(Lt9/j;)V

    invoke-direct {p0, v0}, Le9/p1;->U0(Lcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic Z1(Le9/c$a;Lt9/i;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->n0(Le9/c$a;Lt9/i;)V

    return-void
.end method

.method public static synthetic a0(Le9/c$a;Ljava/lang/Exception;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->c1(Le9/c$a;Ljava/lang/Exception;Le9/c;)V

    return-void
.end method

.method private static synthetic a1(Le9/c;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    return-void
.end method

.method private static synthetic a2(Le9/c$a;Ljava/lang/Exception;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->r0(Le9/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b0(Le9/c$a;FLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->i2(Le9/c$a;FLe9/c;)V

    return-void
.end method

.method private static synthetic b1(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-interface {p1, p0}, Le9/c;->L(Le9/c$a;)V

    return-void
.end method

.method private static synthetic b2(Le9/c$a;Ljava/lang/String;JJLe9/c;)V
    .locals 7

    invoke-interface {p6, p0, p1, p2, p3}, Le9/c;->Y(Le9/c$a;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Le9/c;->j0(Le9/c$a;Ljava/lang/String;JJ)V

    const/4 v3, 0x2

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Le9/c;->Z(Le9/c$a;ILjava/lang/String;J)V

    return-void
.end method

.method public static synthetic c0(Le9/c$a;ZLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->T1(Le9/c$a;ZLe9/c;)V

    return-void
.end method

.method private static synthetic c1(Le9/c$a;Ljava/lang/Exception;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->v(Le9/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic c2(Le9/c$a;Ljava/lang/String;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->a(Le9/c$a;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d0(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->E1(Le9/c$a;Lt9/h;Lt9/i;Le9/c;)V

    return-void
.end method

.method private static synthetic d1(Le9/c$a;Ljava/lang/String;JJLe9/c;)V
    .locals 7

    invoke-interface {p6, p0, p1, p2, p3}, Le9/c;->C(Le9/c$a;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Le9/c;->e0(Le9/c$a;Ljava/lang/String;JJ)V

    const/4 v3, 0x1

    move-object v1, p6

    move-object v2, p0

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Le9/c;->Z(Le9/c$a;ILjava/lang/String;J)V

    return-void
.end method

.method private static synthetic d2(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V
    .locals 1

    invoke-interface {p2, p0, p1}, Le9/c;->U(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, p1}, Le9/c;->g0(Le9/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic e0(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->v1(Le9/c$a;ILe9/c;)V

    return-void
.end method

.method private static synthetic e1(Le9/c$a;Ljava/lang/String;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->n(Le9/c$a;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic e2(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V
    .locals 1

    invoke-interface {p2, p0, p1}, Le9/c;->H(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, p1}, Le9/c;->N(Le9/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method public static synthetic f0(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-static {p0, p1}, Le9/p1;->x1(Le9/c$a;Le9/c;)V

    return-void
.end method

.method private static synthetic f1(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V
    .locals 1

    invoke-interface {p2, p0, p1}, Le9/c;->P(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    const/4 v0, 0x1

    invoke-interface {p2, p0, v0, p1}, Le9/c;->g0(Le9/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method private static synthetic f2(Le9/c$a;JILe9/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Le9/c;->G(Le9/c$a;JI)V

    return-void
.end method

.method public static synthetic g0(Le9/c$a;Lcom/google/android/exoplayer2/o2$b;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->l1(Le9/c$a;Lcom/google/android/exoplayer2/o2$b;Le9/c;)V

    return-void
.end method

.method private static synthetic g1(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;Le9/c;)V
    .locals 1

    invoke-interface {p2, p0, p1}, Le9/c;->t(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    const/4 v0, 0x1

    invoke-interface {p2, p0, v0, p1}, Le9/c;->N(Le9/c$a;ILcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method private static synthetic g2(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;Le9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1}, Le9/c;->o0(Le9/c$a;Lcom/google/android/exoplayer2/o1;)V

    invoke-interface {p3, p0, p1, p2}, Le9/c;->e(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    const/4 p2, 0x2

    invoke-interface {p3, p0, p2, p1}, Le9/c;->D(Le9/c$a;ILcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public static synthetic h0(Le9/c$a;Lt9/i;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->Z1(Le9/c$a;Lt9/i;Le9/c;)V

    return-void
.end method

.method private static synthetic h1(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;Le9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1}, Le9/c;->w(Le9/c$a;Lcom/google/android/exoplayer2/o1;)V

    invoke-interface {p3, p0, p1, p2}, Le9/c;->B(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    const/4 p2, 0x1

    invoke-interface {p3, p0, p2, p1}, Le9/c;->D(Le9/c$a;ILcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method private static synthetic h2(Le9/c$a;Lcom/google/android/exoplayer2/video/y;Le9/c;)V
    .locals 6

    invoke-interface {p2, p0, p1}, Le9/c;->v0(Le9/c$a;Lcom/google/android/exoplayer2/video/y;)V

    iget v2, p1, Lcom/google/android/exoplayer2/video/y;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/video/y;->b:I

    iget v4, p1, Lcom/google/android/exoplayer2/video/y;->c:I

    iget v5, p1, Lcom/google/android/exoplayer2/video/y;->d:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Le9/c;->u0(Le9/c$a;IIIF)V

    return-void
.end method

.method public static synthetic i0(Le9/c$a;Lcom/google/android/exoplayer2/r;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->p1(Le9/c$a;Lcom/google/android/exoplayer2/r;Le9/c;)V

    return-void
.end method

.method private static synthetic i1(Le9/c$a;JLe9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->m0(Le9/c$a;J)V

    return-void
.end method

.method private static synthetic i2(Le9/c$a;FLe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->T(Le9/c$a;F)V

    return-void
.end method

.method public static synthetic j0(Le9/c$a;ZLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->A1(Le9/c$a;ZLe9/c;)V

    return-void
.end method

.method private static synthetic j1(Le9/c$a;Ljava/lang/Exception;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->w0(Le9/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic j2(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-interface {p1, p0}, Le9/c;->h0(Le9/c$a;)V

    return-void
.end method

.method public static synthetic k0(Le9/c$a;JLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->i1(Le9/c$a;JLe9/c;)V

    return-void
.end method

.method private static synthetic k1(Le9/c$a;IJJLe9/c;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Le9/c;->F(Le9/c$a;IJJ)V

    return-void
.end method

.method private synthetic k2(Lcom/google/android/exoplayer2/o2;Le9/c;Lcom/google/android/exoplayer2/util/m;)V
    .locals 2

    new-instance v0, Le9/c$b;

    iget-object v1, p0, Le9/p1;->e:Landroid/util/SparseArray;

    invoke-direct {v0, p3, v1}, Le9/c$b;-><init>(Lcom/google/android/exoplayer2/util/m;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Le9/c;->I(Lcom/google/android/exoplayer2/o2;Le9/c$b;)V

    return-void
.end method

.method public static synthetic l0(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-static {p0, p1}, Le9/p1;->S1(Le9/c$a;Le9/c;)V

    return-void
.end method

.method private static synthetic l1(Le9/c$a;Lcom/google/android/exoplayer2/o2$b;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->s(Le9/c$a;Lcom/google/android/exoplayer2/o2$b;)V

    return-void
.end method

.method private l2()V
    .locals 3

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/h1;

    invoke-direct {v1, v0}, Le9/h1;-><init>(Le9/c$a;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    iget-object v0, p0, Le9/p1;->f:Lcom/google/android/exoplayer2/util/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/r;->j()V

    return-void
.end method

.method public static synthetic m0(Le9/c$a;Lcom/google/android/exoplayer2/v1;ILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->F1(Le9/c$a;Lcom/google/android/exoplayer2/v1;ILe9/c;)V

    return-void
.end method

.method private static synthetic m1(Le9/c$a;IJJLe9/c;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Le9/c;->a0(Le9/c$a;IJJ)V

    return-void
.end method

.method public static synthetic n0(Le9/c$a;IILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->V1(Le9/c$a;IILe9/c;)V

    return-void
.end method

.method private static synthetic n1(Le9/c$a;Ljava/util/List;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->k0(Le9/c$a;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic o0(Le9/c$a;ZLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->z1(Le9/c$a;ZLe9/c;)V

    return-void
.end method

.method private static synthetic o1(Le9/c$a;Lba/f;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->r(Le9/c$a;Lba/f;)V

    return-void
.end method

.method public static synthetic p0(Le9/c$a;Lcom/google/android/exoplayer2/video/y;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->h2(Le9/c$a;Lcom/google/android/exoplayer2/video/y;Le9/c;)V

    return-void
.end method

.method private static synthetic p1(Le9/c$a;Lcom/google/android/exoplayer2/r;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->l(Le9/c$a;Lcom/google/android/exoplayer2/r;)V

    return-void
.end method

.method public static synthetic q0(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-static {p0, p1}, Le9/p1;->s1(Le9/c$a;Le9/c;)V

    return-void
.end method

.method private static synthetic q1(Le9/c$a;IZLe9/c;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Le9/c;->d0(Le9/c$a;IZ)V

    return-void
.end method

.method public static synthetic r0(Le9/c$a;Ljava/lang/Object;JLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/p1;->Q1(Le9/c$a;Ljava/lang/Object;JLe9/c;)V

    return-void
.end method

.method private static synthetic r1(Le9/c$a;Lt9/i;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->z(Le9/c$a;Lt9/i;)V

    return-void
.end method

.method public static synthetic s0(Le9/c$a;IJLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Le9/p1;->y1(Le9/c$a;IJLe9/c;)V

    return-void
.end method

.method private static synthetic s1(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-interface {p1, p0}, Le9/c;->f0(Le9/c$a;)V

    return-void
.end method

.method public static synthetic t0(Le9/c$a;ZILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->I1(Le9/c$a;ZILe9/c;)V

    return-void
.end method

.method private static synthetic t1(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-interface {p1, p0}, Le9/c;->J(Le9/c$a;)V

    return-void
.end method

.method public static synthetic u0(Le9/c$a;IZLe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Le9/p1;->q1(Le9/c$a;IZLe9/c;)V

    return-void
.end method

.method private static synthetic u1(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-interface {p1, p0}, Le9/c;->f(Le9/c$a;)V

    return-void
.end method

.method public static synthetic v0(Le9/c$a;Lcom/google/android/exoplayer2/p3;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->Y1(Le9/c$a;Lcom/google/android/exoplayer2/p3;Le9/c;)V

    return-void
.end method

.method private static synthetic v1(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-interface {p2, p0}, Le9/c;->E(Le9/c$a;)V

    invoke-interface {p2, p0, p1}, Le9/c;->m(Le9/c$a;I)V

    return-void
.end method

.method public static synthetic w0(Le9/c$a;ILe9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->L1(Le9/c$a;ILe9/c;)V

    return-void
.end method

.method private static synthetic w1(Le9/c$a;Ljava/lang/Exception;Le9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->j(Le9/c$a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic x0(Le9/p1;Lcom/google/android/exoplayer2/o2;Le9/c;Lcom/google/android/exoplayer2/util/m;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Le9/p1;->k2(Lcom/google/android/exoplayer2/o2;Le9/c;Lcom/google/android/exoplayer2/util/m;)V

    return-void
.end method

.method private static synthetic x1(Le9/c$a;Le9/c;)V
    .locals 0

    invoke-interface {p1, p0}, Le9/c;->t0(Le9/c$a;)V

    return-void
.end method

.method public static synthetic y0(Le9/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->H1(Le9/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;Le9/c;)V

    return-void
.end method

.method private static synthetic y1(Le9/c$a;IJLe9/c;)V
    .locals 0

    invoke-interface {p4, p0, p1, p2, p3}, Le9/c;->W(Le9/c$a;IJ)V

    return-void
.end method

.method public static synthetic z0(Le9/c$a;Ljava/lang/Exception;Le9/c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Le9/p1;->a2(Le9/c$a;Ljava/lang/Exception;Le9/c;)V

    return-void
.end method

.method private static synthetic z1(Le9/c$a;ZLe9/c;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Le9/c;->b(Le9/c$a;Z)V

    invoke-interface {p2, p0, p1}, Le9/c;->c0(Le9/c$a;Z)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/util/List;Lcom/google/android/exoplayer2/source/o$b;)V
    .locals 2

    iget-object v0, p0, Le9/p1;->d:Le9/p1$a;

    iget-object v1, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/o2;

    invoke-virtual {v0, p1, p2, v1}, Le9/p1$a;->k(Ljava/util/List;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/o2;)V

    return-void
.end method

.method public final B(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/i1;

    invoke-direct {p2, p1}, Le9/i1;-><init>(Le9/c$a;)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public C(Le9/c;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Le9/p1;->f:Lcom/google/android/exoplayer2/util/r;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/r;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final D(ILcom/google/android/exoplayer2/source/o$b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/u0;

    invoke-direct {p2, p1, p3}, Le9/u0;-><init>(Le9/c$a;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final E(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/g0;

    invoke-direct {p2, p1}, Le9/g0;-><init>(Le9/c$a;)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final F(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/j1;

    invoke-direct {p2, p1}, Le9/j1;-><init>(Le9/c$a;)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method protected final S0()Le9/c$a;
    .locals 1

    iget-object v0, p0, Le9/p1;->d:Le9/p1$a;

    invoke-virtual {v0}, Le9/p1$a;->d()Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v0

    invoke-direct {p0, v0}, Le9/p1;->U0(Lcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object v0

    return-object v0
.end method

.method protected final T0(Lcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    iget-object v1, v0, Le9/p1;->a:Lcom/google/android/exoplayer2/util/e;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/util/e;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/k3;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v1

    if-ne v5, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lt9/j;->b()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v1, :cond_5

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentAdGroupIndex()I

    move-result v1

    iget v9, v6, Lt9/j;->b:I

    if-ne v1, v9, :cond_5

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentAdIndexInAdGroup()I

    move-result v1

    iget v9, v6, Lt9/j;->c:I

    if-ne v1, v9, :cond_5

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentPosition()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getContentPosition()J

    move-result-wide v7

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v0, Le9/p1;->c:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v4, v5, v1}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k3$d;->e()J

    move-result-wide v7

    :cond_5
    :goto_2
    iget-object v1, v0, Le9/p1;->d:Le9/p1$a;

    invoke-virtual {v1}, Le9/p1$a;->d()Lcom/google/android/exoplayer2/source/o$b;

    move-result-object v11

    new-instance v16, Le9/c$a;

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentTimeline()Lcom/google/android/exoplayer2/k3;

    move-result-object v9

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->t()I

    move-result v10

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->getCurrentPosition()J

    move-result-wide v12

    iget-object v1, v0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/o2;->d()J

    move-result-wide v14

    move-object/from16 v1, v16

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v1 .. v15}, Le9/c$a;-><init>(JLcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;JLcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;JJ)V

    return-object v16
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/n0;

    invoke-direct {v1, v0, p1}, Le9/n0;-><init>(Le9/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/a1;

    invoke-direct {v1, v0, p1}, Le9/a1;-><init>(Le9/c$a;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/d0;

    invoke-direct {v1, v0, p1}, Le9/d0;-><init>(Le9/c$a;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final d(J)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/f0;

    invoke-direct {v1, v0, p1, p2}, Le9/f0;-><init>(Le9/c$a;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/m1;

    invoke-direct {v1, v0, p1}, Le9/m1;-><init>(Le9/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;J)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/e1;

    invoke-direct {v1, v0, p1, p2, p3}, Le9/e1;-><init>(Le9/c$a;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final g(Ljava/lang/Exception;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/n1;

    invoke-direct {v1, v0, p1}, Le9/n1;-><init>(Le9/c$a;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final h(IJJ)V
    .locals 9

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v7

    new-instance v8, Le9/f1;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Le9/f1;-><init>(Le9/c$a;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v7, p1, v8}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final i(JI)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->X0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/o0;

    invoke-direct {v1, v0, p1, p2, p3}, Le9/o0;-><init>(Le9/c$a;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final j(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/s0;

    invoke-direct {v1, v0, p1}, Le9/s0;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final k(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/v;

    invoke-direct {v1, v0, p1, p2}, Le9/v;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final l(ILcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/p0;

    invoke-direct {p2, p1, p3}, Le9/p0;-><init>(Le9/c$a;Lt9/i;)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-boolean v0, p0, Le9/p1;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Le9/p1;->i:Z

    new-instance v1, Le9/k;

    invoke-direct {v1, v0}, Le9/k;-><init>(Le9/c$a;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    :cond_0
    return-void
.end method

.method protected final m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 1

    iget-object v0, p0, Le9/p1;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Le9/p1;->f:Lcom/google/android/exoplayer2/util/r;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/util/r;->l(ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final n(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->X0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/z;

    invoke-direct {v1, v0, p1}, Le9/z;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final o(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->X0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/c0;

    invoke-direct {v1, v0, p1}, Le9/c0;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v7

    new-instance v8, Le9/d;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Le9/d;-><init>(Le9/c$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v7, p1, v8}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/o2$b;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/u;

    invoke-direct {v1, v0, p1}, Le9/u;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/o2$b;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    invoke-direct {p0}, Le9/p1;->V0()Le9/c$a;

    move-result-object v7

    new-instance v8, Le9/b1;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Le9/b1;-><init>(Le9/c$a;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v7, p1, v8}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onCues(Lba/f;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/t;

    invoke-direct {v1, v0, p1}, Le9/t;-><init>(Le9/c$a;Lba/f;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/h0;

    invoke-direct {v1, v0, p1}, Le9/h0;-><init>(Le9/c$a;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/r;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/x0;

    invoke-direct {v1, v0, p1}, Le9/x0;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/r;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/y0;

    invoke-direct {v1, v0, p1, p2}, Le9/y0;-><init>(Le9/c$a;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->X0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/j0;

    invoke-direct {v1, v0, p1, p2, p3}, Le9/j0;-><init>(Le9/c$a;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/o2;Lcom/google/android/exoplayer2/o2$c;)V
    .locals 0

    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/v0;

    invoke-direct {v1, v0, p1}, Le9/v0;-><init>(Le9/c$a;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/l1;

    invoke-direct {v1, v0, p1}, Le9/l1;-><init>(Le9/c$a;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onMediaItemTransition(Lcom/google/android/exoplayer2/v1;I)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/s;

    invoke-direct {v1, v0, p1, p2}, Le9/s;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/v1;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/a2;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/f;

    invoke-direct {v1, v0, p1}, Le9/f;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/a2;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/z0;

    invoke-direct {v1, v0, p1}, Le9/z0;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/o;

    invoke-direct {v1, v0, p1, p2}, Le9/o;-><init>(Le9/c$a;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Lcom/google/android/exoplayer2/n2;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/h;

    invoke-direct {v1, v0, p1}, Le9/h;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/n2;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/x;

    invoke-direct {v1, v0, p1}, Le9/x;-><init>(Le9/c$a;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/m0;

    invoke-direct {v1, v0, p1}, Le9/m0;-><init>(Le9/c$a;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    invoke-direct {p0, p1}, Le9/p1;->Z0(Lcom/google/android/exoplayer2/PlaybackException;)Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/r;

    invoke-direct {v1, v0, p1}, Le9/r;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    invoke-direct {p0, p1}, Le9/p1;->Z0(Lcom/google/android/exoplayer2/PlaybackException;)Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/l0;

    invoke-direct {v1, v0, p1}, Le9/l0;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/j;

    invoke-direct {v1, v0, p1, p2}, Le9/j;-><init>(Le9/c$a;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public final onPositionDiscontinuity(Lcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Le9/p1;->i:Z

    :cond_0
    iget-object v0, p0, Le9/p1;->d:Le9/p1$a;

    iget-object v1, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/o2;

    invoke-virtual {v0, v1}, Le9/p1$a;->j(Lcom/google/android/exoplayer2/o2;)V

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/r0;

    invoke-direct {v1, v0, p3, p1, p2}, Le9/r0;-><init>(Le9/c$a;ILcom/google/android/exoplayer2/o2$e;Lcom/google/android/exoplayer2/o2$e;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/e0;

    invoke-direct {v1, v0, p1}, Le9/e0;-><init>(Le9/c$a;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onSeekProcessed()V
    .locals 3

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/m;

    invoke-direct {v1, v0}, Le9/m;-><init>(Le9/c$a;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/o1;

    invoke-direct {v1, v0, p1}, Le9/o1;-><init>(Le9/c$a;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/k1;

    invoke-direct {v1, v0, p1}, Le9/k1;-><init>(Le9/c$a;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/p;

    invoke-direct {v1, v0, p1, p2}, Le9/p;-><init>(Le9/c$a;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onTimelineChanged(Lcom/google/android/exoplayer2/k3;I)V
    .locals 1

    iget-object p1, p0, Le9/p1;->d:Le9/p1$a;

    iget-object v0, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/o2;

    invoke-virtual {p1, v0}, Le9/p1$a;->l(Lcom/google/android/exoplayer2/o2;)V

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object p1

    new-instance v0, Le9/t0;

    invoke-direct {v0, p1, p2}, Le9/t0;-><init>(Le9/c$a;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/b0;

    invoke-direct {v1, v0, p1}, Le9/b0;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/p3;)V
    .locals 2

    invoke-virtual {p0}, Le9/p1;->S0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/i0;

    invoke-direct {v1, v0, p1}, Le9/i0;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/p3;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v7

    new-instance v8, Le9/y;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Le9/y;-><init>(Le9/c$a;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v7, p1, v8}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onVideoSizeChanged(Lcom/google/android/exoplayer2/video/y;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/d1;

    invoke-direct {v1, v0, p1}, Le9/d1;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/video/y;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/w0;

    invoke-direct {v1, v0, p1}, Le9/w0;-><init>(Le9/c$a;F)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final p(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/k0;

    invoke-direct {p2, p1, p3, p4}, Le9/k0;-><init>(Le9/c$a;Lt9/h;Lt9/i;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public q(Lcom/google/android/exoplayer2/o2;Landroid/os/Looper;)V
    .locals 2

    iget-object v0, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le9/p1;->d:Le9/p1$a;

    invoke-static {v0}, Le9/p1$a;->a(Le9/p1$a;)Lcom/google/common/collect/ImmutableList;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/o2;

    iput-object v0, p0, Le9/p1;->g:Lcom/google/android/exoplayer2/o2;

    iget-object v0, p0, Le9/p1;->a:Lcom/google/android/exoplayer2/util/e;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/exoplayer2/util/e;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;

    move-result-object v0

    iput-object v0, p0, Le9/p1;->h:Lcom/google/android/exoplayer2/util/o;

    iget-object v0, p0, Le9/p1;->f:Lcom/google/android/exoplayer2/util/r;

    new-instance v1, Le9/l;

    invoke-direct {v1, p0, p1}, Le9/l;-><init>(Le9/p1;Lcom/google/android/exoplayer2/o2;)V

    invoke-virtual {v0, p2, v1}, Lcom/google/android/exoplayer2/util/r;->e(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/r$b;)Lcom/google/android/exoplayer2/util/r;

    move-result-object p1

    iput-object p1, p0, Le9/p1;->f:Lcom/google/android/exoplayer2/util/r;

    return-void
.end method

.method public final r(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/c1;

    invoke-direct {p2, p1}, Le9/c1;-><init>(Le9/c$a;)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Le9/p1;->h:Lcom/google/android/exoplayer2/util/o;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/o;

    new-instance v1, Le9/g;

    invoke-direct {v1, p0}, Le9/g;-><init>(Le9/p1;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/o;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic s(ILcom/google/android/exoplayer2/source/o$b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/l;->a(Lcom/google/android/exoplayer2/drm/s;ILcom/google/android/exoplayer2/source/o$b;)V

    return-void
.end method

.method public final t(Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/e;

    invoke-direct {v1, v0, p1, p2}, Le9/e;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final u(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/g1;

    invoke-direct {p2, p1, p3, p4}, Le9/g1;-><init>(Le9/c$a;Lt9/h;Lt9/i;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final v(Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 2

    invoke-direct {p0}, Le9/p1;->Y0()Le9/c$a;

    move-result-object v0

    new-instance v1, Le9/w;

    invoke-direct {v1, v0, p1}, Le9/w;-><init>(Le9/c$a;Lcom/google/android/exoplayer2/decoder/e;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final w(ILcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/n;

    invoke-direct {p2, p1, p3}, Le9/n;-><init>(Le9/c$a;Lt9/i;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final x(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V
    .locals 6

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/q;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Le9/q;-><init>(Le9/c$a;Lt9/h;Lt9/i;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final y(ILcom/google/android/exoplayer2/source/o$b;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/q0;

    invoke-direct {p2, p1, p3}, Le9/q0;-><init>(Le9/c$a;Ljava/lang/Exception;)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method

.method public final z(ILcom/google/android/exoplayer2/source/o$b;Lt9/h;Lt9/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Le9/p1;->W0(ILcom/google/android/exoplayer2/source/o$b;)Le9/c$a;

    move-result-object p1

    new-instance p2, Le9/i;

    invoke-direct {p2, p1, p3, p4}, Le9/i;-><init>(Le9/c$a;Lt9/h;Lt9/i;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Le9/p1;->m2(Le9/c$a;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method
