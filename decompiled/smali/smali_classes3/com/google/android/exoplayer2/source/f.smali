.class public final synthetic Lcom/google/android/exoplayer2/source/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lcom/google/android/exoplayer2/upstream/k$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/f;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/f;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f;->a:Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/f;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/i$a;->c(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object v0

    return-object v0
.end method
