.class final Lcom/google/android/exoplayer2/trackselection/e$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/o1;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lcom/google/android/exoplayer2/o1;->d:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/e$c;->a:Z

    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/trackselection/e;->L(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/e$c;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/trackselection/e$c;)I
    .locals 3

    invoke-static {}, Lcom/google/common/collect/h2;->k()Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$c;->b:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/e$c;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/e$c;->a:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/e$c;->a:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/h2;->h(ZZ)Lcom/google/common/collect/h2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/h2;->j()I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/e$c;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/e$c;->a(Lcom/google/android/exoplayer2/trackselection/e$c;)I

    move-result p1

    return p1
.end method
