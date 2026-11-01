.class public final Lt9/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/exoplayer2/o1;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lt9/i;-><init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/exoplayer2/o1;ILjava/lang/Object;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt9/i;->a:I

    iput p2, p0, Lt9/i;->b:I

    iput-object p3, p0, Lt9/i;->c:Lcom/google/android/exoplayer2/o1;

    iput p4, p0, Lt9/i;->d:I

    iput-object p5, p0, Lt9/i;->e:Ljava/lang/Object;

    iput-wide p6, p0, Lt9/i;->f:J

    iput-wide p8, p0, Lt9/i;->g:J

    return-void
.end method
