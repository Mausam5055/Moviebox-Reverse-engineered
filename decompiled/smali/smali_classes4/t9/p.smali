.class public final synthetic Lt9/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/source/p$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/source/p;

.field public final synthetic c:Lcom/google/android/exoplayer2/source/o$b;

.field public final synthetic d:Lt9/i;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/source/o$b;Lt9/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/p;->a:Lcom/google/android/exoplayer2/source/p$a;

    iput-object p2, p0, Lt9/p;->b:Lcom/google/android/exoplayer2/source/p;

    iput-object p3, p0, Lt9/p;->c:Lcom/google/android/exoplayer2/source/o$b;

    iput-object p4, p0, Lt9/p;->d:Lt9/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lt9/p;->a:Lcom/google/android/exoplayer2/source/p$a;

    iget-object v1, p0, Lt9/p;->b:Lcom/google/android/exoplayer2/source/p;

    iget-object v2, p0, Lt9/p;->c:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v3, p0, Lt9/p;->d:Lt9/i;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/p$a;->d(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Lcom/google/android/exoplayer2/source/o$b;Lt9/i;)V

    return-void
.end method
