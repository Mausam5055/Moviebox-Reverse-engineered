.class public final synthetic Lcom/google/android/exoplayer2/util/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/exoplayer2/util/r$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/p;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/google/android/exoplayer2/util/p;->b:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/util/p;->c:Lcom/google/android/exoplayer2/util/r$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/p;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/google/android/exoplayer2/util/p;->b:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/p;->c:Lcom/google/android/exoplayer2/util/r$a;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/util/r;->a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/r$a;)V

    return-void
.end method
