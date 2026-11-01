.class public final Lcom/google/android/exoplayer2/upstream/r$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/upstream/k$a;

.field private c:Lcom/google/android/exoplayer2/upstream/k0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/s$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/s$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/r$a;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/r$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/r$a;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/r;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/upstream/r;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/r$a;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/r;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/k;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/r$a;->c:Lcom/google/android/exoplayer2/upstream/k0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/r;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/k;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/r$a;->a()Lcom/google/android/exoplayer2/upstream/r;

    move-result-object v0

    return-object v0
.end method
