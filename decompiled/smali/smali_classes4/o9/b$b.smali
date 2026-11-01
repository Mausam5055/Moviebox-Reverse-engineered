.class final Lo9/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo9/b$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lo9/b$b;->b:[B

    iput-wide p3, p0, Lo9/b$b;->c:J

    iput-wide p5, p0, Lo9/b$b;->d:J

    return-void
.end method

.method static synthetic a(Lo9/b$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo9/b$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lo9/b$b;)[B
    .locals 0

    iget-object p0, p0, Lo9/b$b;->b:[B

    return-object p0
.end method

.method static synthetic c(Lo9/b$b;)J
    .locals 2

    iget-wide v0, p0, Lo9/b$b;->d:J

    return-wide v0
.end method

.method static synthetic d(Lo9/b$b;)J
    .locals 2

    iget-wide v0, p0, Lo9/b$b;->c:J

    return-wide v0
.end method
