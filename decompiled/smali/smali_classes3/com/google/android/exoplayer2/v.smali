.class public final synthetic Lcom/google/android/exoplayer2/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/b3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/b3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/b3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/v;->a:Lcom/google/android/exoplayer2/b3;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->b(Lcom/google/android/exoplayer2/b3;)Lcom/google/android/exoplayer2/b3;

    move-result-object v0

    return-object v0
.end method
