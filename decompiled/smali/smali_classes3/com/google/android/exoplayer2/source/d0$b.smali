.class public final Lcom/google/android/exoplayer2/source/d0$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/k$a;

.field private b:Lcom/google/android/exoplayer2/upstream/z;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/k$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d0$b;->a:Lcom/google/android/exoplayer2/upstream/k$a;

    new-instance p1, Lcom/google/android/exoplayer2/upstream/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d0$b;->b:Lcom/google/android/exoplayer2/upstream/z;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/d0$b;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/v1$l;J)Lcom/google/android/exoplayer2/source/d0;
    .locals 11

    new-instance v10, Lcom/google/android/exoplayer2/source/d0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d0$b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/d0$b;->a:Lcom/google/android/exoplayer2/upstream/k$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/d0$b;->b:Lcom/google/android/exoplayer2/upstream/z;

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/source/d0$b;->c:Z

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/d0$b;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/d0;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/v1$l;Lcom/google/android/exoplayer2/upstream/k$a;JLcom/google/android/exoplayer2/upstream/z;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/d0$a;)V

    return-object v10
.end method

.method public b(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/d0$b;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/v;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d0$b;->b:Lcom/google/android/exoplayer2/upstream/z;

    return-object p0
.end method
