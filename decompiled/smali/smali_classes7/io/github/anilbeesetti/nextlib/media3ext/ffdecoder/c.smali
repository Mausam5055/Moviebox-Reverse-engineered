.class public final synthetic Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/decoder/h$a;


# instance fields
.field public final synthetic a:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;


# direct methods
.method public synthetic constructor <init>(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/c;->a:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/decoder/h;)V
    .locals 1

    iget-object v0, p0, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/c;->a:Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;

    check-cast p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-static {v0, p1}, Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;->t(Lio/github/anilbeesetti/nextlib/media3ext/ffdecoder/FfmpegVideoDecoder;Landroidx/media3/decoder/h;)V

    return-void
.end method
