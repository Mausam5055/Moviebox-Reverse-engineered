.class public final synthetic Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/decoder/h$a;


# instance fields
.field public final synthetic a:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;


# direct methods
.method public synthetic constructor <init>(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/a;->a:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/decoder/h;)V
    .locals 1

    iget-object v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/a;->a:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;

    check-cast p1, Landroidx/media3/decoder/SimpleDecoderOutputBuffer;

    invoke-static {v0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;->t(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegAudioDecoder;Landroidx/media3/decoder/h;)V

    return-void
.end method
