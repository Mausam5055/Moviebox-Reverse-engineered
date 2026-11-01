.class abstract Lf3/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/media3/common/x;Ljava/lang/String;)Landroidx/media3/container/b;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/x;->e()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v1

    instance-of v2, v1, Landroidx/media3/container/b;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/media3/container/b;

    iget-object v2, v1, Landroidx/media3/container/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static b(ILandroidx/media3/common/util/j0;)Lz2/e;
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/j0;->X(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->C(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lz2/e;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Lz2/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse comment attribute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/media3/container/d;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Landroidx/media3/common/util/j0;)Lz2/a;
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v2, 0x64617461

    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-static {v1}, Lf3/b;->o(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const-string v2, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const-string v2, "image/png"

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized cover art flags: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/j0;->X(I)V

    add-int/lit8 v0, v0, -0x10

    new-array v1, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Landroidx/media3/common/util/j0;->l([BII)V

    new-instance p0, Lz2/a;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v4, v0, v1}, Lz2/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_3
    const-string p0, "Failed to parse cover art attribute"

    invoke-static {v3, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static d(Landroidx/media3/common/util/j0;)Landroidx/media3/common/x$a;
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_11

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const v2, 0x676e7265

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p0}, Lf3/j;->j(Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :catchall_0
    move-exception v1

    goto/16 :goto_3

    :cond_1
    const v2, 0x6469736b

    if-ne v1, v2, :cond_2

    :try_start_1
    const-string v2, "TPOS"

    invoke-static {v1, v2, p0}, Lf3/j;->e(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_2
    const v2, 0x74726b6e

    if-ne v1, v2, :cond_3

    :try_start_2
    const-string v2, "TRCK"

    invoke-static {v1, v2, p0}, Lf3/j;->e(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_3
    const v2, 0x746d706f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_4

    :try_start_3
    const-string v2, "TBPM"

    invoke-static {v1, v2, p0, v4, v3}, Lf3/j;->g(ILjava/lang/String;Landroidx/media3/common/util/j0;ZZ)Lz2/i;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_4
    const v2, 0x6370696c

    if-ne v1, v2, :cond_5

    :try_start_4
    const-string v2, "TCMP"

    invoke-static {v1, v2, p0, v4, v4}, Lf3/j;->g(ILjava/lang/String;Landroidx/media3/common/util/j0;ZZ)Lz2/i;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_5
    const v2, 0x636f7672

    if-ne v1, v2, :cond_6

    :try_start_5
    invoke-static {p0}, Lf3/j;->c(Landroidx/media3/common/util/j0;)Lz2/a;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_6
    const v2, 0x61415254

    if-ne v1, v2, :cond_7

    :try_start_6
    const-string v2, "TPE2"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_7
    const v2, 0x736f6e6d

    if-ne v1, v2, :cond_8

    :try_start_7
    const-string v2, "TSOT"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_8
    const v2, 0x736f616c

    if-ne v1, v2, :cond_9

    :try_start_8
    const-string v2, "TSOA"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_9
    const v2, 0x736f6172

    if-ne v1, v2, :cond_a

    :try_start_9
    const-string v2, "TSOP"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_a
    const v2, 0x736f6161

    if-ne v1, v2, :cond_b

    :try_start_a
    const-string v2, "TSO2"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_b
    const v2, 0x736f636f

    if-ne v1, v2, :cond_c

    :try_start_b
    const-string v2, "TSOC"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_c
    const v2, 0x72746e67

    if-ne v1, v2, :cond_d

    :try_start_c
    const-string v2, "ITUNESADVISORY"

    invoke-static {v1, v2, p0, v3, v3}, Lf3/j;->g(ILjava/lang/String;Landroidx/media3/common/util/j0;ZZ)Lz2/i;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_d
    const v2, 0x70676170

    if-ne v1, v2, :cond_e

    :try_start_d
    const-string v2, "ITUNESGAPLESS"

    invoke-static {v1, v2, p0, v3, v4}, Lf3/j;->g(ILjava/lang/String;Landroidx/media3/common/util/j0;ZZ)Lz2/i;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_e
    const v2, 0x736f736e

    if-ne v1, v2, :cond_f

    :try_start_e
    const-string v2, "TVSHOWSORT"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_f
    const v2, 0x74767368

    if-ne v1, v2, :cond_10

    :try_start_f
    const-string v2, "TVSHOW"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_10
    const v2, 0x2d2d2d2d

    if-ne v1, v2, :cond_1b

    :try_start_10
    invoke-static {p0, v0}, Lf3/j;->h(Landroidx/media3/common/util/j0;I)Lz2/i;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_11
    :goto_0
    const v2, 0xffffff

    and-int/2addr v2, v1

    const v3, 0x636d74

    if-ne v2, v3, :cond_12

    :try_start_11
    invoke-static {v1, p0}, Lf3/j;->b(ILandroidx/media3/common/util/j0;)Lz2/e;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_12
    const v3, 0x6e616d

    if-eq v2, v3, :cond_1d

    const v3, 0x74726b

    if-ne v2, v3, :cond_13

    goto/16 :goto_2

    :cond_13
    const v3, 0x636f6d

    if-eq v2, v3, :cond_1c

    const v3, 0x777274

    if-ne v2, v3, :cond_14

    goto/16 :goto_1

    :cond_14
    const v3, 0x646179

    if-ne v2, v3, :cond_15

    :try_start_12
    const-string v2, "TDRC"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_15
    const v3, 0x415254

    if-ne v2, v3, :cond_16

    :try_start_13
    const-string v2, "TPE1"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_16
    const v3, 0x746f6f

    if-ne v2, v3, :cond_17

    :try_start_14
    const-string v2, "TSSE"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_17
    const v3, 0x616c62

    if-ne v2, v3, :cond_18

    :try_start_15
    const-string v2, "TALB"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_18
    const v3, 0x6c7972

    if-ne v2, v3, :cond_19

    :try_start_16
    const-string v2, "USLT"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_19
    const v3, 0x67656e

    if-ne v2, v3, :cond_1a

    :try_start_17
    const-string v2, "TCON"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_1a
    const v3, 0x677270

    if-ne v2, v3, :cond_1b

    :try_start_18
    const-string v2, "TIT1"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_1b
    :try_start_19
    const-string v2, "MetadataUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped unknown metadata entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/media3/container/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/media3/common/util/u;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    :goto_1
    :try_start_1a
    const-string v2, "TCOM"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :cond_1d
    :goto_2
    :try_start_1b
    const-string v2, "TIT2"

    invoke-static {v1, v2, p0}, Lf3/j;->k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;

    move-result-object v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    return-object v1

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    throw v1
.end method

.method private static e(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;
    .locals 4

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/j0;->X(I)V

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->P()I

    move-result v0

    if-lez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->P()I

    move-result p2

    if-lez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p2, Lz2/n;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lz2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse index/count attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/media3/container/d;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static f(Landroidx/media3/common/util/j0;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_4

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/j0;->X(I)V

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->j()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->L()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->K()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->P()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse data atom to int"

    invoke-static {p0, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method private static g(ILjava/lang/String;Landroidx/media3/common/util/j0;ZZ)Lz2/i;
    .locals 0

    invoke-static {p2}, Lf3/j;->f(Landroidx/media3/common/util/j0;)I

    move-result p2

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    const/4 p4, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, Lz2/n;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lz2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lz2/e;

    const-string p3, "und"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lz2/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/media3/container/d;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method private static h(Landroidx/media3/common/util/j0;I)Lz2/i;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v2

    move v4, v1

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v6

    if-ge v6, p1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v6

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v7

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Landroidx/media3/common/util/j0;->X(I)V

    const v9, 0x6d65616e

    if-ne v8, v9, :cond_0

    add-int/lit8 v7, v7, -0xc

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/j0;->C(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v9, 0x6e616d65

    if-ne v8, v9, :cond_1

    add-int/lit8 v7, v7, -0xc

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/j0;->C(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v9, 0x64617461

    if-ne v8, v9, :cond_2

    move v4, v6

    move v5, v7

    :cond_2
    add-int/lit8 v7, v7, -0xc

    invoke-virtual {p0, v7}, Landroidx/media3/common/util/j0;->X(I)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    if-ne v4, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/j0;->W(I)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/j0;->X(I)V

    sub-int/2addr v5, p1

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/j0;->C(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lz2/k;

    invoke-direct {p1, v2, v3, p0}, Lz2/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static i(Landroidx/media3/common/util/j0;ILjava/lang/String;)Landroidx/media3/container/b;
    .locals 4

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->f()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v2

    const v3, 0x64617461

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result p1

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    add-int/lit8 v1, v1, -0x10

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Landroidx/media3/common/util/j0;->l([BII)V

    new-instance p0, Landroidx/media3/container/b;

    invoke-direct {p0, p2, v2, v0, p1}, Landroidx/media3/container/b;-><init>(Ljava/lang/String;[BII)V

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/j0;->W(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(Landroidx/media3/common/util/j0;)Lz2/n;
    .locals 3

    invoke-static {p0}, Lf3/j;->f(Landroidx/media3/common/util/j0;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Lz2/j;->a(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v1, Lz2/n;

    const-string v2, "TCON"

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v1, v2, v0, p0}, Lz2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :cond_0
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    invoke-static {p0, v1}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static k(ILjava/lang/String;Landroidx/media3/common/util/j0;)Lz2/n;
    .locals 4

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->q()I

    move-result v0

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->q()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroidx/media3/common/util/j0;->X(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p2, v0}, Landroidx/media3/common/util/j0;->C(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lz2/n;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {p2, p1, v3, p0}, Lz2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse text attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/media3/container/d;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static l(ILl2/e0;Landroidx/media3/common/r$b;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ll2/e0;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Ll2/e0;->a:I

    invoke-virtual {p2, p0}, Landroidx/media3/common/r$b;->Z(I)Landroidx/media3/common/r$b;

    move-result-object p0

    iget p1, p1, Ll2/e0;->b:I

    invoke-virtual {p0, p1}, Landroidx/media3/common/r$b;->a0(I)Landroidx/media3/common/r$b;

    :cond_0
    return-void
.end method

.method public static varargs m(ILandroidx/media3/common/x;Landroidx/media3/common/r$b;Landroidx/media3/common/x;[Landroidx/media3/common/x;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Landroidx/media3/common/x;

    new-array v2, v1, [Landroidx/media3/common/x$a;

    invoke-direct {p3, v2}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    :goto_0
    if-eqz p1, :cond_3

    move v2, v1

    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/x;->e()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Landroidx/media3/common/x;->d(I)Landroidx/media3/common/x$a;

    move-result-object v3

    instance-of v4, v3, Landroidx/media3/container/b;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/media3/container/b;

    iget-object v4, v3, Landroidx/media3/container/b;->a:Ljava/lang/String;

    const-string v5, "com.android.capture.fps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    if-ne p0, v4, :cond_2

    new-array v4, v0, [Landroidx/media3/common/x$a;

    aput-object v3, v4, v1

    invoke-virtual {p3, v4}, Landroidx/media3/common/x;->a([Landroidx/media3/common/x$a;)Landroidx/media3/common/x;

    move-result-object p3

    goto :goto_2

    :cond_1
    new-array v4, v0, [Landroidx/media3/common/x$a;

    aput-object v3, v4, v1

    invoke-virtual {p3, v4}, Landroidx/media3/common/x;->a([Landroidx/media3/common/x$a;)Landroidx/media3/common/x;

    move-result-object p3

    :cond_2
    :goto_2
    add-int/2addr v2, v0

    goto :goto_1

    :cond_3
    array-length p0, p4

    :goto_3
    if-ge v1, p0, :cond_4

    aget-object p1, p4, v1

    invoke-virtual {p3, p1}, Landroidx/media3/common/x;->b(Landroidx/media3/common/x;)Landroidx/media3/common/x;

    move-result-object p3

    add-int/2addr v1, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Landroidx/media3/common/x;->e()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {p2, p3}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    :cond_5
    return-void
.end method
