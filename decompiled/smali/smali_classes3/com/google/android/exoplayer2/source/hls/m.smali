.class public final synthetic Lcom/google/android/exoplayer2/source/hls/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/hls/p$b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/hls/p$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/m;->a:Lcom/google/android/exoplayer2/source/hls/p$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/m;->a:Lcom/google/android/exoplayer2/source/hls/p$b;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/hls/p$b;->onPrepared()V

    return-void
.end method
