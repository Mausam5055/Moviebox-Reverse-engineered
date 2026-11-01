.class final Lcom/google/android/exoplayer2/source/dash/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/b0$a;
.implements Lv9/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/b$a;
    }
.end annotation


# static fields
.field private static final y:Ljava/util/regex/Pattern;

.field private static final z:Ljava/util/regex/Pattern;


# instance fields
.field final a:I

.field private final b:Lcom/google/android/exoplayer2/source/dash/a$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/k0;

.field private final d:Lcom/google/android/exoplayer2/drm/u;

.field private final e:Lcom/google/android/exoplayer2/upstream/z;

.field private final f:Lw9/b;

.field private final g:J

.field private final h:Lcom/google/android/exoplayer2/upstream/a0;

.field private final i:Lcom/google/android/exoplayer2/upstream/b;

.field private final j:Lt9/x;

.field private final k:[Lcom/google/android/exoplayer2/source/dash/b$a;

.field private final l:Lt9/d;

.field private final m:Lcom/google/android/exoplayer2/source/dash/e;

.field private final n:Ljava/util/IdentityHashMap;

.field private final o:Lcom/google/android/exoplayer2/source/p$a;

.field private final p:Lcom/google/android/exoplayer2/drm/s$a;

.field private final q:Le9/u1;

.field private r:Lcom/google/android/exoplayer2/source/n$a;

.field private s:[Lv9/i;

.field private t:[Lcom/google/android/exoplayer2/source/dash/d;

.field private u:Lcom/google/android/exoplayer2/source/b0;

.field private v:Lx9/c;

.field private w:I

.field private x:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CC([1-4])=(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/b;->y:Ljava/util/regex/Pattern;

    const-string v0, "([1-4])=lang:(\\w+)(,.+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/dash/b;->z:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(ILx9/c;Lw9/b;ILcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/upstream/k0;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;JLcom/google/android/exoplayer2/upstream/a0;Lcom/google/android/exoplayer2/upstream/b;Lt9/d;Lcom/google/android/exoplayer2/source/dash/e$b;Le9/u1;)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p7

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v6, p1

    iput v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->a:I

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/b;->v:Lx9/c;

    move-object v6, p3

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->f:Lw9/b;

    iput v2, v0, Lcom/google/android/exoplayer2/source/dash/b;->w:I

    move-object v6, p5

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->b:Lcom/google/android/exoplayer2/source/dash/a$a;

    move-object v6, p6

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->c:Lcom/google/android/exoplayer2/upstream/k0;

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/dash/b;->d:Lcom/google/android/exoplayer2/drm/u;

    move-object/from16 v6, p8

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->p:Lcom/google/android/exoplayer2/drm/s$a;

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->e:Lcom/google/android/exoplayer2/upstream/z;

    move-object/from16 v6, p10

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->o:Lcom/google/android/exoplayer2/source/p$a;

    move-wide/from16 v6, p11

    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->g:J

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->h:Lcom/google/android/exoplayer2/upstream/a0;

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/b;->i:Lcom/google/android/exoplayer2/upstream/b;

    iput-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b;->l:Lt9/d;

    move-object/from16 v6, p17

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->q:Le9/u1;

    new-instance v6, Lcom/google/android/exoplayer2/source/dash/e;

    move-object/from16 v7, p16

    invoke-direct {v6, p2, v7, v4}, Lcom/google/android/exoplayer2/source/dash/e;-><init>(Lx9/c;Lcom/google/android/exoplayer2/source/dash/e$b;Lcom/google/android/exoplayer2/upstream/b;)V

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->m:Lcom/google/android/exoplayer2/source/dash/e;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/dash/b;->u(I)[Lv9/i;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    new-array v4, v4, [Lcom/google/android/exoplayer2/source/dash/d;

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/b;->t:[Lcom/google/android/exoplayer2/source/dash/d;

    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/b;->n:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    invoke-interface {v5, v4}, Lt9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/google/android/exoplayer2/source/b0;

    invoke-virtual {p2, p4}, Lx9/c;->c(I)Lx9/g;

    move-result-object v1

    iget-object v2, v1, Lx9/g;->d:Ljava/util/List;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/b;->x:Ljava/util/List;

    iget-object v1, v1, Lx9/g;->c:Ljava/util/List;

    invoke-static {p7, v1, v2}, Lcom/google/android/exoplayer2/source/dash/b;->k(Lcom/google/android/exoplayer2/drm/u;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lt9/x;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/b;->j:Lt9/x;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/exoplayer2/source/dash/b$a;

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/dash/b$a;

    return-void
.end method

.method private A([Lcom/google/android/exoplayer2/trackselection/h;[Lt9/s;[ZJ[I)V
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

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object v3, v4, v3

    iget v4, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->c:I

    if-nez v4, :cond_1

    invoke-direct {p0, v3, v2, p4, p5}, Lcom/google/android/exoplayer2/source/dash/b;->j(Lcom/google/android/exoplayer2/source/dash/b$a;Lcom/google/android/exoplayer2/trackselection/h;J)Lv9/i;

    move-result-object v2

    aput-object v2, p2, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/b;->x:Ljava/util/List;

    iget v3, v3, Lcom/google/android/exoplayer2/source/dash/b$a;->d:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9/f;

    invoke-interface {v2}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v2

    new-instance v4, Lcom/google/android/exoplayer2/source/dash/d;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/b;->v:Lx9/c;

    iget-boolean v5, v5, Lx9/c;->d:Z

    invoke-direct {v4, v3, v2, v5}, Lcom/google/android/exoplayer2/source/dash/d;-><init>(Lx9/f;Lcom/google/android/exoplayer2/o1;Z)V

    aput-object v4, p2, v1

    goto :goto_1

    :cond_2
    instance-of v3, v4, Lv9/i;

    if-eqz v3, :cond_3

    check-cast v4, Lv9/i;

    invoke-virtual {v4}, Lv9/i;->q()Lv9/j;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/dash/a;

    invoke-interface {v3, v2}, Lcom/google/android/exoplayer2/source/dash/a;->b(Lcom/google/android/exoplayer2/trackselection/h;)V

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

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object p3, v1, p3

    iget v1, p3, Lcom/google/android/exoplayer2/source/dash/b$a;->c:I

    if-ne v1, v3, :cond_6

    invoke-direct {p0, v0, p6}, Lcom/google/android/exoplayer2/source/dash/b;->q(I[I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    new-instance p3, Lt9/g;

    invoke-direct {p3}, Lt9/g;-><init>()V

    aput-object p3, p2, v0

    goto :goto_3

    :cond_5
    aget-object v1, p2, v1

    check-cast v1, Lv9/i;

    iget p3, p3, Lcom/google/android/exoplayer2/source/dash/b$a;->b:I

    invoke-virtual {v1, p4, p5, p3}, Lv9/i;->F(JI)Lv9/i$a;

    move-result-object p3

    aput-object p3, p2, v0

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static f(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/b$a;I)V
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

    check-cast v3, Lx9/f;

    new-instance v4, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v3}, Lx9/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    const-string v5, "application/x-emsg"

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v4

    invoke-virtual {v3}, Lx9/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v6, v0, [Lcom/google/android/exoplayer2/o1;

    aput-object v4, v6, v1

    invoke-direct {v5, v3, v6}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    aput-object v5, p1, p3

    add-int/lit8 v3, p3, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/b$a;->c(I)Lcom/google/android/exoplayer2/source/dash/b$a;

    move-result-object v4

    aput-object v4, p2, p3

    add-int/2addr v2, v0

    move p3, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static i(Lcom/google/android/exoplayer2/drm/u;Ljava/util/List;[[II[Z[[Lcom/google/android/exoplayer2/o1;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/b$a;)I
    .locals 16

    move-object/from16 v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move/from16 v3, p3

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v6, p2, v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v6

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_0

    aget v10, v6, v9

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lx9/a;

    iget-object v10, v10, Lx9/a;->c:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/2addr v9, v1

    goto :goto_1

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v9, v8, [Lcom/google/android/exoplayer2/o1;

    move v10, v2

    :goto_2
    if-ge v10, v8, :cond_1

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lx9/j;

    iget-object v11, v11, Lx9/j;->b:Lcom/google/android/exoplayer2/o1;

    move-object/from16 v12, p0

    invoke-interface {v12, v11}, Lcom/google/android/exoplayer2/drm/u;->a(Lcom/google/android/exoplayer2/o1;)I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/google/android/exoplayer2/o1;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/2addr v10, v1

    goto :goto_2

    :cond_1
    move-object/from16 v12, p0

    aget v7, v6, v2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx9/a;

    iget v8, v7, Lx9/a;->a:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "unset:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    add-int/lit8 v11, v5, 0x1

    aget-boolean v13, p4, v4

    if-eqz v13, :cond_3

    add-int/lit8 v13, v5, 0x2

    goto :goto_4

    :cond_3
    move v13, v11

    move v11, v10

    :goto_4
    aget-object v14, p5, v4

    array-length v14, v14

    if-eqz v14, :cond_4

    add-int/lit8 v14, v13, 0x1

    goto :goto_5

    :cond_4
    move v14, v13

    move v13, v10

    :goto_5
    new-instance v15, Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {v15, v8, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    aput-object v15, p6, v5

    iget v7, v7, Lx9/a;->b:I

    invoke-static {v7, v6, v5, v11, v13}, Lcom/google/android/exoplayer2/source/dash/b$a;->d(I[IIII)Lcom/google/android/exoplayer2/source/dash/b$a;

    move-result-object v7

    aput-object v7, p7, v5

    if-eq v11, v10, :cond_5

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, ":emsg"

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v9}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v9, v7}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v9

    const-string v15, "application/x-emsg"

    invoke-virtual {v9, v15}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v9

    new-instance v15, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v10, v1, [Lcom/google/android/exoplayer2/o1;

    aput-object v9, v10, v2

    invoke-direct {v15, v7, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    aput-object v15, p6, v11

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/source/dash/b$a;->b([II)Lcom/google/android/exoplayer2/source/dash/b$a;

    move-result-object v7

    aput-object v7, p7, v11

    const/4 v7, -0x1

    goto :goto_6

    :cond_5
    move v7, v10

    :goto_6
    if-eq v13, v7, :cond_6

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":cc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v9, p5, v4

    invoke-direct {v8, v7, v9}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/o1;)V

    aput-object v8, p6, v13

    invoke-static {v6, v5}, Lcom/google/android/exoplayer2/source/dash/b$a;->a([II)Lcom/google/android/exoplayer2/source/dash/b$a;

    move-result-object v5

    aput-object v5, p7, v13

    :cond_6
    add-int/2addr v4, v1

    move v5, v14

    goto/16 :goto_0

    :cond_7
    return v5
.end method

.method private j(Lcom/google/android/exoplayer2/source/dash/b$a;Lcom/google/android/exoplayer2/trackselection/h;J)Lv9/i;
    .locals 32

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    iget v1, v0, Lcom/google/android/exoplayer2/source/dash/b$a;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move/from16 v25, v2

    goto :goto_0

    :cond_0
    move/from16 v25, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v25, :cond_1

    iget-object v6, v14, Lcom/google/android/exoplayer2/source/dash/b;->j:Lt9/x;

    invoke-virtual {v6, v1}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    move-object v1, v5

    :goto_1
    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/b$a;->g:I

    if-eq v7, v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v4, :cond_3

    iget-object v8, v14, Lcom/google/android/exoplayer2/source/dash/b;->j:Lt9/x;

    invoke-virtual {v8, v7}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    iget v8, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    add-int/2addr v6, v8

    goto :goto_3

    :cond_3
    move-object v7, v5

    :goto_3
    new-array v8, v6, [Lcom/google/android/exoplayer2/o1;

    new-array v6, v6, [I

    if-eqz v25, :cond_4

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    aput-object v1, v8, v3

    const/4 v1, 0x5

    aput v1, v6, v3

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_5

    :goto_5
    iget v4, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    if-ge v3, v4, :cond_5

    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v4

    aput-object v4, v8, v1

    const/4 v10, 0x3

    aput v10, v6, v1

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->v:Lx9/c;

    iget-boolean v1, v1, Lx9/c;->d:Z

    if-eqz v1, :cond_6

    if-eqz v25, :cond_6

    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->m:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/e;->k()Lcom/google/android/exoplayer2/source/dash/e$c;

    move-result-object v5

    :cond_6
    move-object v13, v5

    iget-object v15, v14, Lcom/google/android/exoplayer2/source/dash/b;->b:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v1, v14, Lcom/google/android/exoplayer2/source/dash/b;->h:Lcom/google/android/exoplayer2/upstream/a0;

    iget-object v2, v14, Lcom/google/android/exoplayer2/source/dash/b;->v:Lx9/c;

    iget-object v3, v14, Lcom/google/android/exoplayer2/source/dash/b;->f:Lw9/b;

    iget v4, v14, Lcom/google/android/exoplayer2/source/dash/b;->w:I

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/b$a;->a:[I

    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/b$a;->b:I

    iget-wide v10, v14, Lcom/google/android/exoplayer2/source/dash/b;->g:J

    iget-object v12, v14, Lcom/google/android/exoplayer2/source/dash/b;->c:Lcom/google/android/exoplayer2/upstream/k0;

    move-object/from16 v30, v8

    iget-object v8, v14, Lcom/google/android/exoplayer2/source/dash/b;->q:Le9/u1;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, p2

    move/from16 v22, v7

    move-wide/from16 v23, v10

    move-object/from16 v26, v9

    move-object/from16 v27, v13

    move-object/from16 v28, v12

    move-object/from16 v29, v8

    invoke-interface/range {v15 .. v29}, Lcom/google/android/exoplayer2/source/dash/a$a;->a(Lcom/google/android/exoplayer2/upstream/a0;Lx9/c;Lw9/b;I[ILcom/google/android/exoplayer2/trackselection/h;IJZLjava/util/List;Lcom/google/android/exoplayer2/source/dash/e$c;Lcom/google/android/exoplayer2/upstream/k0;Le9/u1;)Lcom/google/android/exoplayer2/source/dash/a;

    move-result-object v5

    new-instance v15, Lv9/i;

    iget v2, v0, Lcom/google/android/exoplayer2/source/dash/b$a;->b:I

    iget-object v7, v14, Lcom/google/android/exoplayer2/source/dash/b;->i:Lcom/google/android/exoplayer2/upstream/b;

    iget-object v10, v14, Lcom/google/android/exoplayer2/source/dash/b;->d:Lcom/google/android/exoplayer2/drm/u;

    iget-object v11, v14, Lcom/google/android/exoplayer2/source/dash/b;->p:Lcom/google/android/exoplayer2/drm/s$a;

    iget-object v12, v14, Lcom/google/android/exoplayer2/source/dash/b;->e:Lcom/google/android/exoplayer2/upstream/z;

    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/b;->o:Lcom/google/android/exoplayer2/source/p$a;

    move-object v1, v15

    move-object v3, v6

    move-object/from16 v4, v30

    move-object/from16 v6, p0

    move-wide/from16 v8, p3

    move-object/from16 v31, v13

    move-object v13, v0

    invoke-direct/range {v1 .. v13}, Lv9/i;-><init>(I[I[Lcom/google/android/exoplayer2/o1;Lv9/j;Lcom/google/android/exoplayer2/source/b0$a;Lcom/google/android/exoplayer2/upstream/b;JLcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, v14, Lcom/google/android/exoplayer2/source/dash/b;->n:Ljava/util/IdentityHashMap;

    move-object/from16 v5, v31

    invoke-virtual {v0, v15, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object v15

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static k(Lcom/google/android/exoplayer2/drm/u;Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .locals 10

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/b;->p(Ljava/util/List;)[[I

    move-result-object v2

    array-length v3, v2

    new-array v4, v3, [Z

    new-array v5, v3, [[Lcom/google/android/exoplayer2/o1;

    invoke-static {v3, p1, v2, v4, v5}, Lcom/google/android/exoplayer2/source/dash/b;->t(ILjava/util/List;[[I[Z[[Lcom/google/android/exoplayer2/o1;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v8, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v9, v0, [Lcom/google/android/exoplayer2/source/dash/b$a;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v8

    move-object v7, v9

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/b;->i(Lcom/google/android/exoplayer2/drm/u;Ljava/util/List;[[II[Z[[Lcom/google/android/exoplayer2/o1;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/b$a;)I

    move-result p0

    invoke-static {p2, v8, v9, p0}, Lcom/google/android/exoplayer2/source/dash/b;->f(Ljava/util/List;[Lcom/google/android/exoplayer2/source/TrackGroup;[Lcom/google/android/exoplayer2/source/dash/b$a;I)V

    new-instance p0, Lt9/x;

    invoke-direct {p0, v8}, Lt9/x;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    invoke-static {p0, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static l(Ljava/util/List;)Lx9/e;
    .locals 1

    const-string v0, "urn:mpeg:dash:adaptation-set-switching:2016"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/dash/b;->m(Ljava/util/List;Ljava/lang/String;)Lx9/e;

    move-result-object p0

    return-object p0
.end method

.method private static m(Ljava/util/List;Ljava/lang/String;)Lx9/e;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx9/e;

    iget-object v2, v1, Lx9/e;->a:Ljava/lang/String;

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

.method private static n(Ljava/util/List;)Lx9/e;
    .locals 1

    const-string v0, "http://dashif.org/guidelines/trickmode"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/dash/b;->m(Ljava/util/List;Ljava/lang/String;)Lx9/e;

    move-result-object p0

    return-object p0
.end method

.method private static o(Ljava/util/List;[I)[Lcom/google/android/exoplayer2/o1;
    .locals 10

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9/a;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9/a;

    iget-object v3, v3, Lx9/a;->d:Ljava/util/List;

    move v5, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx9/e;

    iget-object v7, v6, Lx9/e;->a:Ljava/lang/String;

    const-string v8, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v8, 0x12

    if-eqz v7, :cond_0

    new-instance p0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string p1, "application/cea-608"

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    iget p1, v4, Lx9/a;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":cea608"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    sget-object p1, Lcom/google/android/exoplayer2/source/dash/b;->y:Ljava/util/regex/Pattern;

    invoke-static {v6, p1, p0}, Lcom/google/android/exoplayer2/source/dash/b;->w(Lx9/e;Ljava/util/regex/Pattern;Lcom/google/android/exoplayer2/o1;)[Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v7, "urn:scte:dash:cc:cea-708:2015"

    iget-object v9, v6, Lx9/e;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance p0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    const-string p1, "application/cea-708"

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    iget p1, v4, Lx9/a;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":cea708"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    sget-object p1, Lcom/google/android/exoplayer2/source/dash/b;->z:Ljava/util/regex/Pattern;

    invoke-static {v6, p1, p0}, Lcom/google/android/exoplayer2/source/dash/b;->w(Lx9/e;Ljava/util/regex/Pattern;Lcom/google/android/exoplayer2/o1;)[Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    new-array p0, v1, [Lcom/google/android/exoplayer2/o1;

    return-object p0
.end method

.method private static p(Ljava/util/List;)[[I
    .locals 12

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

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

    check-cast v6, Lx9/a;

    iget v6, v6, Lx9/a;->a:I

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

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

    check-cast v6, Lx9/a;

    iget-object v7, v6, Lx9/a;->e:Ljava/util/List;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/dash/b;->n(Ljava/util/List;)Lx9/e;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, v6, Lx9/a;->f:Ljava/util/List;

    invoke-static {v7}, Lcom/google/android/exoplayer2/source/dash/b;->n(Ljava/util/List;)Lx9/e;

    move-result-object v7

    :cond_1
    const/4 v8, -0x1

    if-eqz v7, :cond_2

    iget-object v7, v7, Lx9/e;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    if-ne v7, v5, :cond_4

    iget-object v6, v6, Lx9/a;->f:Ljava/util/List;

    invoke-static {v6}, Lcom/google/android/exoplayer2/source/dash/b;->l(Ljava/util/List;)Lx9/e;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v6, Lx9/e;->b:Ljava/lang/String;

    const-string v9, ","

    invoke-static {v6, v9}, Lcom/google/android/exoplayer2/util/p0;->S0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    move v10, v4

    :goto_3
    if-ge v10, v9, :cond_4

    aget-object v11, v6, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v11, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    if-eq v11, v8, :cond_3

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

    goto :goto_1

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

.method private q(I[I)I
    .locals 4

    aget p1, p2, p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object p1, v1, p1

    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/b$a;->e:I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget v2, p2, v1

    if-ne v2, p1, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/b;->k:[Lcom/google/android/exoplayer2/source/dash/b$a;

    aget-object v2, v3, v2

    iget v2, v2, Lcom/google/android/exoplayer2/source/dash/b$a;->c:I

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private r([Lcom/google/android/exoplayer2/trackselection/h;)[I
    .locals 4

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/b;->j:Lt9/x;

    invoke-interface {v2}, Lla/m;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v2

    invoke-virtual {v3, v2}, Lt9/x;->c(Lcom/google/android/exoplayer2/source/TrackGroup;)I

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

.method private static s(Ljava/util/List;[I)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx9/a;

    iget-object v3, v3, Lx9/a;->c:Ljava/util/List;

    move v4, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx9/j;

    iget-object v5, v5, Lx9/j;->e:Ljava/util/List;

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

.method private static t(ILjava/util/List;[[I[Z[[Lcom/google/android/exoplayer2/o1;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/b;->s(Ljava/util/List;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aput-boolean v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/source/dash/b;->o(Ljava/util/List;[I)[Lcom/google/android/exoplayer2/o1;

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

.method private static u(I)[Lv9/i;
    .locals 0

    new-array p0, p0, [Lv9/i;

    return-object p0
.end method

.method private static w(Lx9/e;Ljava/util/regex/Pattern;Lcom/google/android/exoplayer2/o1;)[Lcom/google/android/exoplayer2/o1;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lx9/e;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    new-array p0, v1, [Lcom/google/android/exoplayer2/o1;

    aput-object p2, p0, v0

    return-object p0

    :cond_0
    const-string v2, ";"

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/p0;->S0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    new-array v2, v2, [Lcom/google/android/exoplayer2/o1;

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

    new-array p0, v1, [Lcom/google/android/exoplayer2/o1;

    aput-object p2, p0, v0

    return-object p0

    :cond_1
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/o1;->b()Lcom/google/android/exoplayer2/o1$b;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0xc

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/o1$b;->F(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private y([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;)V
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

    instance-of v2, v1, Lv9/i;

    if-eqz v2, :cond_1

    check-cast v1, Lv9/i;

    invoke-virtual {v1, p0}, Lv9/i;->C(Lv9/i$b;)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lv9/i$a;

    if-eqz v2, :cond_2

    check-cast v1, Lv9/i$a;

    invoke-virtual {v1}, Lv9/i$a;->b()V

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

.method private z([Lcom/google/android/exoplayer2/trackselection/h;[Lt9/s;[I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p2, v1

    instance-of v3, v2, Lt9/g;

    if-nez v3, :cond_0

    instance-of v2, v2, Lv9/i$a;

    if-eqz v2, :cond_4

    :cond_0
    invoke-direct {p0, v1, p3}, Lcom/google/android/exoplayer2/source/dash/b;->q(I[I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    aget-object v2, p2, v1

    instance-of v2, v2, Lt9/g;

    goto :goto_1

    :cond_1
    aget-object v3, p2, v1

    instance-of v4, v3, Lv9/i$a;

    if-eqz v4, :cond_2

    check-cast v3, Lv9/i$a;

    iget-object v3, v3, Lv9/i$a;->a:Lv9/i;

    aget-object v2, p2, v2

    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    aget-object v2, p2, v1

    instance-of v3, v2, Lv9/i$a;

    if-eqz v3, :cond_3

    check-cast v2, Lv9/i$a;

    invoke-virtual {v2}, Lv9/i$a;->b()V

    :cond_3
    const/4 v2, 0x0

    aput-object v2, p2, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public B(Lx9/c;I)V
    .locals 9

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->v:Lx9/c;

    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/b;->w:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->m:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/e;->q(Lx9/c;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lv9/i;->q()Lv9/j;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/dash/a;

    invoke-interface {v4, p1, p2}, Lcom/google/android/exoplayer2/source/dash/a;->e(Lx9/c;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->r:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    :cond_1
    invoke-virtual {p1, p2}, Lx9/c;->c(I)Lx9/g;

    move-result-object v0

    iget-object v0, v0, Lx9/g;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->x:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->t:[Lcom/google/android/exoplayer2/source/dash/d;

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/b;->x:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx9/f;

    invoke-virtual {v6}, Lx9/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/d;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lx9/c;->d()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    iget-boolean v8, p1, Lx9/c;->d:Z

    if-eqz v8, :cond_3

    if-ne p2, v5, :cond_3

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer2/source/dash/d;->d(Lx9/f;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public a(JLcom/google/android/exoplayer2/c3;)J
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lv9/i;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3, p1, p2, p3}, Lv9/i;->a(JLcom/google/android/exoplayer2/c3;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public b([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;[ZJ)J
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/b;->r([Lcom/google/android/exoplayer2/trackselection/h;)[I

    move-result-object v6

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/dash/b;->y([Lcom/google/android/exoplayer2/trackselection/h;[Z[Lt9/s;)V

    invoke-direct {p0, p1, p3, v6}, Lcom/google/android/exoplayer2/source/dash/b;->z([Lcom/google/android/exoplayer2/trackselection/h;[Lt9/s;[I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/b;->A([Lcom/google/android/exoplayer2/trackselection/h;[Lt9/s;[ZJ[I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_2

    aget-object v1, p3, v0

    instance-of v2, v1, Lv9/i;

    if-eqz v2, :cond_0

    check-cast v1, Lv9/i;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/google/android/exoplayer2/source/dash/d;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/exoplayer2/source/dash/d;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/b;->u(I)[Lv9/i;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/dash/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->t:[Lcom/google/android/exoplayer2/source/dash/d;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->l:Lt9/d;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    invoke-interface {p1, p2}, Lt9/d;->a([Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/google/android/exoplayer2/source/b0;

    return-wide p5
.end method

.method public declared-synchronized c(Lv9/i;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->n:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/e$c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/e$c;->n()V
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

.method public continueLoading(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2, p3}, Lv9/i;->discardBuffer(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->r:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    check-cast p1, Lv9/i;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/b;->v(Lv9/i;)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Lt9/x;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->j:Lt9/x;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/b0;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->h:Lcom/google/android/exoplayer2/upstream/a0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/a0;->maybeThrowError()V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->u:Lcom/google/android/exoplayer2/source/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/b0;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, p1, p2}, Lv9/i;->E(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->t:[Lcom/google/android/exoplayer2/source/dash/d;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/dash/d;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method public v(Lv9/i;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/b;->r:Lcom/google/android/exoplayer2/source/n$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    return-void
.end method

.method public x()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->m:Lcom/google/android/exoplayer2/source/dash/e;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/e;->o()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->s:[Lv9/i;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Lv9/i;->C(Lv9/i$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/b;->r:Lcom/google/android/exoplayer2/source/n$a;

    return-void
.end method
