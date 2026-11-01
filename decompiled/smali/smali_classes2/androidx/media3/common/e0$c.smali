.class public final Landroidx/media3/common/e0$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field private static final A:Ljava/lang/String;

.field private static final B:Ljava/lang/String;

.field private static final C:Ljava/lang/String;

.field private static final D:Ljava/lang/String;

.field private static final E:Ljava/lang/String;

.field private static final F:Ljava/lang/String;

.field public static final q:Ljava/lang/Object;

.field private static final r:Ljava/lang/Object;

.field private static final s:Landroidx/media3/common/t;

.field private static final t:Ljava/lang/String;

.field private static final u:Ljava/lang/String;

.field private static final v:Ljava/lang/String;

.field private static final w:Ljava/lang/String;

.field private static final x:Ljava/lang/String;

.field private static final y:Ljava/lang/String;

.field private static final z:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Landroidx/media3/common/t;

.field public d:Ljava/lang/Object;

.field public e:J

.field public f:J

.field public g:J

.field public h:Z

.field public i:Z

.field public j:Landroidx/media3/common/t$g;

.field public k:Z

.field public l:J

.field public m:J

.field public n:I

.field public o:I

.field public p:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/e0$c;->q:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/e0$c;->r:Ljava/lang/Object;

    new-instance v0, Landroidx/media3/common/t$c;

    invoke-direct {v0}, Landroidx/media3/common/t$c;-><init>()V

    const-string v1, "androidx.media3.common.Timeline"

    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->d(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/media3/common/t$c;->i(Landroid/net/Uri;)Landroidx/media3/common/t$c;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->s:Landroidx/media3/common/t;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->t:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->u:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->v:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->w:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->x:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->y:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->z:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->A:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->B:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->C:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->D:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->E:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/e0$c;->F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/e0$c;->q:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    sget-object v0, Landroidx/media3/common/e0$c;->s:Landroidx/media3/common/t;

    iput-object v0, p0, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/e0$c;->g:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->h0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/e0$c;->l:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/e0$c;->l:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/e0$c;->m:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->y1(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/common/e0$c;->p:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media3/common/e0$c;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/e0$c;

    iget-object v2, p0, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    iget-object v3, p1, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/e0$c;->d:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/common/e0$c;->d:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/common/e0$c;->j:Landroidx/media3/common/t$g;

    iget-object v3, p1, Landroidx/media3/common/e0$c;->j:Landroidx/media3/common/t$g;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->e:J

    iget-wide v4, p1, Landroidx/media3/common/e0$c;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->f:J

    iget-wide v4, p1, Landroidx/media3/common/e0$c;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->g:J

    iget-wide v4, p1, Landroidx/media3/common/e0$c;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/e0$c;->h:Z

    iget-boolean v3, p1, Landroidx/media3/common/e0$c;->h:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/e0$c;->i:Z

    iget-boolean v3, p1, Landroidx/media3/common/e0$c;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/common/e0$c;->k:Z

    iget-boolean v3, p1, Landroidx/media3/common/e0$c;->k:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->l:J

    iget-wide v4, p1, Landroidx/media3/common/e0$c;->l:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->m:J

    iget-wide v4, p1, Landroidx/media3/common/e0$c;->m:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media3/common/e0$c;->n:I

    iget v3, p1, Landroidx/media3/common/e0$c;->n:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/e0$c;->o:I

    iget v3, p1, Landroidx/media3/common/e0$c;->o:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->p:J

    iget-wide v4, p1, Landroidx/media3/common/e0$c;->p:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/e0$c;->j:Landroidx/media3/common/t$g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Ljava/lang/Object;Landroidx/media3/common/t;Ljava/lang/Object;JJJZZLandroidx/media3/common/t$g;JJIIJ)Landroidx/media3/common/e0$c;
    .locals 3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    iput-object v2, v0, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/media3/common/e0$c;->s:Landroidx/media3/common/t;

    :goto_0
    iput-object v2, v0, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroidx/media3/common/t$h;->h:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Landroidx/media3/common/e0$c;->b:Ljava/lang/Object;

    move-object v1, p3

    iput-object v1, v0, Landroidx/media3/common/e0$c;->d:Ljava/lang/Object;

    move-wide v1, p4

    iput-wide v1, v0, Landroidx/media3/common/e0$c;->e:J

    move-wide v1, p6

    iput-wide v1, v0, Landroidx/media3/common/e0$c;->f:J

    move-wide v1, p8

    iput-wide v1, v0, Landroidx/media3/common/e0$c;->g:J

    move v1, p10

    iput-boolean v1, v0, Landroidx/media3/common/e0$c;->h:Z

    move v1, p11

    iput-boolean v1, v0, Landroidx/media3/common/e0$c;->i:Z

    move-object v1, p12

    iput-object v1, v0, Landroidx/media3/common/e0$c;->j:Landroidx/media3/common/t$g;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/media3/common/e0$c;->l:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/media3/common/e0$c;->m:J

    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/common/e0$c;->n:I

    move/from16 v1, p18

    iput v1, v0, Landroidx/media3/common/e0$c;->o:I

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroidx/media3/common/e0$c;->p:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/common/e0$c;->k:Z

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/e0$c;->c:Landroidx/media3/common/t;

    invoke-virtual {v0}, Landroidx/media3/common/t;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/e0$c;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/e0$c;->j:Landroidx/media3/common/t$g;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/common/t$g;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->e:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->f:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->g:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/e0$c;->h:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/e0$c;->i:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/e0$c;->k:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->l:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->m:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/e0$c;->n:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/e0$c;->o:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/e0$c;->p:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
