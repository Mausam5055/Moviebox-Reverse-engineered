.class public Landroidx/media3/exoplayer/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/b4;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/media3/exoplayer/mediacodec/k;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Landroidx/media3/exoplayer/mediacodec/h0;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/k;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/o;->b:Landroidx/media3/exoplayer/mediacodec/k;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/o;->c:I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroidx/media3/exoplayer/o;->d:J

    sget-object p1, Landroidx/media3/exoplayer/mediacodec/h0;->a:Landroidx/media3/exoplayer/mediacodec/h0;

    iput-object p1, p0, Landroidx/media3/exoplayer/o;->f:Landroidx/media3/exoplayer/mediacodec/h0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/o;->k:J

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;Landroidx/media3/exoplayer/audio/x;Li2/h;Le2/b;)[Landroidx/media3/exoplayer/w3;
    .locals 12

    move-object v10, p0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    iget v2, v10, Landroidx/media3/exoplayer/o;->c:I

    iget-object v3, v10, Landroidx/media3/exoplayer/o;->f:Landroidx/media3/exoplayer/mediacodec/h0;

    iget-boolean v4, v10, Landroidx/media3/exoplayer/o;->e:Z

    iget-wide v7, v10, Landroidx/media3/exoplayer/o;->d:J

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/o;->k(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;JLjava/util/ArrayList;)V

    iget-object v0, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    iget-boolean v1, v10, Landroidx/media3/exoplayer/o;->g:Z

    iget-boolean v2, v10, Landroidx/media3/exoplayer/o;->h:Z

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/o;->d(Landroid/content/Context;ZZ)Landroidx/media3/exoplayer/audio/AudioSink;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v1, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    iget v2, v10, Landroidx/media3/exoplayer/o;->c:I

    iget-object v3, v10, Landroidx/media3/exoplayer/o;->f:Landroidx/media3/exoplayer/mediacodec/h0;

    iget-boolean v4, v10, Landroidx/media3/exoplayer/o;->e:Z

    move-object v0, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/o;->c(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroidx/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Landroidx/media3/exoplayer/o;->c:I

    move-object v0, p0

    move-object/from16 v2, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/o;->j(Landroid/content/Context;Li2/h;Landroid/os/Looper;ILjava/util/ArrayList;)V

    iget-object v1, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Landroidx/media3/exoplayer/o;->c:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/o;->g(Landroid/content/Context;Le2/b;Landroid/os/Looper;ILjava/util/ArrayList;)V

    iget-object v0, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    iget v1, v10, Landroidx/media3/exoplayer/o;->c:I

    invoke-virtual {p0, v0, v1, v11}, Landroidx/media3/exoplayer/o;->e(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {p0, v11}, Landroidx/media3/exoplayer/o;->f(Ljava/util/ArrayList;)V

    iget-object v0, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    iget v1, v10, Landroidx/media3/exoplayer/o;->c:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v11}, Landroidx/media3/exoplayer/o;->h(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/exoplayer/w3;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/exoplayer/w3;

    return-object v0
.end method

.method public b(Landroidx/media3/exoplayer/w3;Landroid/os/Handler;Landroidx/media3/exoplayer/video/i0;Landroidx/media3/exoplayer/audio/x;Li2/h;Le2/b;)Landroidx/media3/exoplayer/w3;
    .locals 11

    move-object v10, p0

    invoke-interface {p1}, Landroidx/media3/exoplayer/w3;->getTrackType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v2, v10, Landroidx/media3/exoplayer/o;->a:Landroid/content/Context;

    iget v3, v10, Landroidx/media3/exoplayer/o;->c:I

    iget-object v4, v10, Landroidx/media3/exoplayer/o;->f:Landroidx/media3/exoplayer/mediacodec/h0;

    iget-boolean v5, v10, Landroidx/media3/exoplayer/o;->e:Z

    iget-wide v8, v10, Landroidx/media3/exoplayer/o;->d:J

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/o;->i(Landroidx/media3/exoplayer/w3;Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;J)Landroidx/media3/exoplayer/w3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected c(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroidx/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Ljava/util/ArrayList;)V
    .locals 20

    move/from16 v0, p2

    move-object/from16 v1, p8

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-class v7, Landroid/content/Context;

    const-string v8, "DefaultRenderersFactory"

    const-class v9, Landroidx/media3/exoplayer/audio/AudioSink;

    const-class v10, Landroidx/media3/exoplayer/audio/x;

    const-class v11, Landroid/os/Handler;

    new-instance v15, Landroidx/media3/exoplayer/audio/a1;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/o;->m()Landroidx/media3/exoplayer/mediacodec/t$b;

    move-result-object v14

    move-object v12, v15

    move-object/from16 v13, p1

    move-object v3, v15

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p5

    invoke-direct/range {v12 .. v19}, Landroidx/media3/exoplayer/audio/a1;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/t$b;Landroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    :try_start_0
    const-string v0, "androidx.media3.decoder.midi.MidiRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v12, v2, [Ljava/lang/Class;

    aput-object v7, v12, v4

    aput-object v11, v12, v6

    aput-object v10, v12, v5

    const/4 v13, 0x3

    aput-object v9, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v12, v2, [Ljava/lang/Object;

    aput-object p1, v12, v4

    aput-object p6, v12, v6

    aput-object p7, v12, v5

    const/4 v13, 0x3

    aput-object p5, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v12, v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded MidiRenderer."

    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move v3, v12

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating MIDI extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :goto_1
    move v12, v3

    :goto_2
    :try_start_2
    const-string v0, "androidx.media3.decoder.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x3

    new-array v13, v3, [Ljava/lang/Class;

    aput-object v11, v13, v4

    aput-object v10, v13, v6

    aput-object v9, v13, v5

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v13, v3, [Ljava/lang/Object;

    aput-object p6, v13, v4

    aput-object p7, v13, v6

    aput-object p5, v13, v5

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v3, v12, 0x1

    :try_start_3
    invoke-virtual {v1, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibopusAudioRenderer."

    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move v12, v3

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating Opus extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    :goto_4
    move v3, v12

    :goto_5
    :try_start_4
    const-string v0, "androidx.media3.decoder.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/Class;

    aput-object v11, v13, v4

    aput-object v10, v13, v6

    aput-object v9, v13, v5

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v13, v12, [Ljava/lang/Object;

    aput-object p6, v13, v4

    aput-object p7, v13, v6

    aput-object p5, v13, v5

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    add-int/lit8 v12, v3, 0x1

    :try_start_5
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibflacAudioRenderer."

    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move v3, v12

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    :goto_7
    move v12, v3

    :goto_8
    :try_start_6
    const-string v0, "androidx.media3.decoder.ffmpeg.FfmpegAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x3

    new-array v13, v3, [Ljava/lang/Class;

    aput-object v11, v13, v4

    aput-object v10, v13, v6

    aput-object v9, v13, v5

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v13, v3, [Ljava/lang/Object;

    aput-object p6, v13, v4

    aput-object p7, v13, v6

    aput-object p5, v13, v5

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    add-int/lit8 v3, v12, 0x1

    :try_start_7
    invoke-virtual {v1, v12, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    goto :goto_b

    :catch_9
    move-exception v0

    goto :goto_9

    :catch_a
    move v12, v3

    goto :goto_a

    :goto_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_b
    :goto_a
    move v3, v12

    :goto_b
    :try_start_8
    const-string v0, "androidx.media3.decoder.iamf.LibiamfAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v12, v2, [Ljava/lang/Class;

    aput-object v7, v12, v4

    aput-object v11, v12, v6

    aput-object v10, v12, v5

    const/4 v7, 0x3

    aput-object v9, v12, v7

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p6, v2, v6

    aput-object p7, v2, v5

    const/4 v7, 0x3

    aput-object p5, v2, v7

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    add-int/lit8 v2, v3, 0x1

    :try_start_9
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibiamfAudioRenderer."

    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_e

    :catch_c
    move-exception v0

    goto :goto_c

    :catch_d
    move v3, v2

    goto :goto_d

    :goto_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating IAMF extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_e
    :goto_d
    move v2, v3

    :goto_e
    :try_start_a
    const-string v0, "androidx.media3.decoder.mpegh.MpeghAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v11, v7, v4

    aput-object v10, v7, v6

    aput-object v9, v7, v5

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p6, v3, v4

    aput-object p7, v3, v6

    aput-object p5, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded MpeghAudioRenderer."

    invoke-static {v8, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error instantiating MPEG-H extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_10
    :goto_f
    return-void
.end method

.method protected d(Landroid/content/Context;ZZ)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->o(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->n(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->j()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object p1

    return-object p1
.end method

.method protected e(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0

    new-instance p1, Lk2/b;

    invoke-direct {p1}, Lk2/b;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected f(Ljava/util/ArrayList;)V
    .locals 3

    new-instance v0, Ld2/e;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/o;->n()Ld2/c$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld2/e;-><init>(Ld2/c$a;Landroidx/media3/exoplayer/image/ImageOutput;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected g(Landroid/content/Context;Le2/b;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    new-instance p1, Le2/c;

    invoke-direct {p1, p2, p3}, Le2/c;-><init>(Le2/b;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Le2/c;

    invoke-direct {p1, p2, p3}, Le2/c;-><init>(Le2/b;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected h(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method protected i(Landroidx/media3/exoplayer/w3;Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;J)Landroidx/media3/exoplayer/w3;
    .locals 0

    iget-boolean p3, p0, Landroidx/media3/exoplayer/o;->i:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroidx/media3/exoplayer/video/j;

    if-ne p1, p3, :cond_0

    new-instance p1, Landroidx/media3/exoplayer/video/j$d;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/video/j$d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/o;->m()Landroidx/media3/exoplayer/mediacodec/t$b;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/j$d;->q(Landroidx/media3/exoplayer/mediacodec/t$b;)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/video/j$d;->v(Landroidx/media3/exoplayer/mediacodec/h0;)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    invoke-virtual {p1, p8, p9}, Landroidx/media3/exoplayer/video/j$d;->p(J)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroidx/media3/exoplayer/video/j$d;->r(Z)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroidx/media3/exoplayer/video/j$d;->s(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroidx/media3/exoplayer/video/j$d;->t(Landroidx/media3/exoplayer/video/i0;)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/j$d;->u(I)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    iget-boolean p2, p0, Landroidx/media3/exoplayer/o;->j:Z

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/video/j$d;->o(Z)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    iget-wide p2, p0, Landroidx/media3/exoplayer/o;->k:J

    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/video/j$d;->n(J)Landroidx/media3/exoplayer/video/j$d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/j$d;->m()Landroidx/media3/exoplayer/video/j;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected j(Landroid/content/Context;Li2/h;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    new-instance p1, Li2/i;

    invoke-direct {p1, p2, p3}, Li2/i;-><init>(Li2/h;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected k(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;JLjava/util/ArrayList;)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x2

    const-string v10, "DefaultRenderersFactory"

    const-class v11, Landroidx/media3/exoplayer/video/i0;

    const-class v12, Landroid/os/Handler;

    new-instance v13, Landroidx/media3/exoplayer/video/j$d;

    move-object/from16 v14, p1

    invoke-direct {v13, v14}, Landroidx/media3/exoplayer/video/j$d;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/o;->m()Landroidx/media3/exoplayer/mediacodec/t$b;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/media3/exoplayer/video/j$d;->q(Landroidx/media3/exoplayer/mediacodec/t$b;)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v13

    move-object/from16 v14, p3

    invoke-virtual {v13, v14}, Landroidx/media3/exoplayer/video/j$d;->v(Landroidx/media3/exoplayer/mediacodec/h0;)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v13

    move-wide/from16 v14, p7

    invoke-virtual {v13, v14, v15}, Landroidx/media3/exoplayer/video/j$d;->p(J)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v13

    move/from16 v5, p4

    invoke-virtual {v13, v5}, Landroidx/media3/exoplayer/video/j$d;->r(Z)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/media3/exoplayer/video/j$d;->s(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/video/j$d;->t(Landroidx/media3/exoplayer/video/i0;)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v5

    const/16 v13, 0x32

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/video/j$d;->u(I)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v5

    iget-boolean v13, v1, Landroidx/media3/exoplayer/o;->j:Z

    invoke-virtual {v5, v13}, Landroidx/media3/exoplayer/video/j$d;->o(Z)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v5

    move-object/from16 v18, v10

    iget-wide v9, v1, Landroidx/media3/exoplayer/o;->k:J

    invoke-virtual {v5, v9, v10}, Landroidx/media3/exoplayer/video/j$d;->n(J)Landroidx/media3/exoplayer/video/j$d;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/exoplayer/video/j$d;->m()Landroidx/media3/exoplayer/video/j;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v0, v8, :cond_1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    :try_start_0
    const-string v0, "androidx.media3.decoder.vp9.LibvpxVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v9, v7, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    const/4 v10, 0x1

    aput-object v12, v9, v10

    aput-object v11, v9, v8

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v10, v9, v16

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v9, v10, v6

    const/4 v9, 0x1

    aput-object v2, v10, v9

    aput-object v3, v10, v8

    const/4 v13, 0x3

    aput-object v17, v10, v13

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v5, 0x1

    :try_start_1
    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibvpxVideoRenderer."
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v9, v18

    :try_start_2
    invoke-static {v9, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    :goto_0
    move v5, v10

    goto :goto_2

    :catch_2
    move-object/from16 v9, v18

    goto :goto_0

    :catch_3
    move-object/from16 v9, v18

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error instantiating VP9 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_2
    move v10, v5

    :goto_3
    :try_start_3
    const-class v0, Landroidx/media3/decoder/av1/c;

    sget v5, Landroidx/media3/decoder/av1/c;->c0:I

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v5, v6

    const/4 v13, 0x1

    aput-object v12, v5, v13

    aput-object v11, v5, v8

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x3

    aput-object v18, v5, v16

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v13, v7, [Ljava/lang/Object;

    aput-object v5, v13, v6

    const/4 v5, 0x1

    aput-object v2, v13, v5

    aput-object v3, v13, v8

    const/16 v16, 0x3

    aput-object v17, v13, v16

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    add-int/lit8 v18, v10, 0x1

    :try_start_4
    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded Libgav1VideoRenderer."

    invoke-static {v9, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :catch_4
    move/from16 v10, v18

    goto :goto_4

    :catch_5
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error instantiating AV1 extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    :goto_4
    :try_start_5
    const-string v0, "androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v5, v6

    const/4 v13, 0x1

    aput-object v12, v5, v13

    aput-object v11, v5, v8

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v11, v5, v12

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    const/4 v5, 0x1

    aput-object v2, v7, v5

    aput-object v3, v7, v8

    const/4 v2, 0x3

    aput-object v17, v7, v2

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/w3;

    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegVideoRenderer."

    invoke-static {v9, v0}, Landroidx/media3/common/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_5

    :catch_7
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Error instantiating FFmpeg extension"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_8
    :goto_5
    return-void
.end method

.method public final l()Landroidx/media3/exoplayer/o;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/o;->b:Landroidx/media3/exoplayer/mediacodec/k;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/k;->b()Landroidx/media3/exoplayer/mediacodec/k;

    return-object p0
.end method

.method protected m()Landroidx/media3/exoplayer/mediacodec/t$b;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/o;->b:Landroidx/media3/exoplayer/mediacodec/k;

    return-object v0
.end method

.method protected n()Ld2/c$a;
    .locals 1

    sget-object v0, Ld2/c$a;->a:Ld2/c$a;

    return-object v0
.end method

.method public final o(Z)Landroidx/media3/exoplayer/o;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/o;->e:Z

    return-object p0
.end method

.method public final p(I)Landroidx/media3/exoplayer/o;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/o;->c:I

    return-object p0
.end method
