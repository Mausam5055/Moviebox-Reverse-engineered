.class public final Lv9/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lt9/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Lv9/i;

.field private final b:Lcom/google/android/exoplayer2/source/a0;

.field private final c:I

.field private d:Z

.field final synthetic e:Lv9/i;


# direct methods
.method public constructor <init>(Lv9/i;Lv9/i;Lcom/google/android/exoplayer2/source/a0;I)V
    .locals 0

    iput-object p1, p0, Lv9/i$a;->e:Lv9/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv9/i$a;->a:Lv9/i;

    iput-object p3, p0, Lv9/i$a;->b:Lcom/google/android/exoplayer2/source/a0;

    iput p4, p0, Lv9/i$a;->c:I

    return-void
.end method

.method private a()V
    .locals 8

    iget-boolean v0, p0, Lv9/i$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {v0}, Lv9/i;->k(Lv9/i;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v1

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {v0}, Lv9/i;->g(Lv9/i;)[I

    move-result-object v0

    iget v2, p0, Lv9/i$a;->c:I

    aget v2, v0, v2

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {v0}, Lv9/i;->h(Lv9/i;)[Lcom/google/android/exoplayer2/o1;

    move-result-object v0

    iget v3, p0, Lv9/i$a;->c:I

    aget-object v3, v0, v3

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {v0}, Lv9/i;->i(Lv9/i;)J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/p$a;->i(ILcom/google/android/exoplayer2/o1;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv9/i$a;->d:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {v0}, Lv9/i;->f(Lv9/i;)[Z

    move-result-object v0

    iget v1, p0, Lv9/i$a;->c:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {v0}, Lv9/i;->f(Lv9/i;)[Z

    move-result-object v0

    iget v1, p0, Lv9/i$a;->c:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 3

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-virtual {v0}, Lv9/i;->u()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {v0}, Lv9/i;->d(Lv9/i;)Lv9/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {v0}, Lv9/i;->d(Lv9/i;)Lv9/a;

    move-result-object v0

    iget v2, p0, Lv9/i$a;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lv9/a;->g(I)I

    move-result v0

    iget-object v2, p0, Lv9/i$a;->b:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lv9/i$a;->a()V

    iget-object v0, p0, Lv9/i$a;->b:Lcom/google/android/exoplayer2/source/a0;

    iget-object v1, p0, Lv9/i$a;->e:Lv9/i;

    iget-boolean v1, v1, Lv9/i;->w:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/exoplayer2/source/a0;->S(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-virtual {v0}, Lv9/i;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv9/i$a;->b:Lcom/google/android/exoplayer2/source/a0;

    iget-object v1, p0, Lv9/i$a;->e:Lv9/i;

    iget-boolean v1, v1, Lv9/i;->w:Z

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/a0;->K(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public skipData(J)I
    .locals 2

    iget-object v0, p0, Lv9/i$a;->e:Lv9/i;

    invoke-virtual {v0}, Lv9/i;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lv9/i$a;->b:Lcom/google/android/exoplayer2/source/a0;

    iget-object v1, p0, Lv9/i$a;->e:Lv9/i;

    iget-boolean v1, v1, Lv9/i;->w:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/a0;->E(JZ)I

    move-result p1

    iget-object p2, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {p2}, Lv9/i;->d(Lv9/i;)Lv9/a;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lv9/i$a;->e:Lv9/i;

    invoke-static {p2}, Lv9/i;->d(Lv9/i;)Lv9/a;

    move-result-object p2

    iget v0, p0, Lv9/i$a;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lv9/a;->g(I)I

    move-result p2

    iget-object v0, p0, Lv9/i$a;->b:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/a0;->C()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    iget-object p2, p0, Lv9/i$a;->b:Lcom/google/android/exoplayer2/source/a0;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/a0;->e0(I)V

    if-lez p1, :cond_2

    invoke-direct {p0}, Lv9/i$a;->a()V

    :cond_2
    return p1
.end method
