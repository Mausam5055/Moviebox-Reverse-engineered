.class public final Lcom/google/android/exoplayer2/upstream/s$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/w;

.field private b:Lcom/google/android/exoplayer2/upstream/k0;

.field private c:Lcom/google/common/base/n;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/s$b;->a:Lcom/google/android/exoplayer2/upstream/w;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/s$b;->e:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/s$b;->f:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/s;
    .locals 10

    new-instance v9, Lcom/google/android/exoplayer2/upstream/s;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/s$b;->d:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/s$b;->e:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/s$b;->f:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/s$b;->g:Z

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/s$b;->a:Lcom/google/android/exoplayer2/upstream/w;

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/s$b;->c:Lcom/google/common/base/n;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/upstream/s$b;->h:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/upstream/s;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/w;Lcom/google/common/base/n;ZLcom/google/android/exoplayer2/upstream/s$a;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/s$b;->b:Lcom/google/android/exoplayer2/upstream/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Lcom/google/android/exoplayer2/upstream/f;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    :cond_0
    return-object v9
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/s$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/s$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplayer2/upstream/k;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/s$b;->a()Lcom/google/android/exoplayer2/upstream/s;

    move-result-object v0

    return-object v0
.end method
