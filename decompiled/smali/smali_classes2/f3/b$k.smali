.class final Lf3/b$k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final a:I

.field private final b:J

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lf3/b$k;->a:I

    iput-wide p2, p0, Lf3/b$k;->b:J

    iput p4, p0, Lf3/b$k;->c:I

    iput p5, p0, Lf3/b$k;->d:I

    return-void
.end method

.method static synthetic a(Lf3/b$k;)J
    .locals 2

    iget-wide v0, p0, Lf3/b$k;->b:J

    return-wide v0
.end method

.method static synthetic b(Lf3/b$k;)I
    .locals 0

    iget p0, p0, Lf3/b$k;->a:I

    return p0
.end method

.method static synthetic c(Lf3/b$k;)I
    .locals 0

    iget p0, p0, Lf3/b$k;->d:I

    return p0
.end method

.method static synthetic d(Lf3/b$k;)I
    .locals 0

    iget p0, p0, Lf3/b$k;->c:I

    return p0
.end method
