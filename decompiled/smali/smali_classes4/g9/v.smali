.class public final Lg9/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg9/v$a;
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

.field public final k:Lg9/v$a;

.field private final l:Lcom/google/android/exoplayer2/metadata/Metadata;


# direct methods
.method private constructor <init>(IIIIIIIJLg9/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg9/v;->a:I

    iput p2, p0, Lg9/v;->b:I

    iput p3, p0, Lg9/v;->c:I

    iput p4, p0, Lg9/v;->d:I

    iput p5, p0, Lg9/v;->e:I

    invoke-static {p5}, Lg9/v;->j(I)I

    move-result p1

    iput p1, p0, Lg9/v;->f:I

    iput p6, p0, Lg9/v;->g:I

    iput p7, p0, Lg9/v;->h:I

    invoke-static {p7}, Lg9/v;->e(I)I

    move-result p1

    iput p1, p0, Lg9/v;->i:I

    iput-wide p8, p0, Lg9/v;->j:J

    iput-object p10, p0, Lg9/v;->k:Lg9/v$a;

    iput-object p11, p0, Lg9/v;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/util/c0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/c0;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/c0;->p(I)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p2

    iput p2, p0, Lg9/v;->a:I

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p1

    iput p1, p0, Lg9/v;->b:I

    const/16 p1, 0x18

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p2

    iput p2, p0, Lg9/v;->c:I

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p1

    iput p1, p0, Lg9/v;->d:I

    const/16 p1, 0x14

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p1

    iput p1, p0, Lg9/v;->e:I

    invoke-static {p1}, Lg9/v;->j(I)I

    move-result p1

    iput p1, p0, Lg9/v;->f:I

    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg9/v;->g:I

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/c0;->h(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg9/v;->h:I

    invoke-static {p1}, Lg9/v;->e(I)I

    move-result p1

    iput p1, p0, Lg9/v;->i:I

    const/16 p1, 0x24

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/c0;->j(I)J

    move-result-wide p1

    iput-wide p1, p0, Lg9/v;->j:J

    const/4 p1, 0x0

    iput-object p1, p0, Lg9/v;->k:Lg9/v$a;

    iput-object p1, p0, Lg9/v;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    return-void
.end method

.method private static e(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
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
.method public a(Ljava/util/List;)Lg9/v;
    .locals 13

    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lg9/v;->h(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v12

    new-instance p1, Lg9/v;

    iget v2, p0, Lg9/v;->a:I

    iget v3, p0, Lg9/v;->b:I

    iget v4, p0, Lg9/v;->c:I

    iget v5, p0, Lg9/v;->d:I

    iget v6, p0, Lg9/v;->e:I

    iget v7, p0, Lg9/v;->g:I

    iget v8, p0, Lg9/v;->h:I

    iget-wide v9, p0, Lg9/v;->j:J

    iget-object v11, p0, Lg9/v;->k:Lg9/v$a;

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Lg9/v;-><init>(IIIIIIIJLg9/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object p1
.end method

.method public b(Lg9/v$a;)Lg9/v;
    .locals 13

    new-instance v12, Lg9/v;

    iget v1, p0, Lg9/v;->a:I

    iget v2, p0, Lg9/v;->b:I

    iget v3, p0, Lg9/v;->c:I

    iget v4, p0, Lg9/v;->d:I

    iget v5, p0, Lg9/v;->e:I

    iget v6, p0, Lg9/v;->g:I

    iget v7, p0, Lg9/v;->h:I

    iget-wide v8, p0, Lg9/v;->j:J

    iget-object v11, p0, Lg9/v;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Lg9/v;-><init>(IIIIIIIJLg9/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object v12
.end method

.method public c(Ljava/util/List;)Lg9/v;
    .locals 12

    invoke-static {p1}, Lg9/h0;->c(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg9/v;->h(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v11

    new-instance p1, Lg9/v;

    iget v1, p0, Lg9/v;->a:I

    iget v2, p0, Lg9/v;->b:I

    iget v3, p0, Lg9/v;->c:I

    iget v4, p0, Lg9/v;->d:I

    iget v5, p0, Lg9/v;->e:I

    iget v6, p0, Lg9/v;->g:I

    iget v7, p0, Lg9/v;->h:I

    iget-wide v8, p0, Lg9/v;->j:J

    iget-object v10, p0, Lg9/v;->k:Lg9/v$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lg9/v;-><init>(IIIIIIIJLg9/v$a;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-object p1
.end method

.method public d()J
    .locals 4

    iget v0, p0, Lg9/v;->d:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    iget v2, p0, Lg9/v;->c:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v0, v2

    goto :goto_2

    :cond_0
    iget v0, p0, Lg9/v;->a:I

    iget v1, p0, Lg9/v;->b:I

    if-ne v0, v1, :cond_1

    if-lez v0, :cond_1

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1000

    :goto_1
    iget v2, p0, Lg9/v;->g:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lg9/v;->h:I

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

    iget-wide v0, p0, Lg9/v;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget v2, p0, Lg9/v;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public g([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    aput-byte v1, p1, v0

    iget v0, p0, Lg9/v;->d:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p2}, Lg9/v;->h(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p2

    new-instance v1, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/o1$b;->W(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p0, Lg9/v;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    iget v1, p0, Lg9/v;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->f0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/o1$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 1

    iget-object v0, p0, Lg9/v;->l:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public i(J)J
    .locals 8

    iget v0, p0, Lg9/v;->e:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    div-long v2, p1, v0

    iget-wide p1, p0, Lg9/v;->j:J

    const-wide/16 v0, 0x1

    sub-long v6, p1, v0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/p0;->r(JJJ)J

    move-result-wide p1

    return-wide p1
.end method
