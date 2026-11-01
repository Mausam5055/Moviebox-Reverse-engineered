.class public Lf8/c;
.super Ljava/lang/Object;

# interfaces
.implements Lf8/b;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lf8/c;->a:J

    return-void
.end method


# virtual methods
.method public b(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lf8/c;->a:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
