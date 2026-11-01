.class public Lcom/google/android/exoplayer2/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/b3;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/mediacodec/j;

.field private c:I

.field private d:J

.field private e:Z

.field private f:Lcom/google/android/exoplayer2/mediacodec/o;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/mediacodec/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/mediacodec/j;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/p;->c:I

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/exoplayer2/p;->d:J

    sget-object p1, Lcom/google/android/exoplayer2/mediacodec/o;->a:Lcom/google/android/exoplayer2/mediacodec/o;

    iput-object p1, p0, Lcom/google/android/exoplayer2/p;->f:Lcom/google/android/exoplayer2/mediacodec/o;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/w;Lcom/google/android/exoplayer2/audio/r;Lba/o;Lcom/google/android/exoplayer2/metadata/e;)[Lcom/google/android/exoplayer2/x2;
    .locals 12

    move-object v10, p0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    iget v2, v10, Lcom/google/android/exoplayer2/p;->c:I

    iget-object v3, v10, Lcom/google/android/exoplayer2/p;->f:Lcom/google/android/exoplayer2/mediacodec/o;

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/p;->e:Z

    iget-wide v7, v10, Lcom/google/android/exoplayer2/p;->d:J

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/exoplayer2/p;->h(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/o;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/w;JLjava/util/ArrayList;)V

    iget-object v0, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    iget-boolean v1, v10, Lcom/google/android/exoplayer2/p;->g:Z

    iget-boolean v2, v10, Lcom/google/android/exoplayer2/p;->h:Z

    iget-boolean v3, v10, Lcom/google/android/exoplayer2/p;->i:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/p;->c(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v1, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    iget v2, v10, Lcom/google/android/exoplayer2/p;->c:I

    iget-object v3, v10, Lcom/google/android/exoplayer2/p;->f:Lcom/google/android/exoplayer2/mediacodec/o;

    iget-boolean v4, v10, Lcom/google/android/exoplayer2/p;->e:Z

    move-object v0, p0

    move-object v6, p1

    move-object v7, p3

    move-object v8, v11

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/p;->b(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/o;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Lcom/google/android/exoplayer2/p;->c:I

    move-object v0, p0

    move-object/from16 v2, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/p;->g(Landroid/content/Context;Lba/o;Landroid/os/Looper;ILjava/util/ArrayList;)V

    iget-object v1, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, v10, Lcom/google/android/exoplayer2/p;->c:I

    move-object/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/p;->e(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;ILjava/util/ArrayList;)V

    iget-object v0, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    iget v1, v10, Lcom/google/android/exoplayer2/p;->c:I

    invoke-virtual {p0, v0, v1, v11}, Lcom/google/android/exoplayer2/p;->d(Landroid/content/Context;ILjava/util/ArrayList;)V

    iget-object v0, v10, Lcom/google/android/exoplayer2/p;->a:Landroid/content/Context;

    iget v1, v10, Lcom/google/android/exoplayer2/p;->c:I

    move-object v2, p1

    invoke-virtual {p0, v0, p1, v1, v11}, Lcom/google/android/exoplayer2/p;->f(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/x2;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/x2;

    return-object v0
.end method

.method protected b(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/o;ZLcom/google/android/exoplayer2/audio/AudioSink;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;Ljava/util/ArrayList;)V
    .locals 18

    move/from16 v0, p2

    move-object/from16 v1, p8

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-class v6, Lcom/google/android/exoplayer2/audio/AudioSink;

    const-class v7, Lcom/google/android/exoplayer2/audio/r;

    const-class v8, Landroid/os/Handler;

    const-string v9, "DefaultRenderersFactory"

    new-instance v15, Lcom/google/android/exoplayer2/audio/a0;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/p;->i()Lcom/google/android/exoplayer2/mediacodec/l$b;

    move-result-object v12

    move-object v10, v15

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object v2, v15

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p5

    invoke-direct/range {v10 .. v17}, Lcom/google/android/exoplayer2/audio/a0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/r;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.decoder.midi.MidiRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/x2;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded MidiRenderer."

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move v2, v10

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating MIDI extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :goto_1
    move v10, v2

    :goto_2
    :try_start_2
    const-string v0, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v8, v2, v11

    aput-object v7, v2, v5

    aput-object v6, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p6, v2, v11

    aput-object p7, v2, v5

    aput-object p5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/x2;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v2, v10, 0x1

    :try_start_3
    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibopusAudioRenderer."

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move v10, v2

    goto :goto_4

    :goto_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating Opus extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    :goto_4
    move v2, v10

    :goto_5
    :try_start_4
    const-string v0, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v10, v3, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    aput-object v7, v10, v5

    aput-object v6, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v10, v3, [Ljava/lang/Object;

    aput-object p6, v10, v11

    aput-object p7, v10, v5

    aput-object p5, v10, v4

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/x2;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    add-int/lit8 v10, v2, 0x1

    :try_start_5
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded LibflacAudioRenderer."

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move v2, v10

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    :goto_7
    move v10, v2

    :goto_8
    :try_start_6
    const-string v0, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v8, v2, v11

    aput-object v7, v2, v5

    aput-object v6, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p6, v2, v11

    aput-object p7, v2, v5

    aput-object p5, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/x2;

    invoke-virtual {v1, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    invoke-static {v9, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FFmpeg extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    :goto_9
    return-void
.end method

.method protected c(Landroid/content/Context;ZZZ)Lcom/google/android/exoplayer2/audio/AudioSink;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/f;->c(Landroid/content/Context;)Lcom/google/android/exoplayer2/audio/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->g(Lcom/google/android/exoplayer2/audio/f;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->i(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->h(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->j(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->f()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    move-result-object p1

    return-object p1
.end method

.method protected d(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0

    new-instance p1, Lma/b;

    invoke-direct {p1}, Lma/b;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected e(Landroid/content/Context;Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    new-instance p1, Lcom/google/android/exoplayer2/metadata/f;

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/f;-><init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected f(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method protected g(Landroid/content/Context;Lba/o;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0

    new-instance p1, Lba/p;

    invoke-direct {p1, p2, p3}, Lba/p;-><init>(Lba/o;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected h(Landroid/content/Context;ILcom/google/android/exoplayer2/mediacodec/o;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/w;JLjava/util/ArrayList;)V
    .locals 20

    move/from16 v0, p2

    move-object/from16 v1, p9

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, "DefaultRenderersFactory"

    const-class v8, Lcom/google/android/exoplayer2/video/w;

    const-class v9, Landroid/os/Handler;

    new-instance v14, Lcom/google/android/exoplayer2/video/g;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/p;->i()Lcom/google/android/exoplayer2/mediacodec/l$b;

    move-result-object v12

    const/16 v19, 0x32

    move-object v10, v14

    move-object/from16 v11, p1

    move-object/from16 v13, p3

    move-object v2, v14

    move-wide/from16 v14, p7

    move/from16 v16, p4

    move-object/from16 v17, p5

    move-object/from16 v18, p6

    invoke-direct/range {v10 .. v19}, Lcom/google/android/exoplayer2/video/g;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/l$b;Lcom/google/android/exoplayer2/mediacodec/o;JZLandroid/os/Handler;Lcom/google/android/exoplayer2/video/w;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v6, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/16 v0, 0x32

    :try_start_0
    const-string v10, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    new-array v11, v4, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v3

    aput-object v9, v11, v5

    aput-object v8, v11, v6

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x3

    aput-object v12, v11, v13

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v11, v13, v3

    aput-object p5, v13, v5

    aput-object p6, v13, v6

    const/4 v11, 0x3

    aput-object v12, v13, v11

    invoke-virtual {v10, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/x2;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v11, v2, 0x1

    :try_start_1
    invoke-virtual {v1, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "Loaded LibvpxVideoRenderer."

    invoke-static {v7, v2}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move v2, v11

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating VP9 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :goto_1
    move v11, v2

    :goto_2
    :try_start_2
    const-string v2, "com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v3

    aput-object v9, v10, v5

    aput-object v8, v10, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v8, v10, v9

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v8, v4, v3

    aput-object p5, v4, v5

    aput-object p6, v4, v6

    const/4 v3, 0x3

    aput-object v0, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/x2;

    invoke-virtual {v1, v11, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded Libgav1VideoRenderer."

    invoke-static {v7, v0}, Lcom/google/android/exoplayer2/util/s;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating AV1 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    :goto_3
    return-void
.end method

.method protected i()Lcom/google/android/exoplayer2/mediacodec/l$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p;->b:Lcom/google/android/exoplayer2/mediacodec/j;

    return-object v0
.end method

.method public j(Z)Lcom/google/android/exoplayer2/p;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/p;->e:Z

    return-object p0
.end method
