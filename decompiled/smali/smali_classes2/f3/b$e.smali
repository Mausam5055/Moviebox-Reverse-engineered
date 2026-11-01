.class final Lf3/b$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf3/b$e;->a:J

    iput-wide p3, p0, Lf3/b$e;->b:J

    iput-object p5, p0, Lf3/b$e;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lf3/b$e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf3/b$e;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lf3/b$e;)J
    .locals 2

    iget-wide v0, p0, Lf3/b$e;->a:J

    return-wide v0
.end method

.method static synthetic c(Lf3/b$e;)J
    .locals 2

    iget-wide v0, p0, Lf3/b$e;->b:J

    return-wide v0
.end method
