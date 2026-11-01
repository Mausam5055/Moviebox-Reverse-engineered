.class public final synthetic Lcom/google/android/exoplayer2/source/rtsp/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/rtsp/p;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/q;->a:Lcom/google/android/exoplayer2/source/rtsp/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/q;->a:Lcom/google/android/exoplayer2/source/rtsp/p;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/p$b;->h(Lcom/google/android/exoplayer2/source/rtsp/p;)V

    return-void
.end method
