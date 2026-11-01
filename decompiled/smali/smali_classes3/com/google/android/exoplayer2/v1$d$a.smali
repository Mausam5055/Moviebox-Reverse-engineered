.class public final Lcom/google/android/exoplayer2/v1$d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/v1$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/v1$d$a;->b:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/v1$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/exoplayer2/v1$d;->a:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/v1$d$a;->a:J

    iget-wide v0, p1, Lcom/google/android/exoplayer2/v1$d;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/v1$d$a;->b:J

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/v1$d;->c:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/v1$d$a;->c:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/v1$d;->d:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/v1$d$a;->d:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/v1$d;->e:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/v1$d$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v1$d;Lcom/google/android/exoplayer2/v1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/v1$d$a;-><init>(Lcom/google/android/exoplayer2/v1$d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/v1$d$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/v1$d$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/v1$d$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/v1$d$a;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/v1$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/v1$d$a;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/v1$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/v1$d$a;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/v1$d$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/v1$d$a;->e:Z

    return p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/v1$d;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/v1$d$a;->g()Lcom/google/android/exoplayer2/v1$e;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/android/exoplayer2/v1$e;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/v1$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/v1$e;-><init>(Lcom/google/android/exoplayer2/v1$d$a;Lcom/google/android/exoplayer2/v1$a;)V

    return-object v0
.end method

.method public h(J)Lcom/google/android/exoplayer2/v1$d$a;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/v1$d$a;->b:J

    return-object p0
.end method

.method public i(Z)Lcom/google/android/exoplayer2/v1$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/v1$d$a;->d:Z

    return-object p0
.end method

.method public j(Z)Lcom/google/android/exoplayer2/v1$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/v1$d$a;->c:Z

    return-object p0
.end method

.method public k(J)Lcom/google/android/exoplayer2/v1$d$a;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/v1$d$a;->a:J

    return-object p0
.end method

.method public l(Z)Lcom/google/android/exoplayer2/v1$d$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/v1$d$a;->e:Z

    return-object p0
.end method
