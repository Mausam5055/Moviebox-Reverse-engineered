.class public final Ll2/b0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/b0$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Ll2/b0$a;

.field private final l:Landroidx/media3/common/x;


# direct methods
.method private constructor <init>(IIIIIIIJLl2/b0$a;Landroidx/media3/common/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll2/b0;->a:I

    iput p2, p0, Ll2/b0;->b:I

    iput p3, p0, Ll2/b0;->c:I

    iput p4, p0, Ll2/b0;->d:I

    iput p5, p0, Ll2/b0;->e:I

    invoke-static {p5}, Ll2/b0;->j(I)I

    move-result p1

    iput p1, p0, Ll2/b0;->f:I

    iput p6, p0, Ll2/b0;->g:I

    iput p7, p0, Ll2/b0;->h:I

    invoke-static {p7}, Ll2/b0;->e(I)I

    move-result p1

    iput p1, p0, Ll2/b0;->i:I

    iput-wide p8, p0, Ll2/b0;->j:J

    iput-object p10, p0, Ll2/b0;->k:Ll2/b0$a;

    iput-object p11, p0, Ll2/b0;->l:Landroidx/media3/common/x;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/util/i0;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/i0;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {v0, p2}, Landroidx/media3/common/util/i0;->p(I)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p2

    iput p2, p0, Ll2/b0;->a:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    iput p1, p0, Ll2/b0;->b:I

    const/16 p1, 0x18

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p2

    iput p2, p0, Ll2/b0;->c:I

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    iput p1, p0, Ll2/b0;->d:I

    const/16 p1, 0x14

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    iput p1, p0, Ll2/b0;->e:I

    invoke-static {p1}, Ll2/b0;->j(I)I

    move-result p1

    iput p1, p0, Ll2/b0;->f:I

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll2/b0;->g:I

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->h(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ll2/b0;->h:I

    invoke-static {p1}, Ll2/b0;->e(I)I

    move-result p1

    iput p1, p0, Ll2/b0;->i:I

    const/16 p1, 0x24

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/i0;->j(I)J

    move-result-wide p1

    iput-wide p1, p0, Ll2/b0;->j:J

    const/4 p1, 0x0

    iput-object p1, p0, Ll2/b0;->k:Ll2/b0$a;

    iput-object p1, p0, Ll2/b0;->l:Landroidx/media3/common/x;

    return-void
.end method

.method private static e(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private static j(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(Ljava/util/List;)Ll2/b0;
    .locals 13

    new-instance v0, Landroidx/media3/common/x;

    invoke-direct {v0, p1}, Landroidx/media3/common/x;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Ll2/b0;->h(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object v12

    new-instance p1, Ll2/b0;

    iget v2, p0, Ll2/b0;->a:I

    iget v3, p0, Ll2/b0;->b:I

    iget v4, p0, Ll2/b0;->c:I

    iget v5, p0, Ll2/b0;->d:I

    iget v6, p0, Ll2/b0;->e:I

    iget v7, p0, Ll2/b0;->g:I

    iget v8, p0, Ll2/b0;->h:I

    iget-wide v9, p0, Ll2/b0;->j:J

    iget-object v11, p0, Ll2/b0;->k:Ll2/b0$a;

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Ll2/b0;-><init>(IIIIIIIJLl2/b0$a;Landroidx/media3/common/x;)V

    return-object p1
.end method

.method public b(Ll2/b0$a;)Ll2/b0;
    .locals 13

    new-instance v12, Ll2/b0;

    iget v1, p0, Ll2/b0;->a:I

    iget v2, p0, Ll2/b0;->b:I

    iget v3, p0, Ll2/b0;->c:I

    iget v4, p0, Ll2/b0;->d:I

    iget v5, p0, Ll2/b0;->e:I

    iget v6, p0, Ll2/b0;->g:I

    iget v7, p0, Ll2/b0;->h:I

    iget-wide v8, p0, Ll2/b0;->j:J

    iget-object v11, p0, Ll2/b0;->l:Landroidx/media3/common/x;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Ll2/b0;-><init>(IIIIIIIJLl2/b0$a;Landroidx/media3/common/x;)V

    return-object v12
.end method

.method public c(Ljava/util/List;)Ll2/b0;
    .locals 12

    invoke-static {p1}, Ll2/v0;->d(Ljava/util/List;)Landroidx/media3/common/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll2/b0;->h(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object v11

    new-instance p1, Ll2/b0;

    iget v1, p0, Ll2/b0;->a:I

    iget v2, p0, Ll2/b0;->b:I

    iget v3, p0, Ll2/b0;->c:I

    iget v4, p0, Ll2/b0;->d:I

    iget v5, p0, Ll2/b0;->e:I

    iget v6, p0, Ll2/b0;->g:I

    iget v7, p0, Ll2/b0;->h:I

    iget-wide v8, p0, Ll2/b0;->j:J

    iget-object v10, p0, Ll2/b0;->k:Ll2/b0$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Ll2/b0;-><init>(IIIIIIIJLl2/b0$a;Landroidx/media3/common/x;)V

    return-object p1
.end method

.method public d()J
    .locals 4

    iget v0, p0, Ll2/b0;->d:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    iget v2, p0, Ll2/b0;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v0, v2

    goto :goto_2

    :cond_0
    iget v0, p0, Ll2/b0;->a:I

    iget v1, p0, Ll2/b0;->b:I

    if-ne v0, v1, :cond_1

    if-lez v0, :cond_1

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1000

    :goto_1
    iget v2, p0, Ll2/b0;->g:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Ll2/b0;->h:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x40

    goto :goto_0

    :goto_2
    return-wide v0
.end method

.method public f()J
    .locals 4

    iget-wide v0, p0, Ll2/b0;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Ll2/b0;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public g([BLandroidx/media3/common/x;)Landroidx/media3/common/r;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    iget v0, p0, Ll2/b0;->d:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p2}, Ll2/b0;->h(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object p2

    new-instance v1, Landroidx/media3/common/r$b;

    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/r$b;->k0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Ll2/b0;->g:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Ll2/b0;->e:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->v0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    iget v1, p0, Ll2/b0;->h:I

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i0(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/r$b;->o0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/r$b;->g0(Ljava/util/List;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p1

    return-object p1
.end method

.method public h(Landroidx/media3/common/x;)Landroidx/media3/common/x;
    .locals 1

    iget-object v0, p0, Ll2/b0;->l:Landroidx/media3/common/x;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i(J)J
    .locals 8

    iget v0, p0, Ll2/b0;->e:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    iget-wide p1, p0, Ll2/b0;->j:J

    const-wide/16 v0, 0x1

    sub-long v6, p1, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/a1;->q(JJJ)J

    move-result-wide p1

    return-wide p1
.end method
