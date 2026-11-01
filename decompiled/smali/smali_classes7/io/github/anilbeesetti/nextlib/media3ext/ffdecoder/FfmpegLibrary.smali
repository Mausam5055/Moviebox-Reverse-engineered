.class public abstract Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/media3/common/util/q;

.field private static b:Ljava/lang/String;

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "media3.decoder.ffmpeg"

    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    new-instance v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary$a;

    const-string v1, "media3ext"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary$a;-><init>([Ljava/lang/String;)V

    sput-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a:Landroidx/media3/common/util/q;

    const/4 v0, -0x1

    sput v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c:I

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "audio/g711-mlaw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "audio/g711-alaw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "audio/true-hd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "audio/vnd.dts.hd"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "audio/opus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "audio/mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "audio/flac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "audio/eac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "audio/alac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "audio/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "audio/ac3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "video/mpeg2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "audio/mpeg-L2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_11
    const-string v1, "audio/mpeg-L1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_12
    const-string v1, "audio/vorbis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_13
    const-string v1, "audio/vnd.dts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_14
    const-string v1, "audio/amr-wb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_15
    const-string v1, "video/mpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_16
    const-string v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_17
    const-string v1, "audio/eac3-joc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    const-string p0, "pcm_mulaw"

    goto :goto_1

    :pswitch_1
    const-string p0, "pcm_alaw"

    goto :goto_1

    :pswitch_2
    const-string p0, "libvpx-vp9"

    goto :goto_1

    :pswitch_3
    const-string p0, "libvpx"

    goto :goto_1

    :pswitch_4
    const-string p0, "truehd"

    goto :goto_1

    :pswitch_5
    const-string p0, "opus"

    goto :goto_1

    :pswitch_6
    const-string p0, "flac"

    goto :goto_1

    :pswitch_7
    const-string p0, "alac"

    goto :goto_1

    :pswitch_8
    const-string p0, "amrnb"

    goto :goto_1

    :pswitch_9
    const-string p0, "h264"

    goto :goto_1

    :pswitch_a
    const-string p0, "ac3"

    goto :goto_1

    :pswitch_b
    const-string p0, "mpeg2video"

    goto :goto_1

    :pswitch_c
    const-string p0, "aac"

    goto :goto_1

    :pswitch_d
    const-string p0, "mp3"

    goto :goto_1

    :pswitch_e
    const-string p0, "vorbis"

    goto :goto_1

    :pswitch_f
    const-string p0, "dca"

    goto :goto_1

    :pswitch_10
    const-string p0, "amrwb"

    goto :goto_1

    :pswitch_11
    const-string p0, "mpegvideo"

    goto :goto_1

    :pswitch_12
    const-string p0, "hevc"

    goto :goto_1

    :pswitch_13
    const-string p0, "eac3"

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_17
        -0x63185e82 -> :sswitch_16
        -0x6315f167 -> :sswitch_15
        -0x5fc6f775 -> :sswitch_14
        -0x41455b98 -> :sswitch_13
        -0x3bd43e14 -> :sswitch_12
        -0x19cc928c -> :sswitch_11
        -0x19cc928b -> :sswitch_10
        -0x3313c2e -> :sswitch_f
        0x57c4b9 -> :sswitch_e
        0xb269698 -> :sswitch_d
        0x4f62373a -> :sswitch_c
        0x59976a2d -> :sswitch_b
        0x59ac6426 -> :sswitch_a
        0x59ae0c65 -> :sswitch_9
        0x59aeaa01 -> :sswitch_8
        0x59b1e81e -> :sswitch_7
        0x59b2d2d8 -> :sswitch_6
        0x59c2dc42 -> :sswitch_5
        0x5cc95062 -> :sswitch_4
        0x5f50bed8 -> :sswitch_3
        0x5f50bed9 -> :sswitch_2
        0x71710385 -> :sswitch_1
        0x717677f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_13
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()I
    .locals 2

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegGetInputBufferPaddingSize()I

    move-result v0

    sput v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c:I

    :cond_1
    sget v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->c:I

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegGetVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->b:Ljava/lang/String;

    :cond_1
    sget-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Z
    .locals 1

    sget-object v0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a:Landroidx/media3/common/util/q;

    invoke-virtual {v0}, Landroidx/media3/common/util/q;->a()Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegLibrary;->ffmpegHasDecoder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " decoder available. Check the FFmpeg build configuration."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FfmpegLibrary"

    invoke-static {v0, p0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static native ffmpegGetInputBufferPaddingSize()I
.end method

.method private static native ffmpegGetVersion()Ljava/lang/String;
.end method

.method private static native ffmpegHasDecoder(Ljava/lang/String;)Z
.end method
