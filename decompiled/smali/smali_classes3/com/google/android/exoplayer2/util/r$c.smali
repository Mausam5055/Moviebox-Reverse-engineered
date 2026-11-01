.class final Lcom/google/android/exoplayer2/util/r$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field private b:Lcom/google/android/exoplayer2/util/m$b;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/exoplayer2/util/m$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/m$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/r$c;->b:Lcom/google/android/exoplayer2/util/m$b;

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/exoplayer2/util/r$a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r$c;->d:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r$c;->b:Lcom/google/android/exoplayer2/util/m$b;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/m$b;->a(I)Lcom/google/android/exoplayer2/util/m$b;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/r$c;->c:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/util/r$a;->invoke(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/r$b;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r$c;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r$c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r$c;->b:Lcom/google/android/exoplayer2/util/m$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/m$b;->e()Lcom/google/android/exoplayer2/util/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/util/m$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/m$b;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/r$c;->b:Lcom/google/android/exoplayer2/util/m$b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/r$c;->c:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/util/r$b;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/m;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/util/r$b;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/r$c;->d:Z

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/r$c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/r$c;->b:Lcom/google/android/exoplayer2/util/m$b;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/m$b;->e()Lcom/google/android/exoplayer2/util/m;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/util/r$b;->a(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/m;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/exoplayer2/util/r$c;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/util/r$c;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/r$c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
