.class final Lcom/google/android/exoplayer2/l1$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lt9/t;

.field private final c:I

.field private final d:J


# direct methods
.method private constructor <init>(Ljava/util/List;Lt9/t;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/l1$b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/exoplayer2/l1$b;->b:Lt9/t;

    iput p3, p0, Lcom/google/android/exoplayer2/l1$b;->c:I

    iput-wide p4, p0, Lcom/google/android/exoplayer2/l1$b;->d:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lt9/t;IJLcom/google/android/exoplayer2/l1$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/l1$b;-><init>(Ljava/util/List;Lt9/t;IJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/l1$b;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/l1$b;->c:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/l1$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/l1$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/l1$b;)Lt9/t;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/l1$b;->b:Lt9/t;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/l1$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/l1$b;->d:J

    return-wide v0
.end method
