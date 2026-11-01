.class final Lf3/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf3/b$a;->a:J

    iput-wide p3, p0, Lf3/b$a;->b:J

    return-void
.end method

.method static synthetic a(Lf3/b$a;)J
    .locals 2

    iget-wide v0, p0, Lf3/b$a;->b:J

    return-wide v0
.end method

.method static synthetic b(Lf3/b$a;)J
    .locals 2

    iget-wide v0, p0, Lf3/b$a;->a:J

    return-wide v0
.end method
