.class Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;
.super Landroid/media/AudioTrack$StreamEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

.field final synthetic b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->a:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iget-object p2, p2, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->d()V

    :cond_1
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->t(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Landroid/media/AudioTrack;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->n(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j$a;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;

    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$j;->c:Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;->m(Lcom/google/android/exoplayer2/audio/DefaultAudioSink;)Lcom/google/android/exoplayer2/audio/AudioSink$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink$a;->d()V

    :cond_1
    return-void
.end method
