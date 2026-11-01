.class public Lf3/h;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/h$b;,
        Lf3/h$a;
    }
.end annotation


# static fields
.field public static final M:Ll2/x;

.field private static final N:[B

.field private static final O:Landroidx/media3/common/r;


# instance fields
.field private A:J

.field private B:J

.field private C:Lf3/h$b;

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Z

.field private I:Ll2/t;

.field private J:[Ll2/s0;

.field private K:[Ll2/s0;

.field private L:Z

.field private final a:Li3/s$a;

.field private final b:I

.field private final c:Lf3/t;

.field private final d:Ljava/util/List;

.field private final e:Landroid/util/SparseArray;

.field private final f:Landroidx/media3/common/util/j0;

.field private final g:Landroidx/media3/common/util/j0;

.field private final h:Landroidx/media3/common/util/j0;

.field private final i:[B

.field private final j:Landroidx/media3/common/util/j0;

.field private final k:Landroidx/media3/common/util/p0;

.field private final l:Lw2/c;

.field private final m:Landroidx/media3/common/util/j0;

.field private final n:Ljava/util/ArrayDeque;

.field private final o:Ljava/util/ArrayDeque;

.field private final p:Landroidx/media3/container/i;

.field private final q:Ll2/s0;

.field private r:Lcom/google/common/collect/ImmutableList;

.field private s:I

.field private t:I

.field private u:J

.field private v:I

.field private w:Landroidx/media3/common/util/j0;

.field private x:J

.field private y:I

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf3/f;

    invoke-direct {v0}, Lf3/f;-><init>()V

    sput-object v0, Lf3/h;->M:Ll2/x;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lf3/h;->N:[B

    new-instance v0, Landroidx/media3/common/r$b;

    invoke-direct {v0}, Landroidx/media3/common/r$b;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    sput-object v0, Lf3/h;->O:Landroidx/media3/common/r;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Li3/s$a;->a:Li3/s$a;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lf3/h;-><init>(Li3/s$a;ILandroidx/media3/common/util/p0;Lf3/t;Ljava/util/List;Ll2/s0;)V

    return-void
.end method

.method public constructor <init>(Li3/s$a;I)V
    .locals 7

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lf3/h;-><init>(Li3/s$a;ILandroidx/media3/common/util/p0;Lf3/t;Ljava/util/List;Ll2/s0;)V

    return-void
.end method

.method public constructor <init>(Li3/s$a;ILandroidx/media3/common/util/p0;Lf3/t;Ljava/util/List;Ll2/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/h;->a:Li3/s$a;

    iput p2, p0, Lf3/h;->b:I

    iput-object p3, p0, Lf3/h;->k:Landroidx/media3/common/util/p0;

    iput-object p4, p0, Lf3/h;->c:Lf3/t;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf3/h;->d:Ljava/util/List;

    iput-object p6, p0, Lf3/h;->q:Ll2/s0;

    new-instance p1, Lw2/c;

    invoke-direct {p1}, Lw2/c;-><init>()V

    iput-object p1, p0, Lf3/h;->l:Lw2/c;

    new-instance p1, Landroidx/media3/common/util/j0;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Lf3/h;->m:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    sget-object p3, Landroidx/media3/container/g;->a:[B

    invoke-direct {p1, p3}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object p1, p0, Lf3/h;->f:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Landroidx/media3/common/util/j0;-><init>(I)V

    iput-object p1, p0, Lf3/h;->g:Landroidx/media3/common/util/j0;

    new-instance p1, Landroidx/media3/common/util/j0;

    invoke-direct {p1}, Landroidx/media3/common/util/j0;-><init>()V

    iput-object p1, p0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    new-array p1, p2, [B

    iput-object p1, p0, Lf3/h;->i:[B

    new-instance p2, Landroidx/media3/common/util/j0;

    invoke-direct {p2, p1}, Landroidx/media3/common/util/j0;-><init>([B)V

    iput-object p2, p0, Lf3/h;->j:Landroidx/media3/common/util/j0;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lf3/h;->o:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lf3/h;->r:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lf3/h;->A:J

    iput-wide p1, p0, Lf3/h;->z:J

    iput-wide p1, p0, Lf3/h;->B:J

    sget-object p1, Ll2/t;->n1:Ll2/t;

    iput-object p1, p0, Lf3/h;->I:Ll2/t;

    const/4 p1, 0x0

    new-array p2, p1, [Ll2/s0;

    iput-object p2, p0, Lf3/h;->J:[Ll2/s0;

    new-array p1, p1, [Ll2/s0;

    iput-object p1, p0, Lf3/h;->K:[Ll2/s0;

    new-instance p1, Landroidx/media3/container/i;

    new-instance p2, Lf3/g;

    invoke-direct {p2, p0}, Lf3/g;-><init>(Lf3/h;)V

    invoke-direct {p1, p2}, Landroidx/media3/container/i;-><init>(Landroidx/media3/container/i$b;)V

    iput-object p1, p0, Lf3/h;->p:Landroidx/media3/container/i;

    return-void
.end method

.method private static A(Landroidx/media3/common/util/j0;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-static {v0}, Lf3/b;->p(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static B(Landroidx/media3/container/d$b;Landroid/util/SparseArray;ZI[B)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/container/d$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/media3/container/d$b;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/d$b;

    iget v3, v2, Landroidx/media3/container/d;->a:I

    const v4, 0x74726166

    if-ne v3, v4, :cond_0

    invoke-static {v2, p1, p2, p3, p4}, Lf3/h;->K(Landroidx/media3/container/d$b;Landroid/util/SparseArray;ZI[B)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static C(Landroidx/media3/common/util/j0;Lf3/v;)V
    .locals 5

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-static {v1}, Lf3/b;->o(I)I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-static {v1}, Lf3/b;->p(I)I

    move-result v0

    iget-wide v1, p1, Lf3/v;->d:J

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lf3/v;->d:J

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected saio entry count: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static D(Lf3/u;Landroidx/media3/common/util/j0;Lf3/v;)V
    .locals 7

    iget p0, p0, Lf3/u;->d:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-static {v1}, Lf3/b;->o(I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->L()I

    move-result v1

    iget v3, p2, Lf3/v;->f:I

    if-gt v1, v3, :cond_6

    const/4 v3, 0x0

    if-nez v0, :cond_2

    iget-object v0, p2, Lf3/v;->m:[Z

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->H()I

    move-result v6

    add-int/2addr v5, v6

    if-le v6, p0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    aput-boolean v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v0, p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    mul-int v5, v0, v1

    iget-object p0, p2, Lf3/v;->m:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_4
    iget-object p0, p2, Lf3/v;->m:[Z

    iget p1, p2, Lf3/v;->f:I

    invoke-static {p0, v1, p1, v3}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v5, :cond_5

    invoke-virtual {p2, v5}, Lf3/v;->d(I)V

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Saiz sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is greater than fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lf3/v;->f:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static E(Landroidx/media3/container/d$b;Ljava/lang/String;Lf3/v;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v5

    move v4, v3

    :goto_0
    iget-object v7, v0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    iget-object v7, v0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/container/d$c;

    iget-object v8, v7, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    iget v7, v7, Landroidx/media3/container/d;->a:I

    const v9, 0x73626770

    const v10, 0x73656967

    const/16 v11, 0xc

    if-ne v7, v9, :cond_0

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->q()I

    move-result v7

    if-ne v7, v10, :cond_1

    move-object v5, v8

    goto :goto_1

    :cond_0
    const v9, 0x73677064

    if-ne v7, v9, :cond_1

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/j0;->q()I

    move-result v7

    if-ne v7, v10, :cond_1

    move-object v6, v8

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_d

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    invoke-static {v4}, Lf3/b;->p(I)I

    move-result v4

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/j0;->X(I)V

    const/4 v8, 0x1

    if-ne v4, v8, :cond_4

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_4
    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->q()I

    move-result v4

    if-ne v4, v8, :cond_c

    invoke-virtual {v6, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-static {v0}, Lf3/b;->p(I)I

    move-result v0

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/j0;->X(I)V

    if-ne v0, v8, :cond_6

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    const/4 v4, 0x2

    if-lt v0, v4, :cond_7

    invoke-virtual {v6, v7}, Landroidx/media3/common/util/j0;->X(I)V

    :cond_7
    :goto_2
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v4

    const-wide/16 v9, 0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_b

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v14, v4, 0x4

    and-int/lit8 v15, v0, 0xf

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    if-ne v0, v8, :cond_8

    move v10, v8

    goto :goto_3

    :cond_8
    move v10, v3

    :goto_3
    if-nez v10, :cond_9

    return-void

    :cond_9
    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    move-result v12

    const/16 v0, 0x10

    new-array v13, v0, [B

    invoke-virtual {v6, v13, v3, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    if-nez v12, :cond_a

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    new-array v2, v0, [B

    invoke-virtual {v6, v2, v3, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    :cond_a
    move-object/from16 v16, v2

    iput-boolean v8, v1, Lf3/v;->l:Z

    new-instance v0, Lf3/u;

    move-object v9, v0

    move-object/from16 v11, p1

    invoke-direct/range {v9 .. v16}, Lf3/u;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lf3/v;->n:Lf3/u;

    return-void

    :cond_b
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_c
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_d
    :goto_4
    return-void
.end method

.method private static F(Landroidx/media3/common/util/j0;ILf3/v;)V
    .locals 3

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p1

    invoke-static {p1}, Lf3/b;->o(I)I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p2, Lf3/v;->m:[Z

    iget p1, p2, Lf3/v;->f:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v2, p2, Lf3/v;->f:I

    if-ne v1, v2, :cond_2

    iget-object v2, p2, Lf3/v;->m:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lf3/v;->d(I)V

    invoke-virtual {p2, p0}, Lf3/v;->a(Landroidx/media3/common/util/j0;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Senc sample count "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lf3/v;->f:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static G(Landroidx/media3/common/util/j0;Lf3/v;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lf3/h;->F(Landroidx/media3/common/util/j0;ILf3/v;)V

    return-void
.end method

.method private static H(Landroidx/media3/common/util/j0;J)Landroid/util/Pair;
    .locals 25

    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-static {v1}, Lf3/b;->p(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v9

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v5

    :goto_0
    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v3

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v5

    goto :goto_0

    :goto_1
    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v15

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->P()I

    move-result v1

    new-array v7, v1, [I

    new-array v8, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v3, 0x0

    move-wide/from16 v17, v15

    move-wide/from16 v23, v11

    move v11, v3

    move-wide/from16 v3, v23

    :goto_2
    if-ge v11, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v12

    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    if-nez v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v12, v12, v21

    aput v12, v7, v11

    aput-wide v13, v8, v11

    aput-wide v17, v6, v11

    add-long v17, v3, v19

    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v3

    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/j0;->X(I)V

    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move v2, v5

    move-object v5, v12

    move-object/from16 v8, v22

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_2

    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Ll2/h;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Ll2/h;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static I(Landroidx/media3/common/util/j0;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-static {v0}, Lf3/b;->p(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static J(Landroidx/media3/common/util/j0;Landroid/util/SparseArray;Z)Lf3/h$b;
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-static {v0}, Lf3/b;->o(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lf3/h$b;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v1

    iget-object p2, p1, Lf3/h$b;->b:Lf3/v;

    iput-wide v1, p2, Lf3/v;->c:J

    iput-wide v1, p2, Lf3/v;->d:J

    :cond_2
    iget-object p2, p1, Lf3/h$b;->e:Lf3/c;

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    iget v1, p2, Lf3/c;->a:I

    :goto_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    goto :goto_3

    :cond_4
    iget v2, p2, Lf3/c;->b:I

    :goto_3
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    goto :goto_4

    :cond_5
    iget v3, p2, Lf3/c;->c:I

    :goto_4
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p0

    goto :goto_5

    :cond_6
    iget p0, p2, Lf3/c;->d:I

    :goto_5
    iget-object p2, p1, Lf3/h$b;->b:Lf3/v;

    new-instance v0, Lf3/c;

    invoke-direct {v0, v1, v2, v3, p0}, Lf3/c;-><init>(IIII)V

    iput-object v0, p2, Lf3/v;->a:Lf3/c;

    return-object p1
.end method

.method private static K(Landroidx/media3/container/d$b;Landroid/util/SparseArray;ZI[B)V
    .locals 6

    const v0, 0x74666864

    invoke-virtual {p0, v0}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/d$c;

    iget-object v0, v0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v0, p1, p2}, Lf3/h;->J(Landroidx/media3/common/util/j0;Landroid/util/SparseArray;Z)Lf3/h$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p1, Lf3/h$b;->b:Lf3/v;

    iget-wide v0, p2, Lf3/v;->q:J

    iget-boolean v2, p2, Lf3/v;->r:Z

    invoke-virtual {p1}, Lf3/h$b;->k()V

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lf3/h$b;->b(Lf3/h$b;Z)Z

    const v4, 0x74666474

    invoke-virtual {p0, v4}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_1

    iget-object v0, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v0}, Lf3/h;->I(Landroidx/media3/common/util/j0;)J

    move-result-wide v0

    iput-wide v0, p2, Lf3/v;->q:J

    iput-boolean v3, p2, Lf3/v;->r:Z

    goto :goto_0

    :cond_1
    iput-wide v0, p2, Lf3/v;->q:J

    iput-boolean v2, p2, Lf3/v;->r:Z

    :goto_0
    invoke-static {p0, p1, p3}, Lf3/h;->N(Landroidx/media3/container/d$b;Lf3/h$b;I)V

    iget-object p1, p1, Lf3/h$b;->d:Lf3/w;

    iget-object p1, p1, Lf3/w;->a:Lf3/t;

    iget-object p3, p2, Lf3/v;->a:Lf3/c;

    invoke-static {p3}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lf3/c;

    iget p3, p3, Lf3/c;->a:I

    invoke-virtual {p1, p3}, Lf3/t;->b(I)Lf3/u;

    move-result-object p1

    const p3, 0x7361697a

    invoke-virtual {p0, p3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf3/u;

    iget-object p3, p3, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v0, p3, p2}, Lf3/h;->D(Lf3/u;Landroidx/media3/common/util/j0;Lf3/v;)V

    :cond_2
    const p3, 0x7361696f

    invoke-virtual {p0, p3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p3, p3, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {p3, p2}, Lf3/h;->C(Landroidx/media3/common/util/j0;Lf3/v;)V

    :cond_3
    const p3, 0x73656e63

    invoke-virtual {p0, p3}, Landroidx/media3/container/d$b;->e(I)Landroidx/media3/container/d$c;

    move-result-object p3

    if-eqz p3, :cond_4

    iget-object p3, p3, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {p3, p2}, Lf3/h;->G(Landroidx/media3/common/util/j0;Lf3/v;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p1, Lf3/u;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p0, p1, p2}, Lf3/h;->E(Landroidx/media3/container/d$b;Ljava/lang/String;Lf3/v;)V

    iget-object p1, p0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_7

    iget-object v0, p0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/d$c;

    iget v1, v0, Landroidx/media3/container/d;->a:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_6

    iget-object v0, v0, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v0, p2, p4}, Lf3/h;->O(Landroidx/media3/common/util/j0;Lf3/v;[B)V

    :cond_6
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static L(Landroidx/media3/common/util/j0;)Landroid/util/Pair;
    .locals 5

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lf3/c;

    invoke-direct {v4, v1, v2, v3, p0}, Lf3/c;-><init>(IIII)V

    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static M(Lf3/h$b;IILandroidx/media3/common/util/j0;I)I
    .locals 32

    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-static {v1}, Lf3/b;->o(I)I

    move-result v1

    iget-object v3, v0, Lf3/h$b;->d:Lf3/w;

    iget-object v3, v3, Lf3/w;->a:Lf3/t;

    iget-object v4, v0, Lf3/h$b;->b:Lf3/v;

    iget-object v5, v4, Lf3/v;->a:Lf3/c;

    invoke-static {v5}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf3/c;

    iget-object v6, v4, Lf3/v;->h:[I

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->L()I

    move-result v7

    aput v7, v6, p1

    iget-object v6, v4, Lf3/v;->g:[J

    iget-wide v7, v4, Lf3/v;->c:J

    aput-wide v7, v6, p1

    and-int/lit8 v9, v1, 0x1

    if-eqz v9, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    aput-wide v7, v6, p1

    :cond_0
    and-int/lit8 v6, v1, 0x4

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    iget v9, v5, Lf3/c;->d:I

    if-eqz v6, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    move-result v9

    :cond_2
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v7

    :goto_1
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move v11, v7

    :goto_2
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_3

    :cond_5
    move v12, v7

    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    move v1, v7

    :goto_4
    invoke-static {v3}, Lf3/h;->q(Lf3/t;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v3, Lf3/t;->j:[J

    invoke-static {v13}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    aget-wide v14, v13, v7

    goto :goto_5

    :cond_7
    const-wide/16 v14, 0x0

    :goto_5
    iget-object v13, v4, Lf3/v;->i:[I

    iget-object v7, v4, Lf3/v;->j:[J

    iget-object v8, v4, Lf3/v;->k:[Z

    iget v2, v3, Lf3/t;->b:I

    move/from16 v16, v9

    const/4 v9, 0x2

    if-ne v2, v9, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    iget-object v9, v4, Lf3/v;->h:[I

    aget v9, v9, p1

    add-int v9, p4, v9

    move/from16 p2, v2

    iget-wide v2, v3, Lf3/t;->c:J

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    iget-wide v7, v4, Lf3/v;->q:J

    move-wide/from16 v25, v2

    move-wide v2, v7

    move/from16 v7, p4

    :goto_7
    if-ge v7, v9, :cond_11

    if-eqz v10, :cond_9

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    move-result v8

    goto :goto_8

    :cond_9
    iget v8, v5, Lf3/c;->b:I

    :goto_8
    invoke-static {v8}, Lf3/h;->i(I)I

    move-result v8

    if-eqz v11, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    move-result v17

    move/from16 v27, v10

    goto :goto_9

    :cond_a
    move/from16 v27, v10

    iget v10, v5, Lf3/c;->c:I

    move/from16 v17, v10

    :goto_9
    invoke-static/range {v17 .. v17}, Lf3/h;->i(I)I

    move-result v10

    if-eqz v12, :cond_b

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    move-result v17

    move/from16 v28, v6

    move/from16 v6, v17

    goto :goto_a

    :cond_b
    if-nez v7, :cond_c

    if-eqz v6, :cond_c

    move/from16 v28, v6

    move/from16 v6, v16

    goto :goto_a

    :cond_c
    move/from16 v28, v6

    iget v6, v5, Lf3/c;->d:I

    :goto_a
    if-eqz v1, :cond_d

    invoke-virtual/range {p3 .. p3}, Landroidx/media3/common/util/j0;->q()I

    move-result v17

    move/from16 v29, v1

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v1, v17

    goto :goto_b

    :cond_d
    move/from16 v29, v1

    move/from16 v30, v11

    move/from16 v31, v12

    const/4 v1, 0x0

    :goto_b
    int-to-long v11, v1

    add-long/2addr v11, v2

    sub-long v17, v11, v14

    const-wide/32 v19, 0xf4240

    move-wide/from16 v21, v25

    invoke-static/range {v17 .. v22}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v11

    aput-wide v11, v23, v7

    iget-boolean v1, v4, Lf3/v;->r:Z

    if-nez v1, :cond_e

    iget-object v1, v0, Lf3/h$b;->d:Lf3/w;

    iget-wide v0, v1, Lf3/w;->h:J

    add-long/2addr v11, v0

    aput-wide v11, v23, v7

    :cond_e
    aput v10, v13, v7

    shr-int/lit8 v0, v6, 0x10

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    if-eqz p2, :cond_f

    if-nez v7, :cond_10

    :cond_f
    move v0, v1

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    :goto_c
    aput-boolean v0, v24, v7

    int-to-long v10, v8

    add-long/2addr v2, v10

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v10, v27

    move/from16 v6, v28

    move/from16 v1, v29

    move/from16 v11, v30

    move/from16 v12, v31

    goto/16 :goto_7

    :cond_11
    iput-wide v2, v4, Lf3/v;->q:J

    return v9
.end method

.method private static N(Landroidx/media3/container/d$b;Lf3/h$b;I)V
    .locals 8

    iget-object p0, p0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const v5, 0x7472756e

    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/container/d$c;

    iget v7, v6, Landroidx/media3/container/d;->a:I

    if-ne v7, v5, :cond_0

    iget-object v5, v6, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/j0;->L()I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p1, Lf3/h$b;->h:I

    iput v1, p1, Lf3/h$b;->g:I

    iput v1, p1, Lf3/h$b;->f:I

    iget-object v2, p1, Lf3/h$b;->b:Lf3/v;

    invoke-virtual {v2, v3, v4}, Lf3/v;->e(II)V

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/d$c;

    iget v6, v4, Landroidx/media3/container/d;->a:I

    if-ne v6, v5, :cond_2

    add-int/lit8 v6, v2, 0x1

    iget-object v4, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {p1, v2, p2, v4, v3}, Lf3/h;->M(Lf3/h$b;IILandroidx/media3/common/util/j0;I)I

    move-result v2

    move v3, v2

    move v2, v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static O(Landroidx/media3/common/util/j0;Lf3/v;[B)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    sget-object v0, Lf3/h;->N:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v1, p1}, Lf3/h;->F(Landroidx/media3/common/util/j0;ILf3/v;)V

    return-void
.end method

.method private P(J)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/d$b;

    iget-wide v0, v0, Landroidx/media3/container/d$b;->b:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/d$b;

    invoke-direct {p0, v0}, Lf3/h;->u(Landroidx/media3/container/d$b;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lf3/h;->k()V

    return-void
.end method

.method private Q(Ll2/s;)Z
    .locals 11

    iget v0, p0, Lf3/h;->v:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lf3/h;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1, v3}, Ll2/s;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iput v1, p0, Lf3/h;->v:I

    iget-object v0, p0, Lf3/h;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v0, p0, Lf3/h;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v4

    iput-wide v4, p0, Lf3/h;->u:J

    iget-object v0, p0, Lf3/h;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    iput v0, p0, Lf3/h;->t:I

    :cond_1
    iget-wide v4, p0, Lf3/h;->u:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lf3/h;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v1}, Ll2/s;->readFully([BII)V

    iget v0, p0, Lf3/h;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lf3/h;->v:I

    iget-object v0, p0, Lf3/h;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v4

    iput-wide v4, p0, Lf3/h;->u:J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/d$b;

    iget-wide v4, v0, Landroidx/media3/container/d$b;->b:J

    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lf3/h;->v:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lf3/h;->u:J

    :cond_4
    :goto_0
    iget-wide v4, p0, Lf3/h;->u:J

    iget v0, p0, Lf3/h;->v:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lf3/h;->v:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iget v0, p0, Lf3/h;->t:I

    const v6, 0x6d646174

    const v7, 0x6d6f6f66

    if-eq v0, v7, :cond_5

    if-ne v0, v6, :cond_6

    :cond_5
    iget-boolean v0, p0, Lf3/h;->L:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lf3/h;->I:Ll2/t;

    new-instance v8, Ll2/m0$b;

    iget-wide v9, p0, Lf3/h;->A:J

    invoke-direct {v8, v9, v10, v4, v5}, Ll2/m0$b;-><init>(JJ)V

    invoke-interface {v0, v8}, Ll2/t;->f(Ll2/m0;)V

    iput-boolean v3, p0, Lf3/h;->L:Z

    :cond_6
    iget v0, p0, Lf3/h;->t:I

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_7

    iget-object v8, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf3/h$b;

    iget-object v8, v8, Lf3/h$b;->b:Lf3/v;

    iput-wide v4, v8, Lf3/v;->b:J

    iput-wide v4, v8, Lf3/v;->d:J

    iput-wide v4, v8, Lf3/v;->c:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Lf3/h;->t:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_8

    iput-object v7, p0, Lf3/h;->C:Lf3/h$b;

    iget-wide v0, p0, Lf3/h;->u:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lf3/h;->x:J

    const/4 p1, 0x2

    iput p1, p0, Lf3/h;->s:I

    return v3

    :cond_8
    invoke-static {v0}, Lf3/h;->U(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lf3/h;->u:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    iget-object p1, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    new-instance v2, Landroidx/media3/container/d$b;

    iget v4, p0, Lf3/h;->t:I

    invoke-direct {v2, v4, v0, v1}, Landroidx/media3/container/d$b;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v4, p0, Lf3/h;->u:J

    iget p1, p0, Lf3/h;->v:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_9

    invoke-direct {p0, v0, v1}, Lf3/h;->P(J)V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lf3/h;->k()V

    goto :goto_2

    :cond_a
    iget p1, p0, Lf3/h;->t:I

    invoke-static {p1}, Lf3/h;->V(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_d

    iget p1, p0, Lf3/h;->v:I

    if-ne p1, v1, :cond_c

    iget-wide v6, p0, Lf3/h;->u:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_b

    new-instance p1, Landroidx/media3/common/util/j0;

    iget-wide v4, p0, Lf3/h;->u:J

    long-to-int v0, v4

    invoke-direct {p1, v0}, Landroidx/media3/common/util/j0;-><init>(I)V

    iget-object v0, p0, Lf3/h;->m:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v4

    invoke-static {v0, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lf3/h;->w:Landroidx/media3/common/util/j0;

    iput v3, p0, Lf3/h;->s:I

    goto :goto_2

    :cond_b
    const-string p1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_c
    const-string p1, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_d
    iget-wide v0, p0, Lf3/h;->u:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_e

    iput-object v7, p0, Lf3/h;->w:Landroidx/media3/common/util/j0;

    iput v3, p0, Lf3/h;->s:I

    :goto_2
    return v3

    :cond_e
    const-string p1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_f
    const-string p1, "Atom size less than header length (unsupported)."

    invoke-static {p1}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private R(Ll2/s;)V
    .locals 4

    iget-wide v0, p0, Lf3/h;->u:J

    iget v2, p0, Lf3/h;->v:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lf3/h;->w:Landroidx/media3/common/util/j0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {p1, v2, v3, v0}, Ll2/s;->readFully([BII)V

    new-instance v0, Landroidx/media3/container/d$c;

    iget v2, p0, Lf3/h;->t:I

    invoke-direct {v0, v2, v1}, Landroidx/media3/container/d$c;-><init>(ILandroidx/media3/common/util/j0;)V

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lf3/h;->w(Landroidx/media3/container/d$c;J)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ll2/s;->skipFully(I)V

    :goto_0
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lf3/h;->P(J)V

    return-void
.end method

.method private S(Ll2/s;)V
    .locals 9

    iget-object v0, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-object v5, v1

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v6, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf3/h$b;

    iget-object v6, v6, Lf3/h$b;->b:Lf3/v;

    iget-boolean v7, v6, Lf3/v;->p:Z

    if-eqz v7, :cond_0

    iget-wide v6, v6, Lf3/v;->d:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    iget-object v2, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lf3/h$b;

    move-wide v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lf3/h;->s:I

    return-void

    :cond_2
    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v0, v2

    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Ll2/s;->skipFully(I)V

    iget-object v0, v5, Lf3/h$b;->b:Lf3/v;

    invoke-virtual {v0, p1}, Lf3/v;->b(Ll2/s;)V

    return-void

    :cond_3
    const-string p1, "Offset to encryption data was negative."

    invoke-static {p1, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
.end method

.method private T(Ll2/s;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lf3/h;->C:Lf3/h$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget-object v2, v0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-static {v2}, Lf3/h;->n(Landroid/util/SparseArray;)Lf3/h$b;

    move-result-object v2

    if-nez v2, :cond_1

    iget-wide v5, v0, Lf3/h;->x:J

    invoke-interface/range {p1 .. p1}, Ll2/s;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v2, v5

    if-ltz v2, :cond_0

    invoke-interface {v1, v2}, Ll2/s;->skipFully(I)V

    invoke-direct/range {p0 .. p0}, Lf3/h;->k()V

    return v4

    :cond_0
    const-string v1, "Offset to end of mdat was negative."

    invoke-static {v1, v3}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_1
    invoke-virtual {v2}, Lf3/h$b;->d()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Ll2/s;->getPosition()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v5, v5

    if-gez v5, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Ignoring negative offset to sample data."

    invoke-static {v5, v6}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    :cond_2
    invoke-interface {v1, v5}, Ll2/s;->skipFully(I)V

    iput-object v2, v0, Lf3/h;->C:Lf3/h$b;

    :cond_3
    iget v5, v0, Lf3/h;->s:I

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    invoke-virtual {v2}, Lf3/h$b;->f()I

    move-result v5

    iput v5, v0, Lf3/h;->D:I

    iget-object v5, v2, Lf3/h$b;->d:Lf3/w;

    iget-object v5, v5, Lf3/w;->a:Lf3/t;

    iget-object v5, v5, Lf3/t;->g:Landroidx/media3/common/r;

    invoke-direct {v0, v5}, Lf3/h;->h(Landroidx/media3/common/r;)Z

    move-result v5

    xor-int/2addr v5, v8

    iput-boolean v5, v0, Lf3/h;->G:Z

    iget v5, v2, Lf3/h$b;->f:I

    iget v9, v2, Lf3/h$b;->i:I

    if-ge v5, v9, :cond_5

    iget v4, v0, Lf3/h;->D:I

    invoke-interface {v1, v4}, Ll2/s;->skipFully(I)V

    invoke-virtual {v2}, Lf3/h$b;->m()V

    invoke-virtual {v2}, Lf3/h$b;->h()Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v3, v0, Lf3/h;->C:Lf3/h$b;

    :cond_4
    iput v6, v0, Lf3/h;->s:I

    return v8

    :cond_5
    iget-object v5, v2, Lf3/h$b;->d:Lf3/w;

    iget-object v5, v5, Lf3/w;->a:Lf3/t;

    iget v5, v5, Lf3/t;->h:I

    if-ne v5, v8, :cond_6

    iget v5, v0, Lf3/h;->D:I

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    iput v5, v0, Lf3/h;->D:I

    invoke-interface {v1, v9}, Ll2/s;->skipFully(I)V

    :cond_6
    iget-object v5, v2, Lf3/h$b;->d:Lf3/w;

    iget-object v5, v5, Lf3/w;->a:Lf3/t;

    iget-object v5, v5, Lf3/t;->g:Landroidx/media3/common/r;

    iget-object v5, v5, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v0, Lf3/h;->D:I

    const/4 v9, 0x7

    invoke-virtual {v2, v5, v9}, Lf3/h$b;->i(II)I

    move-result v5

    iput v5, v0, Lf3/h;->E:I

    iget v5, v0, Lf3/h;->D:I

    iget-object v10, v0, Lf3/h;->j:Landroidx/media3/common/util/j0;

    invoke-static {v5, v10}, Ll2/c;->a(ILandroidx/media3/common/util/j0;)V

    iget-object v5, v2, Lf3/h$b;->a:Ll2/s0;

    iget-object v10, v0, Lf3/h;->j:Landroidx/media3/common/util/j0;

    invoke-interface {v5, v10, v9}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget v5, v0, Lf3/h;->E:I

    add-int/2addr v5, v9

    iput v5, v0, Lf3/h;->E:I

    goto :goto_0

    :cond_7
    iget v5, v0, Lf3/h;->D:I

    invoke-virtual {v2, v5, v4}, Lf3/h$b;->i(II)I

    move-result v5

    iput v5, v0, Lf3/h;->E:I

    :goto_0
    iget v5, v0, Lf3/h;->D:I

    iget v9, v0, Lf3/h;->E:I

    add-int/2addr v5, v9

    iput v5, v0, Lf3/h;->D:I

    iput v7, v0, Lf3/h;->s:I

    iput v4, v0, Lf3/h;->F:I

    :cond_8
    iget-object v5, v2, Lf3/h$b;->d:Lf3/w;

    iget-object v5, v5, Lf3/w;->a:Lf3/t;

    iget-object v9, v2, Lf3/h$b;->a:Ll2/s0;

    invoke-virtual {v2}, Lf3/h$b;->e()J

    move-result-wide v10

    iget-object v12, v0, Lf3/h;->k:Landroidx/media3/common/util/p0;

    if-eqz v12, :cond_9

    invoke-virtual {v12, v10, v11}, Landroidx/media3/common/util/p0;->a(J)J

    move-result-wide v10

    :cond_9
    move-wide v14, v10

    iget v10, v5, Lf3/t;->k:I

    if-eqz v10, :cond_14

    iget-object v10, v0, Lf3/h;->g:Landroidx/media3/common/util/j0;

    invoke-virtual {v10}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v10

    aput-byte v4, v10, v4

    aput-byte v4, v10, v8

    const/4 v11, 0x2

    aput-byte v4, v10, v11

    iget v11, v5, Lf3/t;->k:I

    rsub-int/lit8 v11, v11, 0x4

    :goto_1
    iget v12, v0, Lf3/h;->E:I

    iget v13, v0, Lf3/h;->D:I

    if-ge v12, v13, :cond_15

    iget v12, v0, Lf3/h;->F:I

    if-nez v12, :cond_f

    iget-object v12, v0, Lf3/h;->K:[Ll2/s0;

    array-length v12, v12

    if-gtz v12, :cond_a

    iget-boolean v12, v0, Lf3/h;->G:Z

    if-nez v12, :cond_b

    :cond_a
    iget-object v12, v5, Lf3/t;->g:Landroidx/media3/common/r;

    invoke-static {v12}, Landroidx/media3/container/g;->o(Landroidx/media3/common/r;)I

    move-result v12

    iget v13, v5, Lf3/t;->k:I

    add-int/2addr v13, v12

    iget v6, v0, Lf3/h;->D:I

    iget v3, v0, Lf3/h;->E:I

    sub-int/2addr v6, v3

    if-gt v13, v6, :cond_b

    goto :goto_2

    :cond_b
    move v12, v4

    :goto_2
    iget v3, v5, Lf3/t;->k:I

    add-int/2addr v3, v12

    invoke-interface {v1, v10, v11, v3}, Ll2/s;->readFully([BII)V

    iget-object v3, v0, Lf3/h;->g:Landroidx/media3/common/util/j0;

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v3, v0, Lf3/h;->g:Landroidx/media3/common/util/j0;

    invoke-virtual {v3}, Landroidx/media3/common/util/j0;->q()I

    move-result v3

    if-ltz v3, :cond_e

    sub-int/2addr v3, v12

    iput v3, v0, Lf3/h;->F:I

    iget-object v3, v0, Lf3/h;->f:Landroidx/media3/common/util/j0;

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v3, v0, Lf3/h;->f:Landroidx/media3/common/util/j0;

    invoke-interface {v9, v3, v7}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget v3, v0, Lf3/h;->E:I

    add-int/2addr v3, v7

    iput v3, v0, Lf3/h;->E:I

    iget v3, v0, Lf3/h;->D:I

    add-int/2addr v3, v11

    iput v3, v0, Lf3/h;->D:I

    iget-object v3, v0, Lf3/h;->K:[Ll2/s0;

    array-length v3, v3

    if-lez v3, :cond_c

    if-lez v12, :cond_c

    iget-object v3, v5, Lf3/t;->g:Landroidx/media3/common/r;

    aget-byte v6, v10, v7

    invoke-static {v3, v6}, Landroidx/media3/container/g;->n(Landroidx/media3/common/r;B)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v8

    goto :goto_3

    :cond_c
    move v3, v4

    :goto_3
    iput-boolean v3, v0, Lf3/h;->H:Z

    iget-object v3, v0, Lf3/h;->g:Landroidx/media3/common/util/j0;

    invoke-interface {v9, v3, v12}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget v3, v0, Lf3/h;->E:I

    add-int/2addr v3, v12

    iput v3, v0, Lf3/h;->E:I

    if-lez v12, :cond_d

    iget-boolean v3, v0, Lf3/h;->G:Z

    if-nez v3, :cond_d

    iget-object v3, v5, Lf3/t;->g:Landroidx/media3/common/r;

    invoke-static {v10, v7, v12, v3}, Landroidx/media3/container/g;->k([BIILandroidx/media3/common/r;)Z

    move-result v3

    if-eqz v3, :cond_d

    iput-boolean v8, v0, Lf3/h;->G:Z

    :cond_d
    :goto_4
    const/4 v3, 0x0

    const/4 v6, 0x3

    goto/16 :goto_1

    :cond_e
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v1

    throw v1

    :cond_f
    iget-boolean v3, v0, Lf3/h;->H:Z

    if-eqz v3, :cond_12

    iget-object v3, v0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v3, v12}, Landroidx/media3/common/util/j0;->S(I)V

    iget-object v3, v0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v3}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v3

    iget v6, v0, Lf3/h;->F:I

    invoke-interface {v1, v3, v4, v6}, Ll2/s;->readFully([BII)V

    iget-object v3, v0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    iget v6, v0, Lf3/h;->F:I

    invoke-interface {v9, v3, v6}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    iget v3, v0, Lf3/h;->F:I

    iget-object v6, v0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v6}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v6

    iget-object v12, v0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v12}, Landroidx/media3/common/util/j0;->g()I

    move-result v12

    invoke-static {v6, v12}, Landroidx/media3/container/g;->L([BI)I

    move-result v6

    iget-object v12, v0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v12, v4}, Landroidx/media3/common/util/j0;->W(I)V

    iget-object v12, v0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v12, v6}, Landroidx/media3/common/util/j0;->V(I)V

    iget-object v6, v5, Lf3/t;->g:Landroidx/media3/common/r;

    iget v6, v6, Landroidx/media3/common/r;->q:I

    const/4 v12, -0x1

    if-ne v6, v12, :cond_10

    iget-object v6, v0, Lf3/h;->p:Landroidx/media3/container/i;

    invoke-virtual {v6}, Landroidx/media3/container/i;->f()I

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, v0, Lf3/h;->p:Landroidx/media3/container/i;

    invoke-virtual {v6, v4}, Landroidx/media3/container/i;->g(I)V

    goto :goto_5

    :cond_10
    iget-object v6, v0, Lf3/h;->p:Landroidx/media3/container/i;

    invoke-virtual {v6}, Landroidx/media3/container/i;->f()I

    move-result v6

    iget-object v12, v5, Lf3/t;->g:Landroidx/media3/common/r;

    iget v12, v12, Landroidx/media3/common/r;->q:I

    if-eq v6, v12, :cond_11

    iget-object v6, v0, Lf3/h;->p:Landroidx/media3/container/i;

    invoke-virtual {v6, v12}, Landroidx/media3/container/i;->g(I)V

    :cond_11
    :goto_5
    iget-object v6, v0, Lf3/h;->p:Landroidx/media3/container/i;

    iget-object v12, v0, Lf3/h;->h:Landroidx/media3/common/util/j0;

    invoke-virtual {v6, v14, v15, v12}, Landroidx/media3/container/i;->a(JLandroidx/media3/common/util/j0;)V

    invoke-virtual {v2}, Lf3/h$b;->c()I

    move-result v6

    and-int/2addr v6, v7

    if-eqz v6, :cond_13

    iget-object v6, v0, Lf3/h;->p:Landroidx/media3/container/i;

    invoke-virtual {v6}, Landroidx/media3/container/i;->d()V

    goto :goto_6

    :cond_12
    invoke-interface {v9, v1, v12, v4}, Ll2/s0;->e(Landroidx/media3/common/j;IZ)I

    move-result v3

    :cond_13
    :goto_6
    iget v6, v0, Lf3/h;->E:I

    add-int/2addr v6, v3

    iput v6, v0, Lf3/h;->E:I

    iget v6, v0, Lf3/h;->F:I

    sub-int/2addr v6, v3

    iput v6, v0, Lf3/h;->F:I

    goto/16 :goto_4

    :cond_14
    :goto_7
    iget v3, v0, Lf3/h;->E:I

    iget v5, v0, Lf3/h;->D:I

    if-ge v3, v5, :cond_15

    sub-int/2addr v5, v3

    invoke-interface {v9, v1, v5, v4}, Ll2/s0;->e(Landroidx/media3/common/j;IZ)I

    move-result v3

    iget v5, v0, Lf3/h;->E:I

    add-int/2addr v5, v3

    iput v5, v0, Lf3/h;->E:I

    goto :goto_7

    :cond_15
    invoke-virtual {v2}, Lf3/h$b;->c()I

    move-result v1

    iget-boolean v3, v0, Lf3/h;->G:Z

    if-nez v3, :cond_16

    const/high16 v3, 0x4000000

    or-int/2addr v1, v3

    :cond_16
    move v12, v1

    invoke-virtual {v2}, Lf3/h$b;->g()Lf3/u;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, v1, Lf3/u;->c:Ll2/s0$a;

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

    :goto_8
    iget v13, v0, Lf3/h;->D:I

    const/4 v3, 0x0

    move-wide v10, v14

    move-wide v4, v14

    move v14, v3

    move-object v15, v1

    invoke-interface/range {v9 .. v15}, Ll2/s0;->d(JIIILl2/s0$a;)V

    invoke-direct {v0, v4, v5}, Lf3/h;->z(J)V

    invoke-virtual {v2}, Lf3/h$b;->h()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x0

    iput-object v1, v0, Lf3/h;->C:Lf3/h$b;

    :cond_18
    const/4 v1, 0x3

    iput v1, v0, Lf3/h;->s:I

    return v8
.end method

.method private static U(I)Z
    .locals 1

    const v0, 0x6d6f6f76

    if-eq p0, v0, :cond_1

    const v0, 0x7472616b

    if-eq p0, v0, :cond_1

    const v0, 0x6d646961

    if-eq p0, v0, :cond_1

    const v0, 0x6d696e66

    if-eq p0, v0, :cond_1

    const v0, 0x7374626c

    if-eq p0, v0, :cond_1

    const v0, 0x6d6f6f66

    if-eq p0, v0, :cond_1

    const v0, 0x74726166

    if-eq p0, v0, :cond_1

    const v0, 0x6d766578

    if-eq p0, v0, :cond_1

    const v0, 0x65647473

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static V(I)Z
    .locals 1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq p0, v0, :cond_1

    const v0, 0x6d646864

    if-eq p0, v0, :cond_1

    const v0, 0x6d766864

    if-eq p0, v0, :cond_1

    const v0, 0x73696478

    if-eq p0, v0, :cond_1

    const v0, 0x73747364

    if-eq p0, v0, :cond_1

    const v0, 0x73747473

    if-eq p0, v0, :cond_1

    const v0, 0x63747473

    if-eq p0, v0, :cond_1

    const v0, 0x73747363

    if-eq p0, v0, :cond_1

    const v0, 0x7374737a

    if-eq p0, v0, :cond_1

    const v0, 0x73747a32

    if-eq p0, v0, :cond_1

    const v0, 0x7374636f

    if-eq p0, v0, :cond_1

    const v0, 0x636f3634

    if-eq p0, v0, :cond_1

    const v0, 0x73747373

    if-eq p0, v0, :cond_1

    const v0, 0x74666474

    if-eq p0, v0, :cond_1

    const v0, 0x74666864

    if-eq p0, v0, :cond_1

    const v0, 0x746b6864

    if-eq p0, v0, :cond_1

    const v0, 0x74726578

    if-eq p0, v0, :cond_1

    const v0, 0x7472756e

    if-eq p0, v0, :cond_1

    const v0, 0x70737368    # 3.013775E29f

    if-eq p0, v0, :cond_1

    const v0, 0x7361697a

    if-eq p0, v0, :cond_1

    const v0, 0x7361696f

    if-eq p0, v0, :cond_1

    const v0, 0x73656e63

    if-eq p0, v0, :cond_1

    const v0, 0x75756964

    if-eq p0, v0, :cond_1

    const v0, 0x73626770

    if-eq p0, v0, :cond_1

    const v0, 0x73677064

    if-eq p0, v0, :cond_1

    const v0, 0x656c7374

    if-eq p0, v0, :cond_1

    const v0, 0x6d656864

    if-eq p0, v0, :cond_1

    const v0, 0x656d7367

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic a(Lf3/h;JLandroidx/media3/common/util/j0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lf3/h;->r(JLandroidx/media3/common/util/j0;)V

    return-void
.end method

.method public static synthetic g()[Ll2/r;
    .locals 1

    invoke-static {}, Lf3/h;->s()[Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method private h(Landroidx/media3/common/r;)Z
    .locals 3

    iget-object v0, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget p1, p0, Lf3/h;->b:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object p1, p1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v0, "video/hevc"

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lf3/h;->b:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    return v2
.end method

.method private static i(I)I
    .locals 2

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static j(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    return v0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lf3/h;->s:I

    iput v0, p0, Lf3/h;->v:I

    return-void
.end method

.method private l(Landroid/util/SparseArray;I)Lf3/c;
    .locals 2

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf3/c;

    return-object p1

    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf3/c;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf3/c;

    return-object p1
.end method

.method private static m(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/d$c;

    iget v5, v4, Landroidx/media3/container/d;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_2

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v4, v4, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-virtual {v4}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v4

    invoke-static {v4}, Lf3/p;->f([B)Ljava/util/UUID;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v6, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Landroidx/media3/common/DrmInitData;

    invoke-direct {v1, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static n(Landroid/util/SparseArray;)Lf3/h$b;
    .locals 9

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf3/h$b;

    invoke-static {v5}, Lf3/h$b;->a(Lf3/h$b;)Z

    move-result v6

    if-nez v6, :cond_0

    iget v6, v5, Lf3/h$b;->f:I

    iget-object v7, v5, Lf3/h$b;->d:Lf3/w;

    iget v7, v7, Lf3/w;->b:I

    if-eq v6, v7, :cond_2

    :cond_0
    invoke-static {v5}, Lf3/h$b;->a(Lf3/h$b;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Lf3/h$b;->h:I

    iget-object v7, v5, Lf3/h$b;->b:Lf3/v;

    iget v7, v7, Lf3/v;->e:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lf3/h$b;->d()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gez v8, :cond_2

    move-object v1, v5

    move-wide v2, v6

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private p()V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Ll2/s0;

    iput-object v0, p0, Lf3/h;->J:[Ll2/s0;

    iget-object v1, p0, Lf3/h;->q:Ll2/s0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lf3/h;->b:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lf3/h;->I:Ll2/t;

    const/4 v6, 0x5

    invoke-interface {v5, v4, v6}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v4, 0x65

    move v1, v3

    :cond_1
    iget-object v0, p0, Lf3/h;->J:[Ll2/s0;

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->X0([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ll2/s0;

    iput-object v0, p0, Lf3/h;->J:[Ll2/s0;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    sget-object v6, Lf3/h;->O:Landroidx/media3/common/r;

    invoke-interface {v5, v6}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lf3/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ll2/s0;

    iput-object v0, p0, Lf3/h;->K:[Ll2/s0;

    :goto_2
    iget-object v0, p0, Lf3/h;->K:[Ll2/s0;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lf3/h;->I:Ll2/t;

    add-int/lit8 v1, v4, 0x1

    const/4 v3, 0x3

    invoke-interface {v0, v4, v3}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v0

    iget-object v3, p0, Lf3/h;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/r;

    invoke-interface {v0, v3}, Ll2/s0;->c(Landroidx/media3/common/r;)V

    iget-object v3, p0, Lf3/h;->K:[Ll2/s0;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static q(Lf3/t;)Z
    .locals 12

    iget-object v0, p0, Lf3/t;->i:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lf3/t;->j:[J

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    return v3

    :cond_1
    const-wide/32 v6, 0xf4240

    iget-wide v8, p0, Lf3/t;->d:J

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v4

    iget-object v0, p0, Lf3/t;->j:[J

    aget-wide v6, v0, v1

    const-wide/32 v8, 0xf4240

    iget-wide v10, p0, Lf3/t;->c:J

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    iget-wide v6, p0, Lf3/t;->e:J

    cmp-long p0, v4, v6

    if-ltz p0, :cond_2

    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic r(JLandroidx/media3/common/util/j0;)V
    .locals 1

    iget-object v0, p0, Lf3/h;->K:[Ll2/s0;

    invoke-static {p1, p2, p3, v0}, Ll2/g;->a(JLandroidx/media3/common/util/j0;[Ll2/s0;)V

    return-void
.end method

.method private static synthetic s()[Ll2/r;
    .locals 3

    new-instance v0, Lf3/h;

    sget-object v1, Li3/s$a;->a:Li3/s$a;

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lf3/h;-><init>(Li3/s$a;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ll2/r;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private u(Landroidx/media3/container/d$b;)V
    .locals 2

    iget v0, p1, Landroidx/media3/container/d;->a:I

    const v1, 0x6d6f6f76

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lf3/h;->y(Landroidx/media3/container/d$b;)V

    goto :goto_0

    :cond_0
    const v1, 0x6d6f6f66

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lf3/h;->x(Landroidx/media3/container/d$b;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/d$b;

    invoke-virtual {v0, p1}, Landroidx/media3/container/d$b;->b(Landroidx/media3/container/d$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private v(Landroidx/media3/common/util/j0;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lf3/h;->J:[Ll2/s0;

    array-length v2, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    invoke-static {v2}, Lf3/b;->p(I)I

    move-result v2

    const/4 v3, 0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported emsg version: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentedMp4Extractor"

    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v21, v10

    move-wide v8, v4

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->B()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v8

    iget-wide v11, v0, Lf3/h;->B:J

    cmp-long v13, v11, v4

    if-eqz v13, :cond_3

    add-long/2addr v11, v8

    move-wide/from16 v17, v11

    goto :goto_0

    :cond_3
    move-wide/from16 v17, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/a1;->e1(JJJ)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v11

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-object/from16 v21, v10

    move-wide/from16 v24, v11

    move-wide/from16 v14, v17

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/j0;->a()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v6}, Landroidx/media3/common/util/j0;->l([BII)V

    new-instance v1, Lw2/a;

    move-object/from16 v19, v1

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v26}, Lw2/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v2, Landroidx/media3/common/util/j0;

    iget-object v6, v0, Lf3/h;->l:Lw2/c;

    invoke-virtual {v6, v1}, Lw2/c;->a(Lw2/a;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/media3/common/util/j0;-><init>([B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/j0;->a()I

    move-result v1

    iget-object v6, v0, Lf3/h;->J:[Ll2/s0;

    array-length v10, v6

    move v11, v7

    :goto_2
    if-ge v11, v10, :cond_4

    aget-object v12, v6, v11

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-interface {v12, v2, v1}, Ll2/s0;->b(Landroidx/media3/common/util/j0;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    cmp-long v2, v14, v4

    if-nez v2, :cond_5

    iget-object v2, v0, Lf3/h;->o:Ljava/util/ArrayDeque;

    new-instance v4, Lf3/h$a;

    invoke-direct {v4, v8, v9, v3, v1}, Lf3/h$a;-><init>(JZI)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lf3/h;->y:I

    add-int/2addr v2, v1

    iput v2, v0, Lf3/h;->y:I

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lf3/h;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lf3/h;->o:Ljava/util/ArrayDeque;

    new-instance v3, Lf3/h$a;

    invoke-direct {v3, v14, v15, v7, v1}, Lf3/h$a;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lf3/h;->y:I

    add-int/2addr v2, v1

    iput v2, v0, Lf3/h;->y:I

    goto :goto_4

    :cond_6
    iget-object v2, v0, Lf3/h;->k:Landroidx/media3/common/util/p0;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/media3/common/util/p0;->g()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lf3/h;->o:Ljava/util/ArrayDeque;

    new-instance v3, Lf3/h$a;

    invoke-direct {v3, v14, v15, v7, v1}, Lf3/h$a;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lf3/h;->y:I

    add-int/2addr v2, v1

    iput v2, v0, Lf3/h;->y:I

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lf3/h;->k:Landroidx/media3/common/util/p0;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v14, v15}, Landroidx/media3/common/util/p0;->a(J)J

    move-result-wide v14

    :cond_8
    iget-object v2, v0, Lf3/h;->J:[Ll2/s0;

    array-length v3, v2

    :goto_3
    if-ge v7, v3, :cond_9

    aget-object v16, v2, v7

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x1

    move-wide/from16 v17, v14

    move/from16 v20, v1

    invoke-interface/range {v16 .. v22}, Ll2/s0;->d(JIIILl2/s0$a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method private w(Landroidx/media3/container/d$c;J)V
    .locals 2

    iget-object v0, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/container/d$b;

    invoke-virtual {p2, p1}, Landroidx/media3/container/d$b;->c(Landroidx/media3/container/d$c;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Landroidx/media3/container/d;->a:I

    const v1, 0x73696478

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {p1, p2, p3}, Lf3/h;->H(Landroidx/media3/common/util/j0;J)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lf3/h;->B:J

    iget-object p2, p0, Lf3/h;->I:Ll2/t;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ll2/m0;

    invoke-interface {p2, p1}, Ll2/t;->f(Ll2/m0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lf3/h;->L:Z

    goto :goto_0

    :cond_1
    const p2, 0x656d7367

    if-ne v0, p2, :cond_2

    iget-object p1, p1, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-direct {p0, p1}, Lf3/h;->v(Landroidx/media3/common/util/j0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private x(Landroidx/media3/container/d$b;)V
    .locals 7

    iget-object v0, p0, Lf3/h;->e:Landroid/util/SparseArray;

    iget-object v1, p0, Lf3/h;->c:Lf3/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget v3, p0, Lf3/h;->b:I

    iget-object v4, p0, Lf3/h;->i:[B

    invoke-static {p1, v0, v1, v3, v4}, Lf3/h;->B(Landroidx/media3/container/d$b;Landroid/util/SparseArray;ZI[B)V

    iget-object p1, p1, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-static {p1}, Lf3/h;->m(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf3/h$b;

    invoke-virtual {v3, p1}, Lf3/h$b;->n(Landroidx/media3/common/DrmInitData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lf3/h;->z:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_2

    iget-object v0, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf3/h$b;

    iget-wide v5, p0, Lf3/h;->z:J

    invoke-virtual {v0, v5, v6}, Lf3/h$b;->l(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iput-wide v3, p0, Lf3/h;->z:J

    :cond_3
    return-void
.end method

.method private y(Landroidx/media3/container/d$b;)V
    .locals 12

    iget-object v0, p0, Lf3/h;->c:Lf3/t;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Unexpected moov box."

    invoke-static {v0, v3}, Landroidx/media3/common/util/a;->h(ZLjava/lang/Object;)V

    iget-object v0, p1, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-static {v0}, Lf3/h;->m(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v7

    const v0, 0x6d766578

    invoke-virtual {p1, v0}, Landroidx/media3/container/d$b;->d(I)Landroidx/media3/container/d$b;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/d$b;

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, v0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v4

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v8, v0, Landroidx/media3/container/d$b;->c:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/container/d$c;

    iget v9, v8, Landroidx/media3/container/d;->a:I

    const v10, 0x74726578

    if-ne v9, v10, :cond_1

    iget-object v8, v8, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v8}, Lf3/h;->L(Landroidx/media3/common/util/j0;)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lf3/c;

    invoke-virtual {v11, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    const v10, 0x6d656864

    if-ne v9, v10, :cond_2

    iget-object v5, v8, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    invoke-static {v5}, Lf3/h;->A(Landroidx/media3/common/util/j0;)J

    move-result-wide v5

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v4, Ll2/e0;

    invoke-direct {v4}, Ll2/e0;-><init>()V

    iget v0, p0, Lf3/h;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v8, v2

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    new-instance v10, Lf3/e;

    invoke-direct {v10, p0}, Lf3/e;-><init>(Lf3/h;)V

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v10}, Lf3/b;->G(Landroidx/media3/container/d$b;Ll2/e0;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_6

    invoke-static {p1}, Lf3/k;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-ge v1, v0, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf3/w;

    iget-object v4, v3, Lf3/w;->a:Lf3/t;

    iget-object v5, p0, Lf3/h;->I:Ll2/t;

    iget v6, v4, Lf3/t;->b:I

    invoke-interface {v5, v1, v6}, Ll2/t;->track(II)Ll2/s0;

    move-result-object v5

    iget-wide v6, v4, Lf3/t;->e:J

    invoke-interface {v5, v6, v7}, Ll2/s0;->f(J)V

    new-instance v6, Lf3/h$b;

    iget v7, v4, Lf3/t;->a:I

    invoke-direct {p0, v11, v7}, Lf3/h;->l(Landroid/util/SparseArray;I)Lf3/c;

    move-result-object v7

    invoke-direct {v6, v5, v3, v7, v2}, Lf3/h$b;-><init>(Ll2/s0;Lf3/w;Lf3/c;Ljava/lang/String;)V

    iget-object v3, p0, Lf3/h;->e:Landroid/util/SparseArray;

    iget v5, v4, Lf3/t;->a:I

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, p0, Lf3/h;->A:J

    iget-wide v3, v4, Lf3/t;->e:J

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lf3/h;->A:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lf3/h;->I:Ll2/t;

    invoke-interface {p1}, Ll2/t;->endTracks()V

    goto :goto_7

    :cond_6
    iget-object v3, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v0, :cond_7

    goto :goto_5

    :cond_7
    move v2, v1

    :goto_5
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    :goto_6
    if-ge v1, v0, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf3/w;

    iget-object v3, v2, Lf3/w;->a:Lf3/t;

    iget-object v4, p0, Lf3/h;->e:Landroid/util/SparseArray;

    iget v5, v3, Lf3/t;->a:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf3/h$b;

    iget v3, v3, Lf3/t;->a:I

    invoke-direct {p0, v11, v3}, Lf3/h;->l(Landroid/util/SparseArray;I)Lf3/c;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lf3/h$b;->j(Lf3/w;Lf3/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    return-void
.end method

.method private z(J)V
    .locals 13

    :cond_0
    iget-object v0, p0, Lf3/h;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lf3/h;->o:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf3/h$a;

    iget v1, p0, Lf3/h;->y:I

    iget v2, v0, Lf3/h$a;->c:I

    sub-int/2addr v1, v2

    iput v1, p0, Lf3/h;->y:I

    iget-wide v1, v0, Lf3/h$a;->a:J

    iget-boolean v3, v0, Lf3/h$a;->b:Z

    if-eqz v3, :cond_1

    add-long/2addr v1, p1

    :cond_1
    iget-object v3, p0, Lf3/h;->k:Landroidx/media3/common/util/p0;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/util/p0;->a(J)J

    move-result-wide v1

    :cond_2
    iget-object v10, p0, Lf3/h;->J:[Ll2/s0;

    array-length v11, v10

    const/4 v3, 0x0

    move v12, v3

    :goto_0
    if-ge v12, v11, :cond_0

    aget-object v3, v10, v12

    iget v7, v0, Lf3/h$a;->c:I

    iget v8, p0, Lf3/h;->y:I

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Ll2/s0;->d(JIIILl2/s0$a;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public b(Ll2/t;)V
    .locals 12

    iget v0, p0, Lf3/h;->b:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    new-instance v0, Li3/t;

    iget-object v1, p0, Lf3/h;->a:Li3/s$a;

    invoke-direct {v0, p1, v1}, Li3/t;-><init>(Ll2/t;Li3/s$a;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lf3/h;->I:Ll2/t;

    invoke-direct {p0}, Lf3/h;->k()V

    invoke-direct {p0}, Lf3/h;->p()V

    iget-object p1, p0, Lf3/h;->c:Lf3/t;

    if-eqz p1, :cond_1

    new-instance v0, Lf3/h$b;

    iget-object v1, p0, Lf3/h;->I:Ll2/t;

    iget p1, p1, Lf3/t;->b:I

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ll2/t;->track(II)Ll2/s0;

    move-result-object p1

    new-instance v1, Lf3/w;

    iget-object v4, p0, Lf3/h;->c:Lf3/t;

    new-array v5, v2, [J

    new-array v6, v2, [I

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lf3/w;-><init>(Lf3/t;[J[II[J[IJ)V

    new-instance v3, Lf3/c;

    invoke-direct {v3, v2, v2, v2, v2}, Lf3/c;-><init>(IIII)V

    iget-object v4, p0, Lf3/h;->c:Lf3/t;

    iget-object v4, v4, Lf3/t;->g:Landroidx/media3/common/r;

    invoke-static {v4}, Lf3/k;->a(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v1, v3, v4}, Lf3/h$b;-><init>(Ll2/s0;Lf3/w;Lf3/c;Ljava/lang/String;)V

    iget-object p1, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lf3/h;->I:Ll2/t;

    invoke-interface {p1}, Ll2/t;->endTracks()V

    :cond_1
    return-void
.end method

.method public c(Ll2/s;Ll2/l0;)I
    .locals 1

    :cond_0
    :goto_0
    iget p2, p0, Lf3/h;->s:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    invoke-direct {p0, p1}, Lf3/h;->T(Ll2/s;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lf3/h;->S(Ll2/s;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lf3/h;->R(Ll2/s;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lf3/h;->Q(Ll2/s;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lf3/h;->p:Landroidx/media3/container/i;

    invoke-virtual {p1}, Landroidx/media3/container/i;->d()V

    const/4 p1, -0x1

    return p1
.end method

.method public d(Ll2/s;)Z
    .locals 1

    invoke-static {p1}, Lf3/s;->b(Ll2/s;)Ll2/q0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lf3/h;->r:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public synthetic e()Ll2/r;
    .locals 1

    invoke-static {p0}, Ll2/q;->b(Ll2/r;)Ll2/r;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lf3/h;->o()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/common/collect/ImmutableList;
    .locals 1

    iget-object v0, p0, Lf3/h;->r:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    iget-object p1, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lf3/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/h$b;

    invoke-virtual {v1}, Lf3/h$b;->k()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lf3/h;->o:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput p2, p0, Lf3/h;->y:I

    iget-object p1, p0, Lf3/h;->p:Landroidx/media3/container/i;

    invoke-virtual {p1}, Landroidx/media3/container/i;->b()V

    iput-wide p3, p0, Lf3/h;->z:J

    iget-object p1, p0, Lf3/h;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-direct {p0}, Lf3/h;->k()V

    return-void
.end method

.method protected t(Lf3/t;)Lf3/t;
    .locals 0

    return-object p1
.end method
