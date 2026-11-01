.class public final synthetic Landroidx/media3/decoder/av1/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/decoder/h$a;


# instance fields
.field public final synthetic a:Landroidx/media3/decoder/av1/Gav1Decoder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/decoder/av1/Gav1Decoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/decoder/av1/a;->a:Landroidx/media3/decoder/av1/Gav1Decoder;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/decoder/h;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/decoder/av1/a;->a:Landroidx/media3/decoder/av1/Gav1Decoder;

    check-cast p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    invoke-virtual {v0, p1}, Landroidx/media3/decoder/av1/Gav1Decoder;->w(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    return-void
.end method
