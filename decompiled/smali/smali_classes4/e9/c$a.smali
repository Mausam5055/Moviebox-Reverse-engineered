.class public final Le9/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/k3;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/source/o$b;

.field public final e:J

.field public final f:Lcom/google/android/exoplayer2/k3;

.field public final g:I

.field public final h:Lcom/google/android/exoplayer2/source/o$b;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;JLcom/google/android/exoplayer2/k3;ILcom/google/android/exoplayer2/source/o$b;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le9/c$a;->a:J

    iput-object p3, p0, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    iput p4, p0, Le9/c$a;->c:I

    iput-object p5, p0, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iput-wide p6, p0, Le9/c$a;->e:J

    iput-object p8, p0, Le9/c$a;->f:Lcom/google/android/exoplayer2/k3;

    iput p9, p0, Le9/c$a;->g:I

    iput-object p10, p0, Le9/c$a;->h:Lcom/google/android/exoplayer2/source/o$b;

    iput-wide p11, p0, Le9/c$a;->i:J

    iput-wide p13, p0, Le9/c$a;->j:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Le9/c$a;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Le9/c$a;

    iget-wide v2, p0, Le9/c$a;->a:J

    iget-wide v4, p1, Le9/c$a;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Le9/c$a;->c:I

    iget v3, p1, Le9/c$a;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Le9/c$a;->e:J

    iget-wide v4, p1, Le9/c$a;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Le9/c$a;->g:I

    iget v3, p1, Le9/c$a;->g:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Le9/c$a;->i:J

    iget-wide v4, p1, Le9/c$a;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Le9/c$a;->j:J

    iget-wide v4, p1, Le9/c$a;->j:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    iget-object v3, p1, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v3, p1, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le9/c$a;->f:Lcom/google/android/exoplayer2/k3;

    iget-object v3, p1, Le9/c$a;->f:Lcom/google/android/exoplayer2/k3;

    invoke-static {v2, v3}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le9/c$a;->h:Lcom/google/android/exoplayer2/source/o$b;

    iget-object p1, p1, Le9/c$a;->h:Lcom/google/android/exoplayer2/source/o$b;

    invoke-static {v2, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 12

    iget-wide v0, p0, Le9/c$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Le9/c$a;->b:Lcom/google/android/exoplayer2/k3;

    iget v2, p0, Le9/c$a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Le9/c$a;->d:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v4, p0, Le9/c$a;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Le9/c$a;->f:Lcom/google/android/exoplayer2/k3;

    iget v6, p0, Le9/c$a;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Le9/c$a;->h:Lcom/google/android/exoplayer2/source/o$b;

    iget-wide v8, p0, Le9/c$a;->i:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Le9/c$a;->j:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    invoke-static {v10}, Lcom/google/common/base/j;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
