.class final Landroidx/media3/exoplayer/dash/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/source/f0$a;
.implements Lh2/h$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/dash/c$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static final B:Ljava/util/regex/Pattern;


# instance fields
.field final a:I

.field private final b:Landroidx/media3/exoplayer/dash/a$a;

.field private final c:Lw1/n;

.field private final d:Landroidx/media3/exoplayer/drm/t;

.field private final e:Landroidx/media3/exoplayer/upstream/m;

.field private final f:Lz1/b;

.field private final g:J

.field private final h:Landroidx/media3/exoplayer/upstream/p;

.field private final i:Landroidx/media3/exoplayer/upstream/b;

.field private final j:Lg2/z;

.field private final k:[Landroidx/media3/exoplayer/dash/c$a;

.field private final l:Lg2/e;

.field private final m:Landroidx/media3/exoplayer/dash/f;

.field private final n:Ljava/util/IdentityHashMap;

.field private final o:Landroidx/media3/exoplayer/source/s$a;

.field private final p:Landroidx/media3/exoplayer/drm/r$a;

.field private final q:Ly1/f4;

.field private r:Landroidx/media3/exoplayer/source/q$a;

.field private s:[Lh2/h;

.field private t:[Landroidx/media3/exoplayer/dash/e;

.field private u:Landroidx/media3/exoplayer/source/f0;

.field private v:La2/c;

.field private w:I

.field private x:Ljava/util/List;

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/dash/c;->A:Ljava/util/regex/Pattern;

    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/dash/c;->B:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILa2/c;Lz1/b;ILandroidx/media3/exoplayer/dash/a$a;Lw1/n;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;JLandroidx/media3/exoplayer/upstream/p;Landroidx/media3/exoplayer/upstream/b;Lg2/e;Landroidx/media3/exoplayer/dash/f$b;Ly1/f4;)V
    .locals 9

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p5

    move-object/from16 v4, p8

    move-object/from16 v5, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v6, p1

    iput v6, v0, Landroidx/media3/exoplayer/dash/c;->a:I

    iput-object v1, v0, Landroidx/media3/exoplayer/dash/c;->v:La2/c;

    move-object v6, p3

    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->f:Lz1/b;

    iput v2, v0, Landroidx/media3/exoplayer/dash/c;->w:I

    iput-object v3, v0, Landroidx/media3/exoplayer/dash/c;->b:Landroidx/media3/exoplayer/dash/a$a;

    move-object v6, p6

    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->c:Lw1/n;

    iput-object v4, v0, Landroidx/media3/exoplayer/dash/c;->d:Landroidx/media3/exoplayer/drm/t;

    move-object/from16 v6, p9

    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->p:Landroidx/media3/exoplayer/drm/r$a;

    move-object/from16 v6, p10

    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->e:Landroidx/media3/exoplayer/upstream/m;

    move-object/from16 v6, p11

    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->o:Landroidx/media3/exoplayer/source/s$a;

    move-wide/from16 v6, p12

    iput-wide v6, v0, Landroidx/media3/exoplayer/dash/c;->g:J

    move-object/from16 v6, p14

    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->h:Landroidx/media3/exoplayer/upstream/p;

    iput-object v5, v0, Landroidx/media3/exoplayer/dash/c;->i:Landroidx/media3/exoplayer/upstream/b;

    move-object/from16 v6, p16

    iput-object v6, v0, Landroidx/media3/exoplayer/dash/c;->l:Lg2/e;

    move-object/from16 v7, p18

    iput-object v7, v0, Landroidx/media3/exoplayer/dash/c;->q:Ly1/f4;

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroidx/media3/exoplayer/dash/c;->y:Z

    new-instance v7, Landroidx/media3/exoplayer/dash/f;

    move-object/from16 v8, p17

    invoke-direct {v7, p2, v8, v5}, Landroidx/media3/exoplayer/dash/f;-><init>(La2/c;Landroidx/media3/exoplayer/dash/f$b;Landroidx/media3/exoplayer/upstream/b;)V

    iput-object v7, v0, Landroidx/media3/exoplayer/dash/c;->m:Landroidx/media3/exoplayer/dash/f;

    const/4 v5, 0x0

    invoke-static {v5}, Landroidx/media3/exoplayer/dash/c;->z(I)[Lh2/h;

    move-result-object v7

    iput-object v7, v0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    new-array v5, v5, [Landroidx/media3/exoplayer/dash/e;

    iput-object v5, v0, Landroidx/media3/exoplayer/dash/c;->t:[Landroidx/media3/exoplayer/dash/e;

    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v5, v0, Landroidx/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    invoke-interface/range {p16 .. p16}, Lg2/e;->b()Landroidx/media3/exoplayer/source/f0;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    invoke-virtual {p2, p4}, La2/c;->c(I)La2/g;

    move-result-object v1

    iget-object v2, v1, La2/g;->d:Ljava/util/List;

    iput-object v2, v0, Landroidx/media3/exoplayer/dash/c;->x:Ljava/util/List;

    iget-object v1, v1, La2/g;->c:Ljava/util/List;

    invoke-static {v4, p5, v1, v2}, Landroidx/media3/exoplayer/dash/c;->m(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/dash/a$a;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lg2/z;

    iput-object v2, v0, Landroidx/media3/exoplayer/dash/c;->j:Lg2/z;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Landroidx/media3/exoplayer/dash/c$a;

    iput-object v1, v0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    return-void
.end method

.method private static B(La2/e;Ljava/util/regex/Pattern;Landroidx/media3/common/r;)[Landroidx/media3/common/r;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, La2/e;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    new-array p0, v1, [Landroidx/media3/common/r;

    aput-object p2, p0, v0

    return-object p0

    :cond_0
    const-string v2, ";"

    invoke-static {p0, v2}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    new-array v2, v2, [Landroidx/media3/common/r;

    move v3, v0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    new-array p0, v1, [Landroidx/media3/common/r;

    aput-object p2, p0, v0

    return-object p0

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p2, Landroidx/media3/common/r;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private D([Lj2/z;[Z[Lg2/u;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_3

    :cond_0
    aget-object v1, p3, v0

    instance-of v2, v1, Lh2/h;

    if-eqz v2, :cond_1

    check-cast v1, Lh2/h;

    invoke-virtual {v1, p0}, Lh2/h;->G(Lh2/h$b;)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lh2/h$a;

    if-eqz v2, :cond_2

    check-cast v1, Lh2/h$a;

    invoke-virtual {v1}, Lh2/h$a;->b()V

    :cond_2
    :goto_1
    const/4 v1, 0x0

    aput-object v1, p3, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private E([Lj2/z;[Lg2/u;[I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p2, v1

    instance-of v3, v2, Lg2/h;

    if-nez v3, :cond_0

    instance-of v2, v2, Lh2/h$a;

    if-eqz v2, :cond_4

    :cond_0
    invoke-direct {p0, v1, p3}, Landroidx/media3/exoplayer/dash/c;->t(I[I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    aget-object v2, p2, v1

    instance-of v2, v2, Lg2/h;

    goto :goto_1

    :cond_1
    aget-object v3, p2, v1

    instance-of v4, v3, Lh2/h$a;

    if-eqz v4, :cond_2

    check-cast v3, Lh2/h$a;

    iget-object v3, v3, Lh2/h$a;->a:Lh2/h;

    aget-object v2, p2, v2

    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    aget-object v2, p2, v1

    instance-of v3, v2, Lh2/h$a;

    if-eqz v3, :cond_3

    check-cast v2, Lh2/h$a;

    invoke-virtual {v2}, Lh2/h$a;->b()V

    :cond_3
    const/4 v2, 0x0

    aput-object v2, p2, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private F([Lj2/z;[Lg2/u;[ZJ[I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, p2, v1

    if-nez v4, :cond_2

    aput-boolean v3, p3, v1

    aget v3, p6, v1

    iget-object v4, p0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    aget-object v3, v4, v3

    iget v4, v3, Landroidx/media3/exoplayer/dash/c$a;->c:I

    if-nez v4, :cond_1

    invoke-direct {p0, v3, v2, p4, p5}, Landroidx/media3/exoplayer/dash/c;->l(Landroidx/media3/exoplayer/dash/c$a;Lj2/z;J)Lh2/h;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/dash/c;->x:Ljava/util/List;

    iget v3, v3, Landroidx/media3/exoplayer/dash/c$a;->d:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/f;

    invoke-interface {v2}, Lj2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object v2

    new-instance v4, Landroidx/media3/exoplayer/dash/e;

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/c;->v:La2/c;

    iget-boolean v5, v5, La2/c;->d:Z

    invoke-direct {v4, v3, v2, v5}, Landroidx/media3/exoplayer/dash/e;-><init>(La2/f;Landroidx/media3/common/r;Z)V

    aput-object v4, p2, v1

    goto :goto_1

    :cond_2
    instance-of v3, v4, Lh2/h;

    if-eqz v3, :cond_3

    check-cast v4, Lh2/h;

    invoke-virtual {v4}, Lh2/h;->u()Lh2/i;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/dash/a;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/dash/a;->e(Lj2/z;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    array-length p3, p1

    if-ge v0, p3, :cond_7

    aget-object p3, p2, v0

    if-nez p3, :cond_6

    aget-object p3, p1, v0

    if-eqz p3, :cond_6

    aget p3, p6, v0

    iget-object v1, p0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    aget-object p3, v1, p3

    iget v1, p3, Landroidx/media3/exoplayer/dash/c$a;->c:I

    if-ne v1, v3, :cond_6

    invoke-direct {p0, v0, p6}, Landroidx/media3/exoplayer/dash/c;->t(I[I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    new-instance p3, Lg2/h;

    invoke-direct {p3}, Lg2/h;-><init>()V

    aput-object p3, p2, v0

    goto :goto_3

    :cond_5
    aget-object v1, p2, v1

    check-cast v1, Lh2/h;

    iget p3, p3, Landroidx/media3/exoplayer/dash/c$a;->b:I

    invoke-virtual {v1, p4, p5, p3}, Lh2/h;->J(JI)Lh2/h$a;

    move-result-object p3

    aput-object p3, p2, v0

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static synthetic i(Lh2/h;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/dash/c;->x(Lh2/h;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static j(Ljava/util/List;[Landroidx/media3/common/f0;[Landroidx/media3/exoplayer/dash/c$a;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/f;

    new-instance v4, Landroidx/media3/common/r$b;

    invoke-direct {v4}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v3}, La2/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    const-string v5, "application/x-emsg"

    invoke-virtual {v4, v5}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, La2/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroidx/media3/common/f0;

    new-array v6, v0, [Landroidx/media3/common/r;

    aput-object v4, v6, v1

    invoke-direct {v5, v3, v6}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    aput-object v5, p1, p3

    add-int/lit8 v3, p3, 0x1

    invoke-static {v2}, Landroidx/media3/exoplayer/dash/c$a;->c(I)Landroidx/media3/exoplayer/dash/c$a;

    move-result-object v4

    aput-object v4, p2, p3

    add-int/2addr v2, v0

    move p3, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static k(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/dash/a$a;Ljava/util/List;[[II[Z[[Landroidx/media3/common/r;[Landroidx/media3/common/f0;[Landroidx/media3/exoplayer/dash/c$a;)I
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move/from16 v4, p4

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_7

    aget-object v7, p3, v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v7

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_0

    aget v11, v7, v10

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, La2/a;

    iget-object v11, v11, La2/a;->c:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v10, v2

    goto :goto_1

    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v10, v9, [Landroidx/media3/common/r;

    move v11, v3

    :goto_2
    if-ge v11, v9, :cond_1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La2/j;

    iget-object v12, v12, La2/j;->b:Landroidx/media3/common/r;

    invoke-virtual {v12}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v13

    move-object/from16 v14, p0

    invoke-interface {v14, v12}, Landroidx/media3/exoplayer/drm/t;->b(Landroidx/media3/common/r;)I

    move-result v12

    invoke-virtual {v13, v12}, Landroidx/media3/common/r$b;->V(I)Landroidx/media3/common/r$b;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/2addr v11, v2

    goto :goto_2

    :cond_1
    move-object/from16 v14, p0

    aget v8, v7, v3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La2/a;

    iget-wide v11, v8, La2/a;->a:J

    const-wide/16 v15, -0x1

    cmp-long v9, v11, v15

    if-eqz v9, :cond_2

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unset:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    add-int/lit8 v11, v6, 0x1

    aget-boolean v12, p5, v5

    const/4 v13, -0x1

    if-eqz v12, :cond_3

    add-int/lit8 v12, v6, 0x2

    goto :goto_4

    :cond_3
    move v12, v11

    move v11, v13

    :goto_4
    aget-object v15, p6, v5

    array-length v15, v15

    if-eqz v15, :cond_4

    add-int/lit8 v15, v12, 0x1

    goto :goto_5

    :cond_4
    move v15, v12

    move v12, v13

    :goto_5
    invoke-static {v0, v10}, Landroidx/media3/exoplayer/dash/c;->y(Landroidx/media3/exoplayer/dash/a$a;[Landroidx/media3/common/r;)V

    new-instance v3, Landroidx/media3/common/f0;

    invoke-direct {v3, v9, v10}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    aput-object v3, p7, v6

    iget v3, v8, La2/a;->b:I

    invoke-static {v3, v7, v6, v11, v12}, Landroidx/media3/exoplayer/dash/c$a;->d(I[IIII)Landroidx/media3/exoplayer/dash/c$a;

    move-result-object v3

    aput-object v3, p8, v6

    if-eq v11, v13, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":emsg"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Landroidx/media3/common/r$b;

    invoke-direct {v8}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v8, v3}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v8

    const-string v10, "application/x-emsg"

    invoke-virtual {v8, v10}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v8

    new-instance v10, Landroidx/media3/common/f0;

    new-array v13, v2, [Landroidx/media3/common/r;

    const/16 v16, 0x0

    aput-object v8, v13, v16

    invoke-direct {v10, v3, v13}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    aput-object v10, p7, v11

    invoke-static {v7, v6}, Landroidx/media3/exoplayer/dash/c$a;->b([II)Landroidx/media3/exoplayer/dash/c$a;

    move-result-object v3

    aput-object v3, p8, v11

    const/4 v3, -0x1

    goto :goto_6

    :cond_5
    const/16 v16, 0x0

    move v3, v13

    :goto_6
    if-eq v12, v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":cc"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v8, p6, v5

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-static {v7, v6, v8}, Landroidx/media3/exoplayer/dash/c$a;->a([IILcom/google/common/collect/ImmutableList;)Landroidx/media3/exoplayer/dash/c$a;

    move-result-object v6

    aput-object v6, p8, v12

    aget-object v6, p6, v5

    invoke-static {v0, v6}, Landroidx/media3/exoplayer/dash/c;->y(Landroidx/media3/exoplayer/dash/a$a;[Landroidx/media3/common/r;)V

    new-instance v6, Landroidx/media3/common/f0;

    aget-object v7, p6, v5

    invoke-direct {v6, v3, v7}, Landroidx/media3/common/f0;-><init>(Ljava/lang/String;[Landroidx/media3/common/r;)V

    aput-object v6, p7, v12

    :cond_6
    add-int/2addr v5, v2

    move v6, v15

    move/from16 v3, v16

    goto/16 :goto_0

    :cond_7
    return v6
.end method

.method private l(Landroidx/media3/exoplayer/dash/c$a;Lj2/z;J)Lh2/h;
    .locals 34

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    iget v1, v0, Landroidx/media3/exoplayer/dash/c$a;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move/from16 v26, v2

    goto :goto_0

    :cond_0
    move/from16 v26, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v26, :cond_1

    iget-object v6, v15, Landroidx/media3/exoplayer/dash/c;->j:Lg2/z;

    invoke-virtual {v6, v1}, Lg2/z;->b(I)Landroidx/media3/common/f0;

    move-result-object v1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    move-object v1, v5

    :goto_1
    iget v7, v0, Landroidx/media3/exoplayer/dash/c$a;->g:I

    if-eq v7, v4, :cond_2

    iget-object v4, v15, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroidx/media3/exoplayer/dash/c$a;->h:Lcom/google/common/collect/ImmutableList;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    :goto_2
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    add-int/2addr v6, v7

    new-array v7, v6, [Landroidx/media3/common/r;

    new-array v6, v6, [I

    if-eqz v26, :cond_3

    invoke-virtual {v1, v3}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object v1

    aput-object v1, v7, v3

    const/4 v1, 0x5

    aput v1, v6, v3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v3, v9, :cond_4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/r;

    aput-object v9, v7, v1

    const/4 v10, 0x3

    aput v10, v6, v1

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, v15, Landroidx/media3/exoplayer/dash/c;->v:La2/c;

    iget-boolean v1, v1, La2/c;->d:Z

    if-eqz v1, :cond_5

    if-eqz v26, :cond_5

    iget-object v1, v15, Landroidx/media3/exoplayer/dash/c;->m:Landroidx/media3/exoplayer/dash/f;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/dash/f;->k()Landroidx/media3/exoplayer/dash/f$c;

    move-result-object v5

    :cond_5
    move-object v14, v5

    iget-object v1, v15, Landroidx/media3/exoplayer/dash/c;->b:Landroidx/media3/exoplayer/dash/a$a;

    iget-object v2, v15, Landroidx/media3/exoplayer/dash/c;->h:Landroidx/media3/exoplayer/upstream/p;

    iget-object v3, v15, Landroidx/media3/exoplayer/dash/c;->v:La2/c;

    iget-object v4, v15, Landroidx/media3/exoplayer/dash/c;->f:Lz1/b;

    iget v5, v15, Landroidx/media3/exoplayer/dash/c;->w:I

    iget-object v9, v0, Landroidx/media3/exoplayer/dash/c$a;->a:[I

    iget v10, v0, Landroidx/media3/exoplayer/dash/c$a;->b:I

    iget-wide v11, v15, Landroidx/media3/exoplayer/dash/c;->g:J

    iget-object v13, v15, Landroidx/media3/exoplayer/dash/c;->c:Lw1/n;

    move-object/from16 v32, v7

    iget-object v7, v15, Landroidx/media3/exoplayer/dash/c;->q:Ly1/f4;

    const/16 v31, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v9

    move-object/from16 v22, p2

    move/from16 v23, v10

    move-wide/from16 v24, v11

    move-object/from16 v27, v8

    move-object/from16 v28, v14

    move-object/from16 v29, v13

    move-object/from16 v30, v7

    invoke-interface/range {v16 .. v31}, Landroidx/media3/exoplayer/dash/a$a;->e(Landroidx/media3/exoplayer/upstream/p;La2/c;Lz1/b;I[ILj2/z;IJZLjava/util/List;Landroidx/media3/exoplayer/dash/f$c;Lw1/n;Ly1/f4;Landroidx/media3/exoplayer/upstream/f;)Landroidx/media3/exoplayer/dash/a;

    move-result-object v5

    new-instance v13, Lh2/h;

    iget v2, v0, Landroidx/media3/exoplayer/dash/c$a;->b:I

    iget-object v7, v15, Landroidx/media3/exoplayer/dash/c;->i:Landroidx/media3/exoplayer/upstream/b;

    iget-object v10, v15, Landroidx/media3/exoplayer/dash/c;->d:Landroidx/media3/exoplayer/drm/t;

    iget-object v11, v15, Landroidx/media3/exoplayer/dash/c;->p:Landroidx/media3/exoplayer/drm/r$a;

    iget-object v12, v15, Landroidx/media3/exoplayer/dash/c;->e:Landroidx/media3/exoplayer/upstream/m;

    iget-object v0, v15, Landroidx/media3/exoplayer/dash/c;->o:Landroidx/media3/exoplayer/source/s$a;

    iget-boolean v8, v15, Landroidx/media3/exoplayer/dash/c;->y:Z

    const/16 v16, 0x0

    move-object v1, v13

    move-object v3, v6

    move-object/from16 v4, v32

    move-object/from16 v6, p0

    move/from16 v17, v8

    move-wide/from16 v8, p3

    move-object/from16 v33, v13

    move-object v13, v0

    move-object v0, v14

    move/from16 v14, v17

    move-object/from16 v15, v16

    invoke-direct/range {v1 .. v15}, Lh2/h;-><init>(I[I[Landroidx/media3/common/r;Lh2/i;Landroidx/media3/exoplayer/source/f0$a;Landroidx/media3/exoplayer/upstream/b;JLandroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/source/s$a;ZLandroidx/media3/exoplayer/util/c;)V

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Landroidx/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    move-object/from16 v3, v33

    invoke-virtual {v2, v3, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static m(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/dash/a$a;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 11

    invoke-static {p2}, Landroidx/media3/exoplayer/dash/c;->s(Ljava/util/List;)[[I

    move-result-object v3

    array-length v4, v3

    new-array v5, v4, [Z

    new-array v6, v4, [[Landroidx/media3/common/r;

    invoke-static {v4, p2, v3, v5, v6}, Landroidx/media3/exoplayer/dash/c;->w(ILjava/util/List;[[I[Z[[Landroidx/media3/common/r;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v9, v0, [Landroidx/media3/common/f0;

    new-array v10, v0, [Landroidx/media3/exoplayer/dash/c$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v9

    move-object v8, v10

    invoke-static/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/c;->k(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/dash/a$a;Ljava/util/List;[[II[Z[[Landroidx/media3/common/r;[Landroidx/media3/common/f0;[Landroidx/media3/exoplayer/dash/c$a;)I

    move-result p0

    invoke-static {p3, v9, v10, p0}, Landroidx/media3/exoplayer/dash/c;->j(Ljava/util/List;[Landroidx/media3/common/f0;[Landroidx/media3/exoplayer/dash/c$a;I)V

    new-instance p0, Lg2/z;

    invoke-direct {p0, v9}, Lg2/z;-><init>([Landroidx/media3/common/f0;)V

    invoke-static {p0, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static n(La2/a;La2/a;)Z
    .locals 4

    iget v0, p0, La2/a;->b:I

    iget v1, p1, La2/a;->b:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, La2/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p1, La2/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, La2/a;->c:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La2/j;

    iget-object p0, p0, La2/j;->b:Landroidx/media3/common/r;

    iget-object p1, p1, La2/a;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/j;

    iget-object p1, p1, La2/j;->b:Landroidx/media3/common/r;

    iget-object v0, p0, Landroidx/media3/common/r;->d:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Landroidx/media3/common/r;->f:I

    iget p1, p1, Landroidx/media3/common/r;->f:I

    if-ne p0, p1, :cond_2

    move v2, v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private static o(Ljava/util/List;)La2/e;
    .locals 1

    const-string v0, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/dash/c;->p(Ljava/util/List;Ljava/lang/String;)La2/e;

    move-result-object p0

    return-object p0
.end method

.method private static p(Ljava/util/List;Ljava/lang/String;)La2/e;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/e;

    iget-object v2, v1, La2/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static q(Ljava/util/List;)La2/e;
    .locals 1

    const-string v0, "http://dashif.org/guidelines/trickmode"

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/dash/c;->p(Ljava/util/List;Ljava/lang/String;)La2/e;

    move-result-object p0

    return-object p0
.end method

.method private static r(Ljava/util/List;[I)[Landroidx/media3/common/r;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/a;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/a;

    iget-object v3, v3, La2/a;->d:Ljava/util/List;

    move v5, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/e;

    iget-object v7, v6, La2/e;->a:Ljava/lang/String;

    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance p0, Landroidx/media3/common/r$b;

    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    const-string p1, "application/cea-608"

    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v4, La2/a;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":cea608"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    sget-object p1, Landroidx/media3/exoplayer/dash/c;->A:Ljava/util/regex/Pattern;

    invoke-static {v6, p1, p0}, Landroidx/media3/exoplayer/dash/c;->B(La2/e;Ljava/util/regex/Pattern;Landroidx/media3/common/r;)[Landroidx/media3/common/r;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    iget-object v8, v6, La2/e;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance p0, Landroidx/media3/common/r$b;

    invoke-direct {p0}, Landroidx/media3/common/r$b;-><init>()V

    const-string p1, "application/cea-708"

    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, v4, La2/a;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ":cea708"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object p0

    sget-object p1, Landroidx/media3/exoplayer/dash/c;->B:Ljava/util/regex/Pattern;

    invoke-static {v6, p1, p0}, Landroidx/media3/exoplayer/dash/c;->B(La2/e;Ljava/util/regex/Pattern;Landroidx/media3/common/r;)[Landroidx/media3/common/r;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    new-array p0, v1, [Landroidx/media3/common/r;

    return-object p0
.end method

.method private static s(Ljava/util/List;)[[I
    .locals 13

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->p(I)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/a;

    iget-wide v6, v6, La2/a;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/a;

    iget-object v7, v6, La2/a;->e:Ljava/util/List;

    invoke-static {v7}, Landroidx/media3/exoplayer/dash/c;->q(Ljava/util/List;)La2/e;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, v6, La2/a;->f:Ljava/util/List;

    invoke-static {v7}, Landroidx/media3/exoplayer/dash/c;->q(Ljava/util/List;)La2/e;

    move-result-object v7

    :cond_1
    if-eqz v7, :cond_2

    iget-object v7, v7, La2/e;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    if-ne v7, v5, :cond_4

    iget-object v8, v6, La2/a;->f:Ljava/util/List;

    invoke-static {v8}, Landroidx/media3/exoplayer/dash/c;->o(Ljava/util/List;)La2/e;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, v8, La2/e;->b:Ljava/lang/String;

    const-string v9, ","

    invoke-static {v8, v9}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La2/a;

    invoke-static {v6, v12}, Landroidx/media3/exoplayer/dash/c;->n(La2/a;La2/a;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    if-eq v7, v5, :cond_5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    new-array v0, p0, [[I

    :goto_4
    if-ge v4, p0, :cond_7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    return-object v0
.end method

.method private t(I[I)I
    .locals 4

    aget p1, p2, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    aget-object p1, v1, p1

    iget p1, p1, Landroidx/media3/exoplayer/dash/c$a;->e:I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget v2, p2, v1

    if-ne v2, p1, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/dash/c;->k:[Landroidx/media3/exoplayer/dash/c$a;

    aget-object v2, v3, v2

    iget v2, v2, Landroidx/media3/exoplayer/dash/c$a;->c:I

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private u([Lj2/z;)[I
    .locals 4

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/dash/c;->j:Lg2/z;

    invoke-interface {v2}, Lj2/c0;->getTrackGroup()Landroidx/media3/common/f0;

    move-result-object v2

    invoke-virtual {v3, v2}, Lg2/z;->d(Landroidx/media3/common/f0;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static v(Ljava/util/List;[I)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/a;

    iget-object v3, v3, La2/a;->c:Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/j;

    iget-object v5, v5, La2/j;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static w(ILjava/util/List;[[I[Z[[Landroidx/media3/common/r;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, p2, v0

    invoke-static {p1, v2}, Landroidx/media3/exoplayer/dash/c;->v(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aput-boolean v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Landroidx/media3/exoplayer/dash/c;->r(Ljava/util/List;[I)[Landroidx/media3/common/r;

    move-result-object v2

    aput-object v2, p4, v0

    array-length v2, v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static synthetic x(Lh2/h;)Ljava/util/List;
    .locals 0

    iget p0, p0, Lh2/h;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static y(Landroidx/media3/exoplayer/dash/a$a;[Landroidx/media3/common/r;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/dash/a$a;->d(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static z(I)[Lh2/h;
    .locals 0

    new-array p0, p0, [Lh2/h;

    return-object p0
.end method


# virtual methods
.method public A(Lh2/h;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/dash/c;->r:Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    return-void
.end method

.method public C()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->m:Landroidx/media3/exoplayer/dash/f;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/dash/f;->o()V

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lh2/h;->G(Lh2/h$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/dash/c;->r:Landroidx/media3/exoplayer/source/q$a;

    return-void
.end method

.method public G(La2/c;I)V
    .locals 9

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/c;->v:La2/c;

    iput p2, p0, Landroidx/media3/exoplayer/dash/c;->w:I

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->m:Landroidx/media3/exoplayer/dash/f;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/dash/f;->q(La2/c;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lh2/h;->u()Lh2/i;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/dash/a;

    invoke-interface {v4, p1, p2}, Landroidx/media3/exoplayer/dash/a;->g(La2/c;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->r:Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/f0$a;->f(Landroidx/media3/exoplayer/source/f0;)V

    :cond_1
    invoke-virtual {p1, p2}, La2/c;->c(I)La2/g;

    move-result-object v0

    iget-object v0, v0, La2/g;->d:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/exoplayer/dash/c;->x:Ljava/util/List;

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->t:[Landroidx/media3/exoplayer/dash/e;

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    iget-object v5, p0, Landroidx/media3/exoplayer/dash/c;->x:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/f;

    invoke-virtual {v6}, La2/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Landroidx/media3/exoplayer/dash/e;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, La2/c;->d()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    iget-boolean v8, p1, La2/c;->d:Z

    if-eqz v8, :cond_3

    if-ne p2, v5, :cond_3

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    invoke-virtual {v4, v6, v7}, Landroidx/media3/exoplayer/dash/e;->d(La2/f;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/f0;->a(Landroidx/media3/exoplayer/v2;)Z

    move-result p1

    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lh2/h;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Lh2/h;->b(JLandroidx/media3/exoplayer/c4;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Lh2/h;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e([Lj2/z;[Z[Lg2/u;[ZJ)J
    .locals 7

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/dash/c;->u([Lj2/z;)[I

    move-result-object v6

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/dash/c;->D([Lj2/z;[Z[Lg2/u;)V

    invoke-direct {p0, p1, p3, v6}, Landroidx/media3/exoplayer/dash/c;->E([Lj2/z;[Lg2/u;[I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/dash/c;->F([Lj2/z;[Lg2/u;[ZJ[I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length p4, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    aget-object v2, p3, v1

    instance-of v3, v2, Lh2/h;

    if-eqz v3, :cond_0

    check-cast v2, Lh2/h;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroidx/media3/exoplayer/dash/e;

    if-eqz v3, :cond_1

    check-cast v2, Landroidx/media3/exoplayer/dash/e;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p3}, Landroidx/media3/exoplayer/dash/c;->z(I)[Lh2/h;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Landroidx/media3/exoplayer/dash/e;

    iput-object p3, p0, Landroidx/media3/exoplayer/dash/c;->t:[Landroidx/media3/exoplayer/dash/e;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p2, p0, Landroidx/media3/exoplayer/dash/c;->l:Lg2/e;

    new-instance p3, Landroidx/media3/exoplayer/dash/b;

    invoke-direct {p3}, Landroidx/media3/exoplayer/dash/b;-><init>()V

    invoke-static {p1, p3}, Lcom/google/common/collect/Lists;->o(Ljava/util/List;Lcom/google/common/base/f;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lg2/e;->a(Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/source/f0;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/dash/c;->y:Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Landroidx/media3/exoplayer/dash/c;->y:Z

    iput-wide p5, p0, Landroidx/media3/exoplayer/dash/c;->z:J

    :cond_3
    return-wide p5
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    check-cast p1, Lh2/h;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/c;->A(Lh2/h;)V

    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/c;->r:Landroidx/media3/exoplayer/source/q$a;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->c(Landroidx/media3/exoplayer/source/q;)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lg2/z;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->j:Lg2/z;

    return-object v0
.end method

.method public declared-synchronized h(Lh2/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/dash/f$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/dash/f$c;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/f0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->h:Landroidx/media3/exoplayer/upstream/p;

    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/p;->maybeThrowError()V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lh2/h;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/dash/c;->z:J

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lh2/h;->isLoading()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/dash/c;->v:La2/c;

    iget v5, p0, Landroidx/media3/exoplayer/dash/c;->w:I

    invoke-virtual {v4, v5}, La2/c;->f(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lh2/h;->t(J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->u:Landroidx/media3/exoplayer/source/f0;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/f0;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->s:[Lh2/h;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lh2/h;->I(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/c;->t:[Landroidx/media3/exoplayer/dash/e;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroidx/media3/exoplayer/dash/e;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method
