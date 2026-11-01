.class public final Ls3/k0;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/k0$a;,
        Ls3/k0$b;
    }
.end annotation


# static fields
.field public static final v:Ll2/x;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/util/List;

.field private final e:Landroidx/media3/common/util/j0;

.field private final f:Landroid/util/SparseIntArray;

.field private final g:Ls3/l0$c;

.field private final h:Li3/s$a;

.field private final i:Landroid/util/SparseArray;

.field private final j:Landroid/util/SparseBooleanArray;

.field private final k:Landroid/util/SparseBooleanArray;

.field private final l:Ls3/i0;

.field private m:Ls3/h0;

.field private n:Ll2/t;

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ls3/l0;

.field private t:I

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls3/j0;

    invoke-direct {v0}, Ls3/j0;-><init>()V

    sput-object v0, Ls3/k0;->v:Ll2/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v3, Li3/s$a;->a:Li3/s$a;

    new-instance v4, Landroidx/media3/common/util/p0;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/p0;-><init>(J)V

    new-instance v5, Ls3/j;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ls3/j;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ls3/k0;-><init>(IILi3/s$a;Landroidx/media3/common/util/p0;Ls3/l0$c;I)V

    return-void
.end method

.method public constructor <init>(IILi3/s$a;Landroidx/media3/common/util/p0;Ls3/l0$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ls3/l0$c;

    iput-object p5, p0, Ls3/k0;->g:Ls3/l0$c;

    iput p6, p0, Ls3/k0;->c:I

    iput p1, p0, Ls3/k0;->a:I

    iput p2, p0, Ls3/k0;->b:I

    iput-object p3, p0, Ls3/k0;->h:Li3/s$a;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ls3/k0;->d:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ls3/k0;->d:Ljava/util/List;

    :goto_1
    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/media3/common/util/j0;-><init>([BI)V

    iput-object p1, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Ls3/k0;->j:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Ls3/k0;->k:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ls3/k0;->i:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Ls3/k0;->f:Landroid/util/SparseIntArray;

    new-instance p1, Ls3/i0;

    invoke-direct {p1, p6}, Ls3/i0;-><init>(I)V

    iput-object p1, p0, Ls3/k0;->l:Ls3/i0;

    sget-object p1, Ll2/t;->n1:Ll2/t;

    iput-object p1, p0, Ls3/k0;->n:Ll2/t;

    const/4 p1, -0x1

    iput p1, p0, Ls3/k0;->u:I

    invoke-direct {p0}, Ls3/k0;->z()V

    return-void
.end method

.method public constructor <init>(ILi3/s$a;)V
    .locals 7

    new-instance v4, Landroidx/media3/common/util/p0;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/p0;-><init>(J)V

    new-instance v5, Ls3/j;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ls3/j;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Ls3/k0;-><init>(IILi3/s$a;Landroidx/media3/common/util/p0;Ls3/l0$c;I)V

    return-void
.end method

.method private A(I)Z
    .locals 2

    iget v0, p0, Ls3/k0;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Ls3/k0;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ls3/k0;->k:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic a()[Ll2/r;
    .locals 1

    invoke-static {}, Ls3/k0;->x()[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Ls3/k0;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Ls3/k0;->i:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic h(Ls3/k0;)I
    .locals 0

    iget p0, p0, Ls3/k0;->o:I

    return p0
.end method

.method static synthetic i(Ls3/k0;)Z
    .locals 0

    iget-boolean p0, p0, Ls3/k0;->p:Z

    return p0
.end method

.method static synthetic j(Ls3/k0;Z)Z
    .locals 0

    iput-boolean p1, p0, Ls3/k0;->p:Z

    return p1
.end method

.method static synthetic k(Ls3/k0;I)I
    .locals 0

    iput p1, p0, Ls3/k0;->o:I

    return p1
.end method

.method static synthetic l(Ls3/k0;)I
    .locals 2

    iget v0, p0, Ls3/k0;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls3/k0;->o:I

    return v0
.end method

.method static synthetic m(Ls3/k0;)I
    .locals 0

    iget p0, p0, Ls3/k0;->a:I

    return p0
.end method

.method static synthetic n(Ls3/k0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ls3/k0;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic o(Ls3/k0;I)I
    .locals 0

    iput p1, p0, Ls3/k0;->u:I

    return p1
.end method

.method static synthetic p(Ls3/k0;)Ls3/l0;
    .locals 0

    iget-object p0, p0, Ls3/k0;->s:Ls3/l0;

    return-object p0
.end method

.method static synthetic q(Ls3/k0;Ls3/l0;)Ls3/l0;
    .locals 0

    iput-object p1, p0, Ls3/k0;->s:Ls3/l0;

    return-object p1
.end method

.method static synthetic r(Ls3/k0;)Ls3/l0$c;
    .locals 0

    iget-object p0, p0, Ls3/k0;->g:Ls3/l0$c;

    return-object p0
.end method

.method static synthetic s(Ls3/k0;)Ll2/t;
    .locals 0

    iget-object p0, p0, Ls3/k0;->n:Ll2/t;

    return-object p0
.end method

.method static synthetic t(Ls3/k0;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Ls3/k0;->j:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic u(Ls3/k0;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Ls3/k0;->k:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private v(Ll2/s;)Z
    .locals 6

    iget-object v0, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    iget-object v1, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->f()I

    move-result v1

    rsub-int v1, v1, 0x24b8

    const/4 v2, 0x0

    const/16 v3, 0xbc

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->a()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v4, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->f()I

    move-result v4

    invoke-static {v0, v4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v4, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v4, v0, v1}, Landroidx/media3/common/util/j0;->U([BI)V

    :cond_1
    :goto_0
    iget-object v1, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->a()I

    move-result v1

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->g()I

    move-result v1

    rsub-int v4, v1, 0x24b8

    invoke-interface {p1, v0, v1, v4}, Ll2/s;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return v2

    :cond_2
    iget-object v5, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    add-int/2addr v1, v4

    invoke-virtual {v5, v1}, Landroidx/media3/common/util/j0;->V(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private w()I
    .locals 4

    iget-object v0, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    iget-object v1, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->g()I

    move-result v1

    iget-object v2, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    invoke-static {v2, v0, v1}, Ls3/m0;->a([BII)I

    move-result v2

    iget-object v3, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/j0;->W(I)V

    add-int/lit16 v3, v2, 0xbc

    if-le v3, v1, :cond_1

    iget v1, p0, Ls3/k0;->t:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Ls3/k0;->t:I

    iget v0, p0, Ls3/k0;->a:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/16 v0, 0x178

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Cannot find sync byte. Most likely not a Transport Stream."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Ls3/k0;->t:I

    :cond_2
    :goto_0
    return v3
.end method

.method private static synthetic x()[Ll2/r;
    .locals 3

    new-instance v0, Ls3/k0;

    const/4 v1, 0x1

    sget-object v2, Li3/s$a;->a:Li3/s$a;

    invoke-direct {v0, v1, v2}, Ls3/k0;-><init>(ILi3/s$a;)V

    new-array v1, v1, [Ll2/r;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private y(J)V
    .locals 9

    iget-boolean v0, p0, Ls3/k0;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls3/k0;->q:Z

    iget-object v0, p0, Ls3/k0;->l:Ls3/i0;

    invoke-virtual {v0}, Ls3/i0;->b()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ls3/h0;

    iget-object v1, p0, Ls3/k0;->l:Ls3/i0;

    invoke-virtual {v1}, Ls3/i0;->c()Landroidx/media3/common/util/p0;

    move-result-object v2

    iget-object v1, p0, Ls3/k0;->l:Ls3/i0;

    invoke-virtual {v1}, Ls3/i0;->b()J

    move-result-wide v3

    iget v7, p0, Ls3/k0;->u:I

    iget v8, p0, Ls3/k0;->c:I

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v8}, Ls3/h0;-><init>(Landroidx/media3/common/util/p0;JJII)V

    iput-object v0, p0, Ls3/k0;->m:Ls3/h0;

    iget-object p1, p0, Ls3/k0;->n:Ll2/t;

    invoke-virtual {v0}, Ll2/e;->b()Ll2/m0;

    move-result-object p2

    invoke-interface {p1, p2}, Ll2/t;->f(Ll2/m0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ls3/k0;->n:Ll2/t;

    new-instance p2, Ll2/m0$b;

    iget-object v0, p0, Ls3/k0;->l:Ls3/i0;

    invoke-virtual {v0}, Ls3/i0;->b()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ll2/m0$b;-><init>(J)V

    invoke-interface {p1, p2}, Ll2/t;->f(Ll2/m0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private z()V
    .locals 7

    iget-object v0, p0, Ls3/k0;->j:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Ls3/k0;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Ls3/k0;->g:Ls3/l0$c;

    invoke-interface {v0}, Ls3/l0$c;->createInitialPayloadReaders()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Ls3/k0;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls3/l0;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls3/k0;->i:Landroid/util/SparseArray;

    new-instance v1, Ls3/e0;

    new-instance v3, Ls3/k0$a;

    invoke-direct {v3, p0}, Ls3/k0$a;-><init>(Ls3/k0;)V

    invoke-direct {v1, v3}, Ls3/e0;-><init>(Ls3/d0;)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ls3/k0;->s:Ls3/l0;

    return-void
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 2

    iget v0, p0, Ls3/k0;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Li3/t;

    iget-object v1, p0, Ls3/k0;->h:Li3/s$a;

    invoke-direct {v0, p1, v1}, Li3/t;-><init>(Ll2/t;Li3/s$a;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Ls3/k0;->n:Ll2/t;

    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface/range {p1 .. p1}, Ll2/s;->getLength()J

    move-result-wide v3

    iget v5, v0, Ls3/k0;->a:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget-boolean v9, v0, Ls3/k0;->p:Z

    const-wide/16 v10, -0x1

    if-eqz v9, :cond_3

    cmp-long v9, v3, v10

    if-eqz v9, :cond_1

    if-nez v5, :cond_1

    iget-object v9, v0, Ls3/k0;->l:Ls3/i0;

    invoke-virtual {v9}, Ls3/i0;->d()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v3, v0, Ls3/k0;->l:Ls3/i0;

    iget v4, v0, Ls3/k0;->u:I

    invoke-virtual {v3, v1, v2, v4}, Ls3/i0;->e(Ll2/s;Ll2/l0;I)I

    move-result v1

    return v1

    :cond_1
    invoke-direct {v0, v3, v4}, Ls3/k0;->y(J)V

    iget-boolean v9, v0, Ls3/k0;->r:Z

    if-eqz v9, :cond_2

    iput-boolean v7, v0, Ls3/k0;->r:Z

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v12, v13, v12, v13}, Ls3/k0;->seek(JJ)V

    invoke-interface/range {p1 .. p1}, Ll2/s;->getPosition()J

    move-result-wide v14

    cmp-long v9, v14, v12

    if-eqz v9, :cond_2

    iput-wide v12, v2, Ll2/l0;->a:J

    return v6

    :cond_2
    iget-object v9, v0, Ls3/k0;->m:Ls3/h0;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ll2/e;->d()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v3, v0, Ls3/k0;->m:Ls3/h0;

    invoke-virtual {v3, v1, v2}, Ll2/e;->c(Ll2/s;Ll2/l0;)I

    move-result v1

    return v1

    :cond_3
    invoke-direct/range {p0 .. p1}, Ls3/k0;->v(Ll2/s;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    iget-object v1, v0, Ls3/k0;->i:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v7, v1, :cond_5

    iget-object v1, v0, Ls3/k0;->i:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/l0;

    instance-of v2, v1, Ls3/y;

    if-eqz v2, :cond_4

    check-cast v1, Ls3/y;

    invoke-virtual {v1, v5}, Ls3/y;->c(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroidx/media3/common/util/j0;

    invoke-direct {v2}, Landroidx/media3/common/util/j0;-><init>()V

    invoke-virtual {v1, v2, v6}, Ls3/y;->a(Landroidx/media3/common/util/j0;I)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    return v1

    :cond_6
    invoke-direct/range {p0 .. p0}, Ls3/k0;->w()I

    move-result v1

    iget-object v2, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->g()I

    move-result v2

    if-le v1, v2, :cond_7

    return v7

    :cond_7
    iget-object v5, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->q()I

    move-result v5

    const/high16 v9, 0x800000

    and-int/2addr v9, v5

    if-eqz v9, :cond_8

    iget-object v2, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    return v7

    :cond_8
    const/high16 v9, 0x400000

    and-int/2addr v9, v5

    if-eqz v9, :cond_9

    move v9, v6

    goto :goto_2

    :cond_9
    move v9, v7

    :goto_2
    const v12, 0x1fff00

    and-int/2addr v12, v5

    shr-int/lit8 v12, v12, 0x8

    and-int/lit8 v13, v5, 0x20

    if-eqz v13, :cond_a

    move v13, v6

    goto :goto_3

    :cond_a
    move v13, v7

    :goto_3
    and-int/lit8 v14, v5, 0x10

    if-eqz v14, :cond_b

    iget-object v14, v0, Ls3/k0;->i:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls3/l0;

    goto :goto_4

    :cond_b
    const/4 v14, 0x0

    :goto_4
    if-nez v14, :cond_c

    iget-object v2, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    return v7

    :cond_c
    iget v15, v0, Ls3/k0;->a:I

    if-eq v15, v8, :cond_e

    and-int/lit8 v5, v5, 0xf

    iget-object v15, v0, Ls3/k0;->f:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v15, v12, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    iget-object v11, v0, Ls3/k0;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v12, v5}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v10, v5, :cond_d

    iget-object v2, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    return v7

    :cond_d
    add-int/2addr v10, v6

    and-int/lit8 v10, v10, 0xf

    if-eq v5, v10, :cond_e

    invoke-interface {v14}, Ls3/l0;->seek()V

    :cond_e
    if-eqz v13, :cond_10

    iget-object v5, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->H()I

    move-result v5

    iget-object v10, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v10}, Landroidx/media3/common/util/j0;->H()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_f

    move v10, v8

    goto :goto_5

    :cond_f
    move v10, v7

    :goto_5
    or-int/2addr v9, v10

    iget-object v10, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    sub-int/2addr v5, v6

    invoke-virtual {v10, v5}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_10
    iget-boolean v5, v0, Ls3/k0;->p:Z

    invoke-direct {v0, v12}, Ls3/k0;->A(I)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v10, v1}, Landroidx/media3/common/util/j0;->V(I)V

    iget-object v10, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-interface {v14, v10, v9}, Ls3/l0;->a(Landroidx/media3/common/util/j0;I)V

    iget-object v9, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v9, v2}, Landroidx/media3/common/util/j0;->V(I)V

    :cond_11
    iget v2, v0, Ls3/k0;->a:I

    if-eq v2, v8, :cond_12

    if-nez v5, :cond_12

    iget-boolean v2, v0, Ls3/k0;->p:Z

    if-eqz v2, :cond_12

    const-wide/16 v8, -0x1

    cmp-long v2, v3, v8

    if-eqz v2, :cond_12

    iput-boolean v6, v0, Ls3/k0;->r:Z

    :cond_12
    iget-object v2, v0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    return v7
.end method

.method public d(Ll2/s;)Z
    .locals 6

    iget-object v0, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/16 v1, 0x3ac

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    move v1, v2

    :goto_0
    const/16 v3, 0xbc

    if-ge v1, v3, :cond_2

    move v3, v2

    :goto_1
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v1

    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Ll2/s;->skipFully(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method

.method public synthetic e()Ll2/r;
    .locals 1

    invoke-static {p0}, Ll2/q;->b(Ll2/r;)Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ll2/q;->a(Ll2/r;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 9

    iget p1, p0, Ls3/k0;->a:I

    const/4 p2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object p1, p0, Ls3/k0;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move p2, v1

    :goto_1
    const-wide/16 v2, 0x0

    if-ge p2, p1, :cond_5

    iget-object v4, p0, Ls3/k0;->d:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/p0;

    invoke-virtual {v4}, Landroidx/media3/common/util/p0;->f()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroidx/media3/common/util/p0;->d()J

    move-result-wide v5

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v2, v5, v2

    if-eqz v2, :cond_2

    cmp-long v2, v5, p3

    if-eqz v2, :cond_2

    move v5, v0

    goto :goto_3

    :cond_2
    move v5, v1

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v4, p3, p4}, Landroidx/media3/common/util/p0;->i(J)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    cmp-long p1, p3, v2

    if-eqz p1, :cond_6

    iget-object p1, p0, Ls3/k0;->m:Ls3/h0;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p3, p4}, Ll2/e;->h(J)V

    :cond_6
    iget-object p1, p0, Ls3/k0;->e:Landroidx/media3/common/util/j0;

    invoke-virtual {p1, v1}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object p1, p0, Ls3/k0;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v1

    :goto_4
    iget-object p2, p0, Ls3/k0;->i:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    iget-object p2, p0, Ls3/k0;->i:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls3/l0;

    invoke-interface {p2}, Ls3/l0;->seek()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    iput v1, p0, Ls3/k0;->t:I

    return-void
.end method
