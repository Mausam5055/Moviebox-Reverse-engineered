.class abstract Lo9/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/b$f;,
        Lo9/b$e;,
        Lo9/b$c;,
        Lo9/b$b;,
        Lo9/b$d;,
        Lo9/b$g;,
        Lo9/b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->n0(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo9/b;->a:[B

    return-void
.end method

.method public static A(Lo9/a$a;Lg9/x;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/f;)Ljava/util/List;
    .locals 11

    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lo9/a$a;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, v0, Lo9/a$a;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo9/a$a;

    iget v4, v3, Lo9/a;->a:I

    const v5, 0x7472616b

    if-eq v4, v5, :cond_0

    move-object v6, p1

    move-object/from16 v5, p7

    goto :goto_1

    :cond_0
    const v4, 0x6d766864

    invoke-virtual {p0, v4}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lo9/a$b;

    move-object v4, v3

    move-wide v6, p2

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lo9/b;->z(Lo9/a$a;Lo9/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lo9/o;

    move-result-object v4

    move-object/from16 v5, p7

    invoke-interface {v5, v4}, Lcom/google/common/base/f;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo9/o;

    if-nez v4, :cond_1

    move-object v6, p1

    goto :goto_1

    :cond_1
    const v6, 0x6d646961

    invoke-virtual {v3, v6}, Lo9/a$a;->f(I)Lo9/a$a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo9/a$a;

    const v6, 0x6d696e66

    invoke-virtual {v3, v6}, Lo9/a$a;->f(I)Lo9/a$a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo9/a$a;

    const v6, 0x7374626c

    invoke-virtual {v3, v6}, Lo9/a$a;->f(I)Lo9/a$a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo9/a$a;

    move-object v6, p1

    invoke-static {v4, v3, p1}, Lo9/b;->v(Lo9/o;Lo9/a$a;Lg9/x;)Lo9/r;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static B(Lo9/a$b;)Landroid/util/Pair;
    .locals 7

    iget-object p0, p0, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v3

    if-lt v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v5

    const v6, 0x6d657461

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    add-int v1, v3, v4

    invoke-static {p0, v1}, Lo9/b;->C(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    goto :goto_1

    :cond_0
    const v6, 0x736d7461

    if-ne v5, v6, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    add-int v2, v3, v4

    invoke-static {p0, v2}, Lo9/b;->u(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static C(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-static {p0}, Lo9/b;->e(Lcom/google/android/exoplayer2/util/d0;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lo9/b;->l(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static D(Lcom/google/android/exoplayer2/util/d0;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lo9/b$d;I)V
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v6

    const/16 v7, 0x32

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    invoke-static {v0, v1, v2}, Lo9/b;->s(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lo9/p;

    iget-object v11, v11, Lo9/p;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    :goto_0
    iget-object v11, v4, Lo9/b$d;->a:[Lo9/p;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lo9/p;

    aput-object v8, v11, p8

    :cond_1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    :cond_2
    const v8, 0x6d317620

    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_2
    sub-int v9, v7, v1

    if-ge v9, v2, :cond_2a

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v9

    move-object/from16 p8, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v23

    move-object/from16 v24, v3

    sub-int v3, v23, v1

    if-ne v3, v2, :cond_6

    :goto_3
    move/from16 v33, v6

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const/4 v2, 0x0

    goto/16 :goto_17

    :cond_5
    move-object/from16 v24, v3

    :cond_6
    if-lez v11, :cond_7

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    const-string v1, "childAtomSize must be positive"

    invoke-static {v3, v1}, Lg9/o;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    const v3, 0x61766343

    if-ne v1, v3, :cond_a

    const/4 v1, 0x0

    if-nez v8, :cond_8

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3, v1}, Lg9/o;->a(ZLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/a;->b(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/video/a;

    move-result-object v1

    iget-object v15, v1, Lcom/google/android/exoplayer2/video/a;->a:Ljava/util/List;

    iget v3, v1, Lcom/google/android/exoplayer2/video/a;->b:I

    iput v3, v4, Lo9/b$d;->c:I

    if-nez v22, :cond_9

    iget v14, v1, Lcom/google/android/exoplayer2/video/a;->e:F

    :cond_9
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/a;->f:Ljava/lang/String;

    const-string v1, "video/avc"

    :goto_6
    move-object v8, v1

    :goto_7
    move/from16 v33, v6

    move/from16 v25, v10

    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_a
    const v3, 0x68766343

    if-ne v1, v3, :cond_d

    const/4 v1, 0x0

    if-nez v8, :cond_b

    const/4 v3, 0x1

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    invoke-static {v3, v1}, Lg9/o;->a(ZLjava/lang/String;)V

    add-int/lit8 v9, v9, 0x8

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/f;->a(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/video/f;

    move-result-object v1

    iget-object v15, v1, Lcom/google/android/exoplayer2/video/f;->a:Ljava/util/List;

    iget v3, v1, Lcom/google/android/exoplayer2/video/f;->b:I

    iput v3, v4, Lo9/b$d;->c:I

    if-nez v22, :cond_c

    iget v14, v1, Lcom/google/android/exoplayer2/video/f;->e:F

    :cond_c
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/f;->f:Ljava/lang/String;

    const-string v1, "video/hevc"

    goto :goto_6

    :cond_d
    const v3, 0x64766343

    if-eq v1, v3, :cond_e

    const v3, 0x64767643

    if-ne v1, v3, :cond_f

    :cond_e
    move/from16 v33, v6

    move/from16 v25, v10

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_f
    const v3, 0x76706343

    if-ne v1, v3, :cond_12

    const/4 v1, 0x0

    if-nez v8, :cond_10

    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_a
    invoke-static {v3, v1}, Lg9/o;->a(ZLjava/lang/String;)V

    const v1, 0x76703038

    if-ne v10, v1, :cond_11

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_6

    :cond_11
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_6

    :cond_12
    const v3, 0x61763143

    if-ne v1, v3, :cond_14

    const/4 v1, 0x0

    if-nez v8, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    invoke-static {v3, v1}, Lg9/o;->a(ZLjava/lang/String;)V

    const-string v1, "video/av01"

    goto :goto_6

    :cond_14
    const v3, 0x636c6c69

    if-ne v1, v3, :cond_16

    if-nez v20, :cond_15

    invoke-static {}, Lo9/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_15
    move-object/from16 v1, v20

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v1

    goto/16 :goto_7

    :cond_16
    const v3, 0x6d646376

    if-ne v1, v3, :cond_18

    if-nez v20, :cond_17

    invoke-static {}, Lo9/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v20

    :cond_17
    move-object/from16 v1, v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v2

    move/from16 v25, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v4

    move-object/from16 v26, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v15

    move-object/from16 v27, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v12

    move/from16 v28, v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v31

    move/from16 v33, v6

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    div-long v9, v29, v2

    long-to-int v4, v9

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    div-long v2, v31, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v20, v1

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    move/from16 v14, v28

    goto/16 :goto_8

    :cond_18
    move/from16 v33, v6

    move/from16 v25, v10

    move-object/from16 v27, v12

    move/from16 v28, v14

    move-object/from16 v26, v15

    const v2, 0x64323633

    if-ne v1, v2, :cond_1b

    const/4 v2, 0x0

    if-nez v8, :cond_19

    const/4 v3, 0x1

    goto :goto_c

    :cond_19
    const/4 v3, 0x0

    :goto_c
    invoke-static {v3, v2}, Lg9/o;->a(ZLjava/lang/String;)V

    move-object/from16 v8, p8

    :cond_1a
    :goto_d
    move-object/from16 v15, v26

    :goto_e
    move-object/from16 v12, v27

    :goto_f
    move/from16 v14, v28

    goto/16 :goto_16

    :cond_1b
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_1e

    if-nez v8, :cond_1c

    const/4 v3, 0x1

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    :goto_10
    invoke-static {v3, v2}, Lg9/o;->a(ZLjava/lang/String;)V

    invoke-static {v0, v9}, Lo9/b;->i(Lcom/google/android/exoplayer2/util/d0;I)Lo9/b$b;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lo9/b$b;->a(Lo9/b$b;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v21 .. v21}, Lo9/b$b;->b(Lo9/b$b;)[B

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_11

    :cond_1d
    move-object/from16 v15, v26

    :goto_11
    move-object v8, v1

    goto :goto_e

    :cond_1e
    const v3, 0x70617370

    if-ne v1, v3, :cond_1f

    invoke-static {v0, v9}, Lo9/b;->q(Lcom/google/android/exoplayer2/util/d0;I)F

    move-result v1

    move v14, v1

    move-object/from16 v15, v26

    move-object/from16 v12, v27

    const/16 v22, 0x1

    goto/16 :goto_16

    :cond_1f
    const v3, 0x73763364

    if-ne v1, v3, :cond_20

    invoke-static {v0, v9, v11}, Lo9/b;->r(Lcom/google/android/exoplayer2/util/d0;II)[B

    move-result-object v12

    move-object/from16 v15, v26

    goto :goto_f

    :cond_20
    const v3, 0x73743364

    const/4 v4, 0x2

    if-ne v1, v3, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    if-nez v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v6, 0x1

    if-eq v1, v6, :cond_23

    if-eq v1, v4, :cond_22

    if-eq v1, v3, :cond_21

    goto :goto_d

    :cond_21
    move/from16 v16, v3

    goto :goto_d

    :cond_22
    move/from16 v16, v4

    goto :goto_d

    :cond_23
    move/from16 v16, v6

    goto :goto_d

    :cond_24
    const/16 v16, 0x0

    goto :goto_d

    :cond_25
    const/4 v6, 0x1

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    const v3, 0x6e636c78

    if-eq v1, v3, :cond_27

    const v3, 0x6e636c63

    if-ne v1, v3, :cond_26

    goto :goto_12

    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported color type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lo9/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AtomParsers"

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_27
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v3

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    const/16 v9, 0x13

    if-ne v11, v9, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_28

    move v9, v6

    goto :goto_13

    :cond_28
    const/4 v9, 0x0

    :goto_13
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/c;->b(I)I

    move-result v17

    if-eqz v9, :cond_29

    move/from16 v18, v6

    goto :goto_14

    :cond_29
    move/from16 v18, v4

    :goto_14
    invoke-static {v3}, Lcom/google/android/exoplayer2/video/c;->c(I)I

    move-result v19

    goto/16 :goto_d

    :goto_15
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/d;->a(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/video/d;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v13, v1, Lcom/google/android/exoplayer2/video/d;->c:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    goto/16 :goto_d

    :goto_16
    add-int/2addr v7, v11

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move-object/from16 v11, p8

    move-object/from16 v3, v24

    move/from16 v10, v25

    move/from16 v6, v33

    goto/16 :goto_2

    :cond_2a
    move-object/from16 v24, v3

    goto/16 :goto_3

    :goto_17
    if-nez v8, :cond_2b

    return-void

    :cond_2b
    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->R(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/o1$b;->j0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->Q(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move/from16 v14, v28

    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/o1$b;->a0(F)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->d0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move-object/from16 v9, v27

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/o1$b;->b0([B)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move/from16 v12, v16

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/o1$b;->h0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move-object/from16 v9, v26

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move-object/from16 v3, v24

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/o1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move/from16 v12, v17

    const/4 v1, -0x1

    move/from16 v3, v18

    move/from16 v4, v19

    if-ne v12, v1, :cond_2c

    if-ne v3, v1, :cond_2c

    if-ne v4, v1, :cond_2c

    if-eqz v20, :cond_2e

    :cond_2c
    new-instance v1, Lcom/google/android/exoplayer2/video/c;

    if-eqz v20, :cond_2d

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_18

    :cond_2d
    move-object v9, v2

    :goto_18
    invoke-direct {v1, v12, v3, v4, v9}, Lcom/google/android/exoplayer2/video/c;-><init>(III[B)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->J(Lcom/google/android/exoplayer2/video/c;)Lcom/google/android/exoplayer2/o1$b;

    :cond_2e
    if-eqz v21, :cond_2f

    invoke-static/range {v21 .. v21}, Lo9/b$b;->d(Lo9/b$b;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->G(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-static/range {v21 .. v21}, Lo9/b$b;->c(Lo9/b$b;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->Z(I)Lcom/google/android/exoplayer2/o1$b;

    :cond_2f
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    move-object/from16 v1, p7

    iput-object v0, v1, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    return-void
.end method

.method private static a()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static b([JJJJ)Z
    .locals 7

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/p0;->q(III)I

    move-result v4

    array-length v5, p0

    sub-int/2addr v5, v2

    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/p0;->q(III)I

    move-result v0

    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long p3, p3, v4

    if-gez p3, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/d0;III)I
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lg9/o;->a(ZLjava/lang/String;)V

    :goto_1
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v3

    if-lez v3, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    const-string v5, "childAtomSize must be positive"

    invoke-static {v4, v5}, Lg9/o;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v4

    if-ne v4, p1, :cond_2

    return v0

    :cond_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static d(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static e(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    return-void
.end method

.method private static f(Lcom/google/android/exoplayer2/util/d0;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lo9/b$d;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v9

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x10

    if-eqz v9, :cond_3

    if-ne v9, v12, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v11, :cond_2

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->l()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v7, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v9

    const/16 v13, 0x14

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result v14

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->E()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v15

    sub-int/2addr v15, v10

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v15

    if-ne v9, v12, :cond_4

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    :cond_4
    move v9, v14

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v13

    const v14, 0x656e6361

    move/from16 v11, p1

    if-ne v11, v14, :cond_7

    invoke-static {v0, v1, v2}, Lo9/b;->s(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_6

    iget-object v11, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    iget-object v12, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lo9/p;

    iget-object v12, v12, Lo9/p;->b:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v5

    :goto_3
    iget-object v12, v6, Lo9/b$d;->a:[Lo9/p;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lo9/p;

    aput-object v14, v12, p9

    :cond_6
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    :cond_7
    const v12, 0x61632d33

    const v14, 0x616c6163

    if-ne v11, v12, :cond_8

    const-string v11, "audio/ac3"

    :goto_4
    move-object/from16 v19, v11

    const/4 v11, -0x1

    goto/16 :goto_8

    :cond_8
    const v12, 0x65632d33

    if-ne v11, v12, :cond_9

    const-string v11, "audio/eac3"

    goto :goto_4

    :cond_9
    const v12, 0x61632d34

    if-ne v11, v12, :cond_a

    const-string v11, "audio/ac4"

    goto :goto_4

    :cond_a
    const v12, 0x64747363

    if-ne v11, v12, :cond_b

    const-string v11, "audio/vnd.dts"

    goto :goto_4

    :cond_b
    const v12, 0x64747368

    if-eq v11, v12, :cond_1e

    const v12, 0x6474736c

    if-ne v11, v12, :cond_c

    goto/16 :goto_7

    :cond_c
    const v12, 0x64747365

    if-ne v11, v12, :cond_d

    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_4

    :cond_d
    const v12, 0x64747378

    if-ne v11, v12, :cond_e

    const-string v11, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_4

    :cond_e
    const v12, 0x73616d72

    if-ne v11, v12, :cond_f

    const-string v11, "audio/3gpp"

    goto :goto_4

    :cond_f
    const v12, 0x73617762

    if-ne v11, v12, :cond_10

    const-string v11, "audio/amr-wb"

    goto :goto_4

    :cond_10
    const v12, 0x6c70636d

    const-string v19, "audio/raw"

    if-eq v11, v12, :cond_1d

    const v12, 0x736f7774

    if-ne v11, v12, :cond_11

    goto :goto_6

    :cond_11
    const v12, 0x74776f73

    if-ne v11, v12, :cond_12

    const/high16 v11, 0x10000000

    goto :goto_8

    :cond_12
    const v12, 0x2e6d7032

    if-eq v11, v12, :cond_1c

    const v12, 0x2e6d7033

    if-ne v11, v12, :cond_13

    goto :goto_5

    :cond_13
    const v12, 0x6d686131

    if-ne v11, v12, :cond_14

    const-string v11, "audio/mha1"

    goto :goto_4

    :cond_14
    const v12, 0x6d686d31

    if-ne v11, v12, :cond_15

    const-string v11, "audio/mhm1"

    goto :goto_4

    :cond_15
    if-ne v11, v14, :cond_16

    const-string v11, "audio/alac"

    goto :goto_4

    :cond_16
    const v12, 0x616c6177

    if-ne v11, v12, :cond_17

    const-string v11, "audio/g711-alaw"

    goto/16 :goto_4

    :cond_17
    const v12, 0x756c6177

    if-ne v11, v12, :cond_18

    const-string v11, "audio/g711-mlaw"

    goto/16 :goto_4

    :cond_18
    const v12, 0x4f707573

    if-ne v11, v12, :cond_19

    const-string v11, "audio/opus"

    goto/16 :goto_4

    :cond_19
    const v12, 0x664c6143

    if-ne v11, v12, :cond_1a

    const-string v11, "audio/flac"

    goto/16 :goto_4

    :cond_1a
    const v12, 0x6d6c7061

    if-ne v11, v12, :cond_1b

    const-string v11, "audio/true-hd"

    goto/16 :goto_4

    :cond_1b
    const/4 v11, -0x1

    const/16 v19, 0x0

    goto :goto_8

    :cond_1c
    :goto_5
    const-string v11, "audio/mpeg"

    goto/16 :goto_4

    :cond_1d
    :goto_6
    const/4 v11, 0x2

    goto :goto_8

    :cond_1e
    :goto_7
    const-string v11, "audio/vnd.dts.hd"

    goto/16 :goto_4

    :goto_8
    move-object/from16 v12, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_9
    sub-int v10, v13, v1

    if-ge v10, v2, :cond_2f

    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v10

    if-lez v10, :cond_1f

    const/4 v14, 0x1

    goto :goto_a

    :cond_1f
    const/4 v14, 0x0

    :goto_a
    const-string v8, "childAtomSize must be positive"

    invoke-static {v14, v8}, Lg9/o;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v8

    const v14, 0x6d686143

    if-ne v8, v14, :cond_20

    add-int/lit8 v8, v10, -0xd

    new-array v14, v8, [B

    add-int/lit8 v1, v13, 0xd

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1, v8}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    :goto_b
    const/4 v8, -0x1

    :goto_c
    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2

    :goto_d
    const v18, 0x616c6163

    goto/16 :goto_13

    :cond_20
    const v1, 0x65736473

    if-eq v8, v1, :cond_21

    if-eqz p6, :cond_22

    const v14, 0x77617665

    if-ne v8, v14, :cond_22

    :cond_21
    const/4 v2, 0x4

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2

    const v18, 0x616c6163

    goto/16 :goto_10

    :cond_22
    const v1, 0x64616333

    if-ne v8, v1, :cond_23

    add-int/lit8 v1, v13, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/b;->c(Lcom/google/android/exoplayer2/util/d0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    iput-object v1, v6, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    :goto_e
    const/4 v2, 0x4

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x2

    goto/16 :goto_f

    :cond_23
    const v1, 0x64656333

    if-ne v8, v1, :cond_24

    add-int/lit8 v1, v13, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/b;->g(Lcom/google/android/exoplayer2/util/d0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    iput-object v1, v6, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    goto :goto_e

    :cond_24
    const v1, 0x64616334

    if-ne v8, v1, :cond_25

    add-int/lit8 v1, v13, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/c;->b(Lcom/google/android/exoplayer2/util/d0;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    iput-object v1, v6, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    goto :goto_e

    :cond_25
    const v1, 0x646d6c70

    if-ne v8, v1, :cond_27

    if-lez v15, :cond_26

    move v7, v15

    const/4 v8, -0x1

    const/4 v9, 0x2

    goto :goto_c

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_27
    const/4 v14, 0x0

    const v1, 0x64647473

    if-ne v8, v1, :cond_28

    new-instance v1, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/o1$b;->R(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/o1$b;->f0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/o1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    iput-object v1, v6, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    goto :goto_e

    :cond_28
    const v1, 0x644f7073

    if-ne v8, v1, :cond_29

    add-int/lit8 v1, v10, -0x8

    sget-object v8, Lo9/b;->a:[B

    array-length v14, v8

    add-int/2addr v14, v1

    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    add-int/lit8 v2, v13, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    array-length v2, v8

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    invoke-static {v14}, Lcom/google/android/exoplayer2/audio/c0;->a([B)Ljava/util/List;

    move-result-object v21

    goto/16 :goto_b

    :cond_29
    const v1, 0x64664c61

    if-ne v8, v1, :cond_2a

    add-int/lit8 v1, v10, -0xc

    add-int/lit8 v2, v10, -0x8

    new-array v2, v2, [B

    const/16 v8, 0x66

    const/4 v14, 0x0

    aput-byte v8, v2, v14

    const/16 v8, 0x4c

    const/4 v14, 0x1

    aput-byte v8, v2, v14

    const/16 v8, 0x61

    const/16 v17, 0x2

    aput-byte v8, v2, v17

    const/4 v8, 0x3

    const/16 v18, 0x43

    aput-byte v18, v2, v8

    add-int/lit8 v8, v13, 0xc

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/4 v8, 0x4

    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    const/4 v8, -0x1

    const/16 v16, 0x0

    goto/16 :goto_d

    :cond_2a
    const v1, 0x616c6163

    const/4 v2, 0x4

    const/4 v14, 0x1

    const/16 v17, 0x2

    if-ne v8, v1, :cond_2b

    add-int/lit8 v7, v10, -0xc

    new-array v8, v7, [B

    add-int/lit8 v9, v13, 0xc

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/f;->g([B)Landroid/util/Pair;

    move-result-object v7

    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move/from16 v16, v9

    const/4 v8, -0x1

    const v18, 0x616c6163

    move v9, v7

    move v7, v1

    goto :goto_13

    :cond_2b
    const/16 v16, 0x0

    :goto_f
    const/4 v8, -0x1

    goto/16 :goto_d

    :goto_10
    if-ne v8, v1, :cond_2c

    move v1, v13

    :goto_11
    const/4 v8, -0x1

    goto :goto_12

    :cond_2c
    invoke-static {v0, v1, v13, v10}, Lo9/b;->c(Lcom/google/android/exoplayer2/util/d0;III)I

    move-result v1

    goto :goto_11

    :goto_12
    if-eq v1, v8, :cond_2e

    invoke-static {v0, v1}, Lo9/b;->i(Lcom/google/android/exoplayer2/util/d0;I)Lo9/b$b;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lo9/b$b;->a(Lo9/b$b;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v19 .. v19}, Lo9/b$b;->b(Lo9/b$b;)[B

    move-result-object v1

    if-eqz v1, :cond_2e

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/a;->f([B)Lcom/google/android/exoplayer2/audio/a$b;

    move-result-object v2

    iget v7, v2, Lcom/google/android/exoplayer2/audio/a$b;->a:I

    iget v9, v2, Lcom/google/android/exoplayer2/audio/a$b;->b:I

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/a$b;->c:Ljava/lang/String;

    move-object/from16 v20, v2

    :cond_2d
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    :cond_2e
    :goto_13
    add-int/2addr v13, v10

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v14, v18

    goto/16 :goto_9

    :cond_2f
    iget-object v0, v6, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    if-nez v0, :cond_31

    if-eqz v12, :cond_31

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/o1$b;->R(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/o1$b;->H(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/o1$b;->f0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/o1$b;->Y(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/o1$b;->M(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    if-eqz v19, :cond_30

    invoke-static/range {v19 .. v19}, Lo9/b$b;->d(Lo9/b$b;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->G(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v1

    invoke-static/range {v19 .. v19}, Lo9/b$b;->c(Lo9/b$b;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->n(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/o1$b;->Z(I)Lcom/google/android/exoplayer2/o1$b;

    :cond_30
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    iput-object v0, v6, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    :cond_31
    return-void
.end method

.method static g(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v1

    move v7, v2

    move-object v4, v3

    move-object v6, v4

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    const v10, 0x7363686d

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->A(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v10, 0x73636869

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    move p2, p1

    goto :goto_3

    :cond_6
    move p2, v2

    :goto_3
    const-string v0, "frma atom is mandatory"

    invoke-static {p2, v0}, Lg9/o;->a(ZLjava/lang/String;)V

    if-eq v5, v1, :cond_7

    move p2, p1

    goto :goto_4

    :cond_7
    move p2, v2

    :goto_4
    const-string v0, "schi atom is mandatory"

    invoke-static {p2, v0}, Lg9/o;->a(ZLjava/lang/String;)V

    invoke-static {p0, v5, v7, v4}, Lo9/b;->t(Lcom/google/android/exoplayer2/util/d0;IILjava/lang/String;)Lo9/p;

    move-result-object p0

    if-eqz p0, :cond_8

    move v2, p1

    :cond_8
    const-string p1, "tenc atom is mandatory"

    invoke-static {v2, p1}, Lg9/o;->a(ZLjava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo9/p;

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lo9/a$a;)Landroid/util/Pair;
    .locals 8

    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v0

    invoke-static {v0}, Lo9/a;->c(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->I()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->w()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->z()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static i(Lcom/google/android/exoplayer2/util/d0;I)Lo9/b$b;
    .locals 12

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-static {p0}, Lo9/b;->j(Lcom/google/android/exoplayer2/util/d0;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-static {p0}, Lo9/b;->j(Lcom/google/android/exoplayer2/util/d0;)I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/w;->h(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-static {p0}, Lo9/b;->j(Lcom/google/android/exoplayer2/util/d0;)I

    move-result p1

    new-array v5, p1, [B

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    new-instance p0, Lo9/b$b;

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    const-wide/16 v8, -0x1

    if-lez p1, :cond_4

    move-wide v10, v3

    goto :goto_0

    :cond_4
    move-wide v10, v8

    :goto_0
    cmp-long p1, v0, v6

    if-lez p1, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v8

    :goto_1
    move-object v1, p0

    move-object v3, v5

    move-wide v4, v10

    invoke-direct/range {v1 .. v7}, Lo9/b$b;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    :cond_6
    :goto_2
    new-instance p0, Lo9/b$b;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lo9/b$b;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static j(Lcom/google/android/exoplayer2/util/d0;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static k(Lcom/google/android/exoplayer2/util/d0;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result p0

    return p0
.end method

.method private static l(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v1

    if-ge v1, p1, :cond_1

    invoke-static {p0}, Lo9/h;->c(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static m(Lcom/google/android/exoplayer2/util/d0;)Landroid/util/Pair;
    .locals 4

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    invoke-static {v1}, Lo9/a;->c(I)I

    move-result v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->J()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lo9/a$a;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 10

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    iget-object v0, v0, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v0}, Lo9/b;->k(Lcom/google/android/exoplayer2/util/d0;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v1, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/d0;->A(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->a()I

    move-result v4

    if-le v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    if-ge v7, v1, :cond_2

    aget-object v7, v3, v7

    add-int v8, v4, v6

    invoke-static {p0, v8, v7}, Lo9/h;->f(Lcom/google/android/exoplayer2/util/d0;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/2addr v4, v6

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :cond_6
    :goto_3
    return-object v2
.end method

.method private static o(Lcom/google/android/exoplayer2/util/d0;IIILo9/b$d;)V
    .locals 0

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const p2, 0x6d657474

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->x()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->x()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/o1$b;->R(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    iput-object p0, p4, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    :cond_0
    return-void
.end method

.method private static p(Lcom/google/android/exoplayer2/util/d0;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    invoke-static {v1}, Lo9/a;->c(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v0

    return-wide v0
.end method

.method private static q(Lcom/google/android/exoplayer2/util/d0;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static r(Lcom/google/android/exoplayer2/util/d0;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object p0

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static s(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lg9/o;->a(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    invoke-static {p0, v0, v1}, Lo9/b;->g(Lcom/google/android/exoplayer2/util/d0;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static t(Lcom/google/android/exoplayer2/util/d0;IILjava/lang/String;)Lo9/p;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result p1

    invoke-static {p1}, Lo9/a;->c(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    move v8, v0

    move v9, v8

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    if-ne p1, p2, :cond_1

    move v4, p2

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    new-array v2, p1, [B

    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    :cond_2
    move-object v10, v2

    new-instance p0, Lo9/p;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lo9/p;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static u(Lcom/google/android/exoplayer2/util/d0;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v2

    const/4 v3, 0x0

    if-ge v2, p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v5

    const v6, 0x73617574

    if-ne v5, v6, :cond_3

    const/16 p1, 0xe

    if-ge v4, p1, :cond_0

    return-object v3

    :cond_0
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p1

    if-eq p1, v1, :cond_1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_1

    return-object v3

    :cond_1
    if-ne p1, v1, :cond_2

    const/high16 p1, 0x43700000    # 240.0f

    goto :goto_1

    :cond_2
    const/high16 p1, 0x42f00000    # 120.0f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->D()I

    move-result p0

    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-instance v2, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v2, p1, p0}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    new-array p0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 p1, 0x0

    aput-object v2, p0, p1

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v1

    :cond_3
    add-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method private static v(Lo9/o;Lo9/a$a;Lg9/x;)Lo9/r;
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    invoke-virtual {v0, v3}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v5, Lo9/b$e;

    iget-object v6, v1, Lo9/o;->f:Lcom/google/android/exoplayer2/o1;

    invoke-direct {v5, v3, v6}, Lo9/b$e;-><init>(Lo9/a$b;Lcom/google/android/exoplayer2/o1;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    invoke-virtual {v0, v3}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v3

    if-eqz v3, :cond_31

    new-instance v5, Lo9/b$f;

    invoke-direct {v5, v3}, Lo9/b$f;-><init>(Lo9/a$b;)V

    :goto_0
    invoke-interface {v5}, Lo9/b$c;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    new-instance v9, Lo9/r;

    new-array v2, v6, [J

    new-array v3, v6, [I

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lo9/r;-><init>(Lo9/o;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v7, 0x7374636f

    invoke-virtual {v0, v7}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    const v7, 0x636f3634

    invoke-virtual {v0, v7}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo9/a$b;

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v6

    :goto_1
    iget-object v7, v7, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    const v10, 0x73747363

    invoke-virtual {v0, v10}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo9/a$b;

    iget-object v10, v10, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    const v11, 0x73747473

    invoke-virtual {v0, v11}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo9/a$b;

    iget-object v11, v11, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    const v12, 0x73747373

    invoke-virtual {v0, v12}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v12, v12, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    const v13, 0x63747473

    invoke-virtual {v0, v13}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    new-instance v13, Lo9/b$a;

    invoke-direct {v13, v10, v7, v9}, Lo9/b$a;-><init>(Lcom/google/android/exoplayer2/util/d0;Lcom/google/android/exoplayer2/util/d0;Z)V

    const/16 v7, 0xc

    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v9

    sub-int/2addr v9, v8

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v10

    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v14

    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v15

    goto :goto_4

    :cond_5
    move v15, v6

    :goto_4
    const/4 v4, -0x1

    if-eqz v12, :cond_7

    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v7

    if-lez v7, :cond_6

    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_6
    move/from16 v16, v4

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    move/from16 v16, v4

    move v7, v6

    :goto_5
    invoke-interface {v5}, Lo9/b$c;->a()I

    move-result v6

    iget-object v8, v1, Lo9/o;->f:Lcom/google/android/exoplayer2/o1;

    iget-object v8, v8, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    if-eq v6, v4, :cond_9

    const-string v4, "audio/raw"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "audio/g711-mlaw"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "audio/g711-alaw"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    if-nez v9, :cond_9

    if-nez v15, :cond_9

    if-nez v7, :cond_9

    move/from16 p1, v7

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    move/from16 p1, v7

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_b

    iget v0, v13, Lo9/b$a;->a:I

    new-array v4, v0, [J

    new-array v0, v0, [I

    :goto_7
    invoke-virtual {v13}, Lo9/b$a;->a()Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, v13, Lo9/b$a;->b:I

    iget-wide v9, v13, Lo9/b$a;->d:J

    aput-wide v9, v4, v5

    iget v9, v13, Lo9/b$a;->c:I

    aput v9, v0, v5

    goto :goto_7

    :cond_a
    int-to-long v9, v14

    invoke-static {v6, v4, v0, v9, v10}, Lo9/d;->a(I[J[IJ)Lo9/d$b;

    move-result-object v0

    iget-object v4, v0, Lo9/d$b;->a:[J

    iget-object v5, v0, Lo9/d$b;->b:[I

    iget v6, v0, Lo9/d$b;->c:I

    iget-object v9, v0, Lo9/d$b;->d:[J

    iget-object v10, v0, Lo9/d$b;->e:[I

    iget-wide v11, v0, Lo9/d$b;->f:J

    move-object v14, v1

    move v0, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v13, v10

    move-wide v15, v11

    move-object v12, v9

    goto/16 :goto_14

    :cond_b
    new-array v4, v3, [J

    new-array v6, v3, [I

    new-array v7, v3, [J

    new-array v8, v3, [I

    move-object/from16 v24, v11

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v10

    move/from16 v37, v9

    move/from16 v9, p1

    :goto_8
    move/from16 p1, v37

    const-string v10, "AtomParsers"

    if-ge v1, v3, :cond_14

    move-wide/from16 v28, v27

    move/from16 v27, v21

    const/16 v21, 0x1

    :goto_9
    if-nez v27, :cond_c

    invoke-virtual {v13}, Lo9/b$a;->a()Z

    move-result v21

    if-eqz v21, :cond_c

    move/from16 v30, v14

    move/from16 v31, v15

    iget-wide v14, v13, Lo9/b$a;->d:J

    move/from16 v32, v3

    iget v3, v13, Lo9/b$a;->c:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_9

    :cond_c
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v21, :cond_d

    const-string v2, "Unexpected end of chunk data"

    invoke-static {v10, v2}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move v3, v1

    move/from16 v2, v22

    move/from16 v1, v27

    goto/16 :goto_e

    :cond_d
    if-eqz v0, :cond_f

    :goto_a
    if-nez v23, :cond_e

    if-lez v16, :cond_e

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v23

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v22

    add-int/lit8 v16, v16, -0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v23, v23, -0x1

    :cond_f
    move/from16 v3, v22

    aput-wide v28, v4, v1

    invoke-interface {v5}, Lo9/b$c;->readNextSampleSize()I

    move-result v10

    aput v10, v6, v1

    if-le v10, v11, :cond_10

    move v11, v10

    :cond_10
    int-to-long v14, v3

    add-long v14, v25, v14

    aput-wide v14, v7, v1

    if-nez v12, :cond_11

    const/4 v10, 0x1

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    :goto_b
    aput v10, v8, v1

    if-ne v1, v2, :cond_12

    const/4 v10, 0x1

    aput v10, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_12

    invoke-static {v12}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v2

    sub-int/2addr v2, v10

    :cond_12
    move v15, v2

    move v10, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_13

    if-lez p1, :cond_13

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    :goto_c
    move/from16 p1, v2

    goto :goto_d

    :cond_13
    move v3, v14

    move/from16 v14, p1

    goto :goto_c

    :goto_d
    aget v2, v6, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v21, v22

    move/from16 v3, v32

    move/from16 v22, v10

    move/from16 v37, v14

    move/from16 v14, p1

    goto/16 :goto_8

    :cond_14
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v1, v21

    move/from16 v2, v22

    :goto_e
    int-to-long v12, v2

    add-long v12, v25, v12

    if-eqz v0, :cond_16

    :goto_f
    if-lez v16, :cond_16

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->H()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x0

    goto :goto_10

    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x1

    :goto_10
    if-nez v9, :cond_18

    if-nez v30, :cond_18

    if-nez v1, :cond_18

    if-nez p1, :cond_18

    move/from16 v2, v23

    if-nez v2, :cond_19

    if-nez v0, :cond_17

    goto :goto_11

    :cond_17
    move-object/from16 v14, p0

    goto :goto_13

    :cond_18
    move/from16 v2, v23

    :cond_19
    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Inconsistent stbl box for track "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p0

    iget v15, v14, Lo9/o;->a:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, v30

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remainingSamplesInChunk "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p1

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1a

    const-string v0, ", ctts invalid"

    goto :goto_12

    :cond_1a
    const-string v0, ""

    :goto_12
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    move v0, v3

    move-object v2, v4

    move-object v3, v6

    move v4, v11

    move-wide v15, v12

    move-object v12, v7

    move-object v13, v8

    :goto_14
    const-wide/32 v7, 0xf4240

    iget-wide v9, v14, Lo9/o;->c:J

    move-wide v5, v15

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v7

    iget-object v1, v14, Lo9/o;->h:[J

    const-wide/32 v10, 0xf4240

    if-nez v1, :cond_1b

    iget-wide v0, v14, Lo9/o;->c:J

    invoke-static {v12, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/util/p0;->P0([JJJ)V

    new-instance v9, Lo9/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lo9/r;-><init>(Lo9/o;[J[II[J[IJ)V

    return-object v9

    :cond_1b
    array-length v1, v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1e

    iget v1, v14, Lo9/o;->b:I

    if-ne v1, v5, :cond_1e

    array-length v1, v12

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1e

    iget-object v1, v14, Lo9/o;->i:[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v5, 0x0

    aget-wide v21, v1, v5

    iget-object v1, v14, Lo9/o;->h:[J

    aget-wide v23, v1, v5

    iget-wide v5, v14, Lo9/o;->c:J

    iget-wide v7, v14, Lo9/o;->d:J

    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    invoke-static/range {v23 .. v28}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v5

    add-long v23, v21, v5

    move-object v5, v12

    move-wide v6, v15

    move-wide/from16 v8, v21

    move/from16 v25, v0

    move-wide v0, v10

    move-wide/from16 v10, v23

    invoke-static/range {v5 .. v11}, Lo9/b;->b([JJJJ)Z

    move-result v5

    if-eqz v5, :cond_1d

    sub-long v6, v15, v23

    const/4 v5, 0x0

    aget-wide v8, v12, v5

    sub-long v26, v21, v8

    iget-object v5, v14, Lo9/o;->f:Lcom/google/android/exoplayer2/o1;

    iget v5, v5, Lcom/google/android/exoplayer2/o1;->z:I

    int-to-long v8, v5

    iget-wide v10, v14, Lo9/o;->c:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v10

    iget-object v5, v14, Lo9/o;->f:Lcom/google/android/exoplayer2/o1;

    iget v5, v5, Lcom/google/android/exoplayer2/o1;->z:I

    int-to-long v8, v5

    iget-wide v0, v14, Lo9/o;->c:J

    move/from16 p1, v4

    move-wide v4, v10

    move-wide v10, v0

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c

    cmp-long v8, v0, v6

    if-eqz v8, :cond_1f

    :cond_1c
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1f

    cmp-long v6, v0, v6

    if-gtz v6, :cond_1f

    long-to-int v4, v4

    move-object/from16 v5, p2

    iput v4, v5, Lg9/x;->a:I

    long-to-int v0, v0

    iput v0, v5, Lg9/x;->b:I

    iget-wide v0, v14, Lo9/o;->c:J

    const-wide/32 v4, 0xf4240

    invoke-static {v12, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/util/p0;->P0([JJJ)V

    iget-object v0, v14, Lo9/o;->h:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/32 v6, 0xf4240

    iget-wide v8, v14, Lo9/o;->d:J

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v7

    new-instance v9, Lo9/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lo9/r;-><init>(Lo9/o;[J[II[J[IJ)V

    return-object v9

    :cond_1d
    :goto_15
    move/from16 p1, v4

    goto :goto_16

    :cond_1e
    move/from16 v25, v0

    goto :goto_15

    :cond_1f
    :goto_16
    iget-object v0, v14, Lo9/o;->h:[J

    array-length v1, v0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_21

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_21

    iget-object v0, v14, Lo9/o;->i:[J

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v1

    const/4 v6, 0x0

    :goto_17
    array-length v0, v12

    if-ge v6, v0, :cond_20

    aget-wide v0, v12, v6

    sub-long v17, v0, v4

    const-wide/32 v19, 0xf4240

    iget-wide v0, v14, Lo9/o;->c:J

    move-wide/from16 v21, v0

    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v0

    aput-wide v0, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_20
    sub-long v17, v15, v4

    const-wide/32 v19, 0xf4240

    iget-wide v0, v14, Lo9/o;->c:J

    move-wide/from16 v21, v0

    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v7

    new-instance v9, Lo9/r;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lo9/r;-><init>(Lo9/o;[J[II[J[IJ)V

    return-object v9

    :cond_21
    iget v1, v14, Lo9/o;->b:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_22

    const/4 v10, 0x1

    goto :goto_18

    :cond_22
    const/4 v10, 0x0

    :goto_18
    array-length v1, v0

    new-array v1, v1, [I

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v4, v14, Lo9/o;->i:[J

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_19
    iget-object v9, v14, Lo9/o;->h:[J

    array-length v11, v9

    if-ge v5, v11, :cond_26

    move-object v11, v2

    move-object v15, v3

    aget-wide v2, v4, v5

    const-wide/16 v21, -0x1

    cmp-long v16, v2, v21

    if-eqz v16, :cond_25

    aget-wide v26, v9, v5

    move/from16 v16, v8

    iget-wide v8, v14, Lo9/o;->c:J

    move/from16 p2, v6

    move/from16 v21, v7

    iget-wide v6, v14, Lo9/o;->d:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v6

    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-static {v12, v2, v3, v8, v8}, Lcom/google/android/exoplayer2/util/p0;->i([JJZZ)I

    move-result v9

    aput v9, v1, v5

    add-long/2addr v2, v6

    const/4 v6, 0x0

    invoke-static {v12, v2, v3, v10, v6}, Lcom/google/android/exoplayer2/util/p0;->e([JJZZ)I

    move-result v2

    aput v2, v0, v5

    :goto_1a
    aget v2, v1, v5

    aget v3, v0, v5

    if-ge v2, v3, :cond_23

    aget v7, v13, v2

    and-int/2addr v7, v8

    if-nez v7, :cond_23

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    goto :goto_1a

    :cond_23
    sub-int v7, v3, v2

    add-int v7, v21, v7

    move/from16 v9, v16

    if-eq v9, v2, :cond_24

    move v2, v8

    goto :goto_1b

    :cond_24
    move v2, v6

    :goto_1b
    or-int v2, p2, v2

    goto :goto_1c

    :cond_25
    move/from16 p2, v6

    move/from16 v21, v7

    move v9, v8

    const/4 v6, 0x0

    const/4 v8, 0x1

    move/from16 v2, p2

    move v3, v9

    :goto_1c
    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v8, v3

    move-object v2, v11

    move-object v3, v15

    goto :goto_19

    :cond_26
    move-object v11, v2

    move-object v15, v3

    move/from16 p2, v6

    move/from16 v3, v25

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eq v7, v3, :cond_27

    goto :goto_1d

    :cond_27
    move v8, v6

    :goto_1d
    or-int v2, p2, v8

    if-eqz v2, :cond_28

    new-array v3, v7, [J

    goto :goto_1e

    :cond_28
    move-object v3, v11

    :goto_1e
    if-eqz v2, :cond_29

    new-array v4, v7, [I

    goto :goto_1f

    :cond_29
    move-object v4, v15

    :goto_1f
    if-eqz v2, :cond_2a

    move v5, v6

    goto :goto_20

    :cond_2a
    move/from16 v5, p1

    :goto_20
    if-eqz v2, :cond_2b

    new-array v8, v7, [I

    goto :goto_21

    :cond_2b
    move-object v8, v13

    :goto_21
    new-array v7, v7, [J

    move/from16 p2, v5

    move-object/from16 p1, v15

    const-wide/16 v9, 0x0

    move v15, v6

    :goto_22
    iget-object v5, v14, Lo9/o;->h:[J

    array-length v5, v5

    if-ge v6, v5, :cond_30

    iget-object v5, v14, Lo9/o;->i:[J

    aget-wide v16, v5, v6

    aget v5, v1, v6

    move-object/from16 v18, v1

    aget v1, v0, v6

    move-object/from16 v27, v0

    if-eqz v2, :cond_2c

    sub-int v0, v1, v5

    invoke-static {v11, v5, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v28, v11

    move-object/from16 v11, p1

    invoke-static {v11, v5, v4, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v13, v5, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_2c
    move-object/from16 v28, v11

    move-object/from16 v11, p1

    :goto_23
    move/from16 v0, p2

    :goto_24
    if-ge v5, v1, :cond_2f

    const-wide/32 v23, 0xf4240

    move/from16 v29, v0

    move/from16 p1, v1

    iget-wide v0, v14, Lo9/o;->d:J

    move-wide/from16 v21, v9

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v0

    aget-wide v21, v12, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    sub-long v12, v21, v16

    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v31

    const-wide/32 v33, 0xf4240

    iget-wide v12, v14, Lo9/o;->c:J

    move-wide/from16 v35, v12

    invoke-static/range {v31 .. v36}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v12

    add-long/2addr v0, v12

    aput-wide v0, v7, v15

    if-eqz v2, :cond_2d

    aget v0, v4, v15

    move/from16 v1, v29

    if-le v0, v1, :cond_2e

    aget v0, v11, v5

    goto :goto_25

    :cond_2d
    move/from16 v1, v29

    :cond_2e
    move v0, v1

    :goto_25
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    move-wide/from16 v9, v21

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    goto :goto_24

    :cond_2f
    move v1, v0

    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    const-wide/16 v8, 0x0

    iget-object v0, v14, Lo9/o;->h:[J

    aget-wide v12, v0, v6

    add-long v12, v21, v12

    add-int/lit8 v6, v6, 0x1

    move/from16 p2, v1

    move-object/from16 p1, v11

    move-wide v9, v12

    move-object/from16 v1, v18

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v0, v27

    move-object/from16 v11, v28

    move-object/from16 v8, v30

    goto/16 :goto_22

    :cond_30
    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/32 v23, 0xf4240

    iget-wide v0, v14, Lo9/o;->d:J

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v8

    new-instance v10, Lo9/r;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move-object v5, v7

    move-object/from16 v6, v30

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lo9/r;-><init>(Lo9/o;[J[II[J[IJ)V

    return-object v10

    :cond_31
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static w(Lcom/google/android/exoplayer2/util/d0;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lo9/b$d;
    .locals 18

    move-object/from16 v10, p0

    move/from16 v11, p1

    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v12

    new-instance v13, Lo9/b$d;

    invoke-direct {v13, v12}, Lo9/b$d;-><init>(I)V

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v14

    :goto_1
    const-string v1, "childAtomSize must be positive"

    invoke-static {v0, v1}, Lg9/o;->a(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    const v0, 0x61766331

    if-eq v1, v0, :cond_1

    const v0, 0x61766333

    if-eq v1, v0, :cond_1

    const v0, 0x656e6376

    if-eq v1, v0, :cond_1

    const v0, 0x6d317620

    if-eq v1, v0, :cond_1

    const v0, 0x6d703476

    if-eq v1, v0, :cond_1

    const v0, 0x68766331

    if-eq v1, v0, :cond_1

    const v0, 0x68657631

    if-eq v1, v0, :cond_1

    const v0, 0x73323633

    if-eq v1, v0, :cond_1

    const v0, 0x48323633

    if-eq v1, v0, :cond_1

    const v0, 0x76703038

    if-eq v1, v0, :cond_1

    const v0, 0x76703039

    if-eq v1, v0, :cond_1

    const v0, 0x61763031

    if-eq v1, v0, :cond_1

    const v0, 0x64766176

    if-eq v1, v0, :cond_1

    const v0, 0x64766131

    if-eq v1, v0, :cond_1

    const v0, 0x64766865

    if-eq v1, v0, :cond_1

    const v0, 0x64766831

    if-ne v1, v0, :cond_2

    :cond_1
    move/from16 v17, v9

    goto/16 :goto_5

    :cond_2
    const v0, 0x6d703461

    if-eq v1, v0, :cond_8

    const v0, 0x656e6361

    if-eq v1, v0, :cond_8

    const v0, 0x61632d33

    if-eq v1, v0, :cond_8

    const v0, 0x65632d33

    if-eq v1, v0, :cond_8

    const v0, 0x61632d34

    if-eq v1, v0, :cond_8

    const v0, 0x6d6c7061

    if-eq v1, v0, :cond_8

    const v0, 0x64747363

    if-eq v1, v0, :cond_8

    const v0, 0x64747365

    if-eq v1, v0, :cond_8

    const v0, 0x64747368

    if-eq v1, v0, :cond_8

    const v0, 0x6474736c

    if-eq v1, v0, :cond_8

    const v0, 0x64747378

    if-eq v1, v0, :cond_8

    const v0, 0x73616d72

    if-eq v1, v0, :cond_8

    const v0, 0x73617762

    if-eq v1, v0, :cond_8

    const v0, 0x6c70636d

    if-eq v1, v0, :cond_8

    const v0, 0x736f7774

    if-eq v1, v0, :cond_8

    const v0, 0x74776f73

    if-eq v1, v0, :cond_8

    const v0, 0x2e6d7032

    if-eq v1, v0, :cond_8

    const v0, 0x2e6d7033

    if-eq v1, v0, :cond_8

    const v0, 0x6d686131

    if-eq v1, v0, :cond_8

    const v0, 0x6d686d31

    if-eq v1, v0, :cond_8

    const v0, 0x616c6163

    if-eq v1, v0, :cond_8

    const v0, 0x616c6177

    if-eq v1, v0, :cond_8

    const v0, 0x756c6177

    if-eq v1, v0, :cond_8

    const v0, 0x4f707573

    if-eq v1, v0, :cond_8

    const v0, 0x664c6143

    if-ne v1, v0, :cond_3

    goto :goto_4

    :cond_3
    const v0, 0x54544d4c

    if-eq v1, v0, :cond_7

    const v0, 0x74783367

    if-eq v1, v0, :cond_7

    const v0, 0x77767474

    if-eq v1, v0, :cond_7

    const v0, 0x73747070

    if-eq v1, v0, :cond_7

    const v0, 0x63363038

    if-ne v1, v0, :cond_4

    goto :goto_3

    :cond_4
    const v0, 0x6d657474

    if-ne v1, v0, :cond_6

    invoke-static {v10, v1, v9, v11, v13}, Lo9/b;->o(Lcom/google/android/exoplayer2/util/d0;IIILo9/b$d;)V

    :cond_5
    :goto_2
    move/from16 v17, v9

    goto :goto_6

    :cond_6
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_5

    new-instance v0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/o1$b;->R(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    iput-object v0, v13, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    goto :goto_2

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lo9/b;->x(Lcom/google/android/exoplayer2/util/d0;IIIILjava/lang/String;Lo9/b$d;)V

    goto :goto_2

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v13

    move/from16 v17, v9

    move v9, v15

    invoke-static/range {v0 .. v9}, Lo9/b;->f(Lcom/google/android/exoplayer2/util/d0;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lo9/b$d;I)V

    goto :goto_6

    :goto_5
    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v13

    move v8, v15

    invoke-static/range {v0 .. v8}, Lo9/b;->D(Lcom/google/android/exoplayer2/util/d0;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lo9/b$d;I)V

    :goto_6
    add-int v9, v17, v16

    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v13
.end method

.method private static x(Lcom/google/android/exoplayer2/util/d0;IIIILjava/lang/String;Lo9/b$d;)V
    .locals 4

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    const p2, 0x54544d4c

    const-string v0, "application/ttml+xml"

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x74783367

    if-ne p1, p2, :cond_1

    add-int/lit8 p3, p3, -0x10

    new-array p1, p3, [B

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/d0;->j([BII)V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string v0, "application/x-quicktime-tx3g"

    goto :goto_0

    :cond_1
    const p0, 0x77767474

    if-ne p1, p0, :cond_2

    const-string v0, "application/x-mp4-vtt"

    goto :goto_0

    :cond_2
    const p0, 0x73747070

    if-ne p1, p0, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_3
    const p0, 0x63363038

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    iput p0, p6, Lo9/b$d;->d:I

    const-string v0, "application/x-mp4-cea-608"

    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/o1$b;->R(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/o1$b;->i0(J)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object p0

    iput-object p0, p6, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static y(Lcom/google/android/exoplayer2/util/d0;)Lo9/b$g;
    .locals 12

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->P(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    invoke-static {v1}, Lo9/a;->c(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v5

    if-nez v1, :cond_1

    move v0, v4

    :cond_1
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v7, v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v10

    add-int v11, v5, v7

    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->F()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->I()J

    move-result-wide v0

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v5, v0, v10

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move-wide v8, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/d0;->Q(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/d0;->n()I

    move-result p0

    const/high16 v4, -0x10000

    const/high16 v5, 0x10000

    if-nez v0, :cond_6

    if-ne v1, v5, :cond_6

    if-ne v2, v4, :cond_6

    if-nez p0, :cond_6

    const/16 v6, 0x5a

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x10e

    goto :goto_4

    :cond_7
    if-ne v0, v4, :cond_8

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-ne p0, v4, :cond_8

    const/16 v6, 0xb4

    :cond_8
    :goto_4
    new-instance p0, Lo9/b$g;

    invoke-direct {p0, v3, v8, v9, v6}, Lo9/b$g;-><init>(IJI)V

    return-object p0
.end method

.method private static z(Lo9/a$a;Lo9/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lo9/o;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x6d646961

    invoke-virtual {v0, v1}, Lo9/a$a;->f(I)Lo9/a$a;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo9/a$a;

    const v2, 0x68646c72    # 4.3148E24f

    invoke-virtual {v1, v2}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo9/a$b;

    iget-object v2, v2, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v2}, Lo9/b;->k(Lcom/google/android/exoplayer2/util/d0;)I

    move-result v2

    invoke-static {v2}, Lo9/b;->d(I)I

    move-result v5

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v5, v2, :cond_0

    return-object v3

    :cond_0
    const v2, 0x746b6864

    invoke-virtual {v0, v2}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo9/a$b;

    iget-object v2, v2, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v2}, Lo9/b;->y(Lcom/google/android/exoplayer2/util/d0;)Lo9/b$g;

    move-result-object v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    invoke-static {v2}, Lo9/b$g;->a(Lo9/b$g;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    :goto_0
    iget-object v4, v4, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v4}, Lo9/b;->p(Lcom/google/android/exoplayer2/util/d0;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_2

    :goto_1
    move-wide v10, v6

    goto :goto_2

    :cond_2
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/p0;->N0(JJJ)J

    move-result-wide v6

    goto :goto_1

    :goto_2
    const v4, 0x6d696e66

    invoke-virtual {v1, v4}, Lo9/a$a;->f(I)Lo9/a$a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo9/a$a;

    const v6, 0x7374626c

    invoke-virtual {v4, v6}, Lo9/a$a;->f(I)Lo9/a$a;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo9/a$a;

    const v6, 0x6d646864

    invoke-virtual {v1, v6}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo9/a$b;

    iget-object v1, v1, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v1}, Lo9/b;->m(Lcom/google/android/exoplayer2/util/d0;)Landroid/util/Pair;

    move-result-object v1

    const v6, 0x73747364

    invoke-virtual {v4, v6}, Lo9/a$a;->g(I)Lo9/a$b;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo9/a$b;

    iget-object v12, v4, Lo9/a$b;->b:Lcom/google/android/exoplayer2/util/d0;

    invoke-static {v2}, Lo9/b$g;->b(Lo9/b$g;)I

    move-result v13

    invoke-static {v2}, Lo9/b$g;->c(Lo9/b$g;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    invoke-static/range {v12 .. v17}, Lo9/b;->w(Lcom/google/android/exoplayer2/util/d0;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lo9/b$d;

    move-result-object v4

    if-nez p5, :cond_3

    const v6, 0x65647473

    invoke-virtual {v0, v6}, Lo9/a$a;->f(I)Lo9/a$a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lo9/b;->h(Lo9/a$a;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_3

    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v17, v16

    :goto_3
    iget-object v0, v4, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Lo9/o;

    invoke-static {v2}, Lo9/b$g;->b(Lo9/b$g;)I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lo9/b$d;->b:Lcom/google/android/exoplayer2/o1;

    iget v13, v4, Lo9/b$d;->d:I

    iget-object v14, v4, Lo9/b$d;->a:[Lo9/p;

    iget v15, v4, Lo9/b$d;->c:I

    move-object v3, v0

    move v4, v2

    invoke-direct/range {v3 .. v17}, Lo9/o;-><init>(IIJJJLcom/google/android/exoplayer2/o1;I[Lo9/p;I[J[J)V

    :goto_4
    return-object v3
.end method
