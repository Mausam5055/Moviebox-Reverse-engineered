.class final Lq2/b$b;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/e$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ll2/b0;

.field private final b:I

.field private final c:Ll2/y$a;


# direct methods
.method private constructor <init>(Ll2/b0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/b$b;->a:Ll2/b0;

    iput p2, p0, Lq2/b$b;->b:I

    new-instance p1, Ll2/y$a;

    invoke-direct {p1}, Ll2/y$a;-><init>()V

    iput-object p1, p0, Lq2/b$b;->c:Ll2/y$a;

    return-void
.end method

.method synthetic constructor <init>(Ll2/b0;ILq2/b$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lq2/b$b;-><init>(Ll2/b0;I)V

    return-void
.end method

.method private c(Ll2/s;)J
    .locals 6

    :goto_0
    invoke-interface {p1}, Ll2/s;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lq2/b$b;->a:Ll2/b0;

    iget v1, p0, Lq2/b$b;->b:I

    iget-object v2, p0, Lq2/b$b;->c:Ll2/y$a;

    invoke-static {p1, v0, v1, v2}, Ll2/y;->h(Ll2/s;Ll2/b0;ILl2/y$a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ll2/s;->advancePeekPosition(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ll2/s;->getPeekPosition()J

    move-result-wide v0

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-interface {p1}, Ll2/s;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Ll2/s;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ll2/s;->advancePeekPosition(I)V

    iget-object p1, p0, Lq2/b$b;->a:Ll2/b0;

    iget-wide v0, p1, Ll2/b0;->j:J

    return-wide v0

    :cond_1
    iget-object p1, p0, Lq2/b$b;->c:Ll2/y$a;

    iget-wide v0, p1, Ll2/y$a;->a:J

    return-wide v0
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    invoke-static {p0}, Ll2/f;->a(Ll2/e$f;)V

    return-void
.end method

.method public b(Ll2/s;J)Ll2/e$e;
    .locals 10

    invoke-interface {p1}, Ll2/s;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lq2/b$b;->c(Ll2/s;)J

    move-result-wide v2

    invoke-interface {p1}, Ll2/s;->getPeekPosition()J

    move-result-wide v4

    iget-object v6, p0, Lq2/b$b;->a:Ll2/b0;

    iget v6, v6, Ll2/b0;->c:I

    const/4 v7, 0x6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-interface {p1, v6}, Ll2/s;->advancePeekPosition(I)V

    invoke-direct {p0, p1}, Lq2/b$b;->c(Ll2/s;)J

    move-result-wide v6

    invoke-interface {p1}, Ll2/s;->getPeekPosition()J

    move-result-wide v8

    cmp-long p1, v2, p2

    if-gtz p1, :cond_0

    cmp-long p1, v6, p2

    if-lez p1, :cond_0

    invoke-static {v4, v5}, Ll2/e$e;->e(J)Ll2/e$e;

    move-result-object p1

    return-object p1

    :cond_0
    cmp-long p1, v6, p2

    if-gtz p1, :cond_1

    invoke-static {v6, v7, v8, v9}, Ll2/e$e;->f(JJ)Ll2/e$e;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v2, v3, v0, v1}, Ll2/e$e;->d(JJ)Ll2/e$e;

    move-result-object p1

    return-object p1
.end method
