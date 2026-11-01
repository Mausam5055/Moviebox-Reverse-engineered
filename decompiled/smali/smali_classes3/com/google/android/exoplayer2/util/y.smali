.class public final synthetic Lcom/google/android/exoplayer2/util/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/util/z;

.field public final synthetic b:Lcom/google/android/exoplayer2/util/z$c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/util/z;Lcom/google/android/exoplayer2/util/z$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/y;->a:Lcom/google/android/exoplayer2/util/z;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/y;->b:Lcom/google/android/exoplayer2/util/z$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/y;->a:Lcom/google/android/exoplayer2/util/z;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/y;->b:Lcom/google/android/exoplayer2/util/z$c;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/z;->a(Lcom/google/android/exoplayer2/util/z;Lcom/google/android/exoplayer2/util/z$c;)V

    return-void
.end method
