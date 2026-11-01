.class public final Lco/j;
.super Landroidx/media3/exoplayer/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/j$a;,
        Lco/j$b;
    }
.end annotation


# static fields
.field public static final n:Lco/j$a;


# instance fields
.field private final l:Lcom/transsion/player/exo/ORExoDecoderType;

.field private final m:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lco/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lco/j;->n:Lco/j$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/player/exo/ORExoDecoderType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoRendererType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/o;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lco/j;->l:Lcom/transsion/player/exo/ORExoDecoderType;

    new-instance p1, Lco/i;

    invoke-direct {p1}, Lco/i;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lco/j;->m:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic q()Lco/l;
    .locals 1

    invoke-static {}, Lco/j;->t()Lco/l;

    move-result-object v0

    return-object v0
.end method

.method private final r()Lco/l;
    .locals 1

    iget-object v0, p0, Lco/j;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/l;

    return-object v0
.end method

.method private static final t()Lco/l;
    .locals 1

    new-instance v0, Lco/l;

    invoke-direct {v0}, Lco/l;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected c(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroidx/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Ljava/util/ArrayList;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaCodecSelector"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audioSink"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p8}, Landroidx/media3/exoplayer/o;->c(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroidx/media3/exoplayer/audio/AudioSink;Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Ljava/util/ArrayList;)V

    sget-object p1, Loo/e;->a:Loo/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "buildAudioRenderers, mode:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ORRenderersFactory"

    const/4 v0, 0x1

    invoke-virtual {p1, p4, p3, v0}, Loo/e;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    :try_start_0
    new-instance p2, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;

    invoke-direct {p2, p6, p7, p5}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/b;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/audio/x;Landroidx/media3/exoplayer/audio/AudioSink;)V

    invoke-virtual {p8, p3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string p2, "Loaded FfmpegAudioRenderer."

    invoke-virtual {p1, p4, p2, v0}, Loo/e;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Loo/e;->a:Loo/e;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error instantiating Ffmpeg extension :"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1, v0}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected d(Landroid/content/Context;ZZ)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->o(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->n(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    move-result-object p1

    invoke-direct {p0}, Lco/j;->r()Lco/l;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Lco/l;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    check-cast p3, [Landroidx/media3/common/audio/AudioProcessor;

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->m([Landroidx/media3/common/audio/AudioProcessor;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$g;->j()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected k(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;JLjava/util/ArrayList;)V
    .locals 13

    move v0, p2

    move-object/from16 v1, p9

    const-string v2, "context"

    move-object v3, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mediaCodecSelector"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventHandler"

    move-object/from16 v6, p5

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventListener"

    move-object/from16 v7, p6

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "out"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p9}, Landroidx/media3/exoplayer/o;->k(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/h0;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;JLjava/util/ArrayList;)V

    sget-object v2, Loo/e;->a:Loo/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildVideoRenderers, mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "ORRenderersFactory"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v3, v10}, Loo/e;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    move-object v11, p0

    move v0, v3

    :try_start_0
    iget-object v3, v11, Lco/j;->l:Lcom/transsion/player/exo/ORExoDecoderType;

    sget-object v4, Lco/j$b;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-ne v3, v10, :cond_2

    new-instance v12, Landroidx/media3/decoder/av1/c;

    const/16 v8, 0x32

    move-object v3, v12

    move-wide/from16 v4, p7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Landroidx/media3/decoder/av1/c;-><init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    new-instance v12, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;

    const/16 v8, 0x32

    move-object v3, v12

    move-wide/from16 v4, p7

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/d;-><init>(JLandroid/os/Handler;Landroidx/media3/exoplayer/video/i0;I)V

    :goto_0
    invoke-virtual {v1, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegVideoRenderer."

    invoke-virtual {v2, v9, v0, v10}, Loo/e;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v1, Loo/e;->a:Loo/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error instantiating Ffmpeg extension :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0, v10}, Loo/e;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method public s(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    sub-float p1, v1, v0

    :cond_0
    invoke-direct {p0}, Lco/j;->r()Lco/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/l;->b(F)F

    return-void
.end method
