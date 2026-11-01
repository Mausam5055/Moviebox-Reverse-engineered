.class public final Landroidx/compose/ui/platform/r0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/r0;->a:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private final a()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/r0;->a:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    return v0
.end method

.method private final b()F
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->e()F

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/a;->c(F)F

    move-result v0

    return v0
.end method

.method private final c()B
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/r0;->a:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    return v0
.end method

.method private final e()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/r0;->a:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    return v0
.end method

.method private final i()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/r0;->a:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method private final j()Landroidx/compose/ui/graphics/z4;
    .locals 8

    new-instance v7, Landroidx/compose/ui/graphics/z4;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/r0;->d()J

    move-result-wide v1

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->e()F

    move-result v0

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->e()F

    move-result v3

    invoke-static {v0, v3}, Ly/h;->a(FF)J

    move-result-wide v3

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->e()F

    move-result v5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/z4;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method private final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/r0;->a:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final m()Landroidx/compose/ui/text/style/i;
    .locals 6

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->i()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/style/i;->b:Landroidx/compose/ui/text/style/i$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->b()Landroidx/compose/ui/text/style/i;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/i;->e()I

    move-result v2

    and-int/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->d()Landroidx/compose/ui/text/style/i;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/text/style/i;->e()I

    move-result v5

    and-int/2addr v0, v5

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->b()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->d()Landroidx/compose/ui/text/style/i;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Landroidx/compose/ui/text/style/i;

    aput-object v0, v5, v3

    aput-object v2, v5, v4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/text/style/i$a;->a(Ljava/util/List;)Landroidx/compose/ui/text/style/i;

    move-result-object v0

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->b()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->d()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/i$a;->c()Landroidx/compose/ui/text/style/i;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private final n()Landroidx/compose/ui/text/style/m;
    .locals 3

    new-instance v0, Landroidx/compose/ui/text/style/m;

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->e()F

    move-result v1

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->e()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/text/style/m;-><init>(FF)V

    return-object v0
.end method

.method private final p()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/r0;->a:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->b(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final d()J
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/u1;->h(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->c()B

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/text/font/n;->b:Landroidx/compose/ui/text/font/n$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n$a;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/compose/ui/text/font/n;->b:Landroidx/compose/ui/text/font/n$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n$a;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/ui/text/font/n;->b:Landroidx/compose/ui/text/font/n$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/n$a;->b()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final g()I
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->c()B

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget-object v0, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->c()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->d()I

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v0, Landroidx/compose/ui/text/font/o;->b:Landroidx/compose/ui/text/font/o$a;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/o$a;->b()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final h()Landroidx/compose/ui/text/font/p;
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/font/p;

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->i()I

    move-result v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/p;-><init>(I)V

    return-object v0
.end method

.method public final k()Landroidx/compose/ui/text/x;
    .locals 22

    new-instance v15, Landroidx/compose/ui/platform/g1;

    move-object v0, v15

    const/16 v19, 0x3fff

    const/16 v20, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v21, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v20}, Landroidx/compose/ui/platform/g1;-><init>(JJLandroidx/compose/ui/text/font/p;Landroidx/compose/ui/text/font/n;Landroidx/compose/ui/text/font/o;Landroidx/compose/ui/text/font/h;Ljava/lang/String;JLandroidx/compose/ui/text/style/a;Landroidx/compose/ui/text/style/m;Ln0/i;JLandroidx/compose/ui/text/style/i;Landroidx/compose/ui/graphics/z4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/platform/r0;->a:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->c()B

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v2, :cond_1

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->d()J

    move-result-wide v1

    move-object/from16 v4, v21

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/g1;->c(J)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, v21

    goto/16 :goto_2

    :cond_1
    move-object/from16 v4, v21

    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v1, v5, :cond_3

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->o()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/g1;->e(J)V

    :cond_2
    :goto_1
    move-object/from16 v21, v4

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    const/4 v7, 0x4

    if-ne v1, v5, :cond_4

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v7, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->h()Landroidx/compose/ui/text/font/p;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/g1;->h(Landroidx/compose/ui/text/font/p;)V

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->f()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/n;->c(I)Landroidx/compose/ui/text/font/n;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/g1;->f(Landroidx/compose/ui/text/font/n;)V

    goto :goto_1

    :cond_5
    if-ne v1, v6, :cond_6

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->g()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/font/o;->e(I)Landroidx/compose/ui/text/font/o;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/g1;->g(Landroidx/compose/ui/text/font/o;)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/g1;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->o()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/g1;->i(J)V

    goto :goto_1

    :cond_8
    if-ne v1, v3, :cond_9

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v7, :cond_d

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->b()F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/a;->b(F)Landroidx/compose/ui/text/style/a;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/g1;->b(Landroidx/compose/ui/text/style/a;)V

    goto :goto_1

    :cond_9
    const/16 v2, 0x9

    if-ne v1, v2, :cond_a

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v3, :cond_d

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->n()Landroidx/compose/ui/text/style/m;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/g1;->l(Landroidx/compose/ui/text/style/m;)V

    goto :goto_1

    :cond_a
    const/16 v2, 0xa

    if-ne v1, v2, :cond_b

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->d()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/platform/g1;->a(J)V

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0xb

    if-ne v1, v2, :cond_c

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    if-lt v1, v7, :cond_d

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->m()Landroidx/compose/ui/text/style/i;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/g1;->k(Landroidx/compose/ui/text/style/i;)V

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->a()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_d

    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/platform/r0;->j()Landroidx/compose/ui/graphics/z4;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroidx/compose/ui/platform/g1;->j(Landroidx/compose/ui/graphics/z4;)V

    goto/16 :goto_1

    :cond_d
    :goto_2
    invoke-virtual {v4}, Landroidx/compose/ui/platform/g1;->m()Landroidx/compose/ui/text/x;

    move-result-object v1

    return-object v1
.end method

.method public final o()J
    .locals 4

    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->c()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lo0/y;->b:Lo0/y$a;

    invoke-virtual {v0}, Lo0/y$a;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lo0/y;->b:Lo0/y$a;

    invoke-virtual {v0}, Lo0/y$a;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    sget-object v0, Lo0/y;->b:Lo0/y$a;

    invoke-virtual {v0}, Lo0/y$a;->c()J

    move-result-wide v0

    :goto_0
    sget-object v2, Lo0/y;->b:Lo0/y$a;

    invoke-virtual {v2}, Lo0/y$a;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lo0/y;->g(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lo0/w;->b:Lo0/w$a;

    invoke-virtual {v0}, Lo0/w$a;->a()J

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/platform/r0;->e()F

    move-result v2

    invoke-static {v2, v0, v1}, Lo0/x;->a(FJ)J

    move-result-wide v0

    return-wide v0
.end method
