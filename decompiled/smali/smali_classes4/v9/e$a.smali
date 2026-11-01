.class final Lv9/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/o1;

.field private final d:Lg9/k;

.field public e:Lcom/google/android/exoplayer2/o1;

.field private f:Lg9/e0;

.field private g:J


# direct methods
.method public constructor <init>(IILcom/google/android/exoplayer2/o1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv9/e$a;->a:I

    iput p2, p0, Lv9/e$a;->b:I

    iput-object p3, p0, Lv9/e$a;->c:Lcom/google/android/exoplayer2/o1;

    new-instance p1, Lg9/k;

    invoke-direct {p1}, Lg9/k;-><init>()V

    iput-object p1, p0, Lv9/e$a;->d:Lg9/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/g;IZI)I
    .locals 0

    iget-object p4, p0, Lv9/e$a;->f:Lg9/e0;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lg9/e0;

    invoke-interface {p4, p1, p2, p3}, Lg9/e0;->b(Lcom/google/android/exoplayer2/upstream/g;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/upstream/g;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lg9/d0;->a(Lg9/e0;Lcom/google/android/exoplayer2/upstream/g;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic c(Lcom/google/android/exoplayer2/util/d0;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg9/d0;->b(Lg9/e0;Lcom/google/android/exoplayer2/util/d0;I)V

    return-void
.end method

.method public d(JIIILg9/e0$a;)V
    .locals 8

    iget-wide v0, p0, Lv9/e$a;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lv9/e$a;->d:Lg9/k;

    iput-object v0, p0, Lv9/e$a;->f:Lg9/e0;

    :cond_0
    iget-object v0, p0, Lv9/e$a;->f:Lg9/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lg9/e0;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lg9/e0;->d(JIIILg9/e0$a;)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/o1;)V
    .locals 1

    iget-object v0, p0, Lv9/e$a;->c:Lcom/google/android/exoplayer2/o1;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/o1;->j(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lv9/e$a;->e:Lcom/google/android/exoplayer2/o1;

    iget-object p1, p0, Lv9/e$a;->f:Lg9/e0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg9/e0;

    iget-object v0, p0, Lv9/e$a;->e:Lcom/google/android/exoplayer2/o1;

    invoke-interface {p1, v0}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/util/d0;II)V
    .locals 0

    iget-object p3, p0, Lv9/e$a;->f:Lg9/e0;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg9/e0;

    invoke-interface {p3, p1, p2}, Lg9/e0;->c(Lcom/google/android/exoplayer2/util/d0;I)V

    return-void
.end method

.method public g(Lv9/g$b;J)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lv9/e$a;->d:Lg9/k;

    iput-object p1, p0, Lv9/e$a;->f:Lg9/e0;

    return-void

    :cond_0
    iput-wide p2, p0, Lv9/e$a;->g:J

    iget p2, p0, Lv9/e$a;->a:I

    iget p3, p0, Lv9/e$a;->b:I

    invoke-interface {p1, p2, p3}, Lv9/g$b;->track(II)Lg9/e0;

    move-result-object p1

    iput-object p1, p0, Lv9/e$a;->f:Lg9/e0;

    iget-object p2, p0, Lv9/e$a;->e:Lcom/google/android/exoplayer2/o1;

    if-eqz p2, :cond_1

    invoke-interface {p1, p2}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    :cond_1
    return-void
.end method
