.class final Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReleaseTask"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/upstream/Loader$e;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Loader$e;->onLoaderReleased()V

    return-void
.end method
