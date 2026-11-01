.class public final Lng/c;
.super Ljava/lang/Object;

# interfaces
.implements Lg8/a;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lng/c;->a:J

    const v0, 0x5265c00

    iput v0, p0, Lng/c;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lng/c;->c:J

    return-void
.end method

.method private final b(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iget-wide v3, p0, Lng/c;->c:J

    sub-long/2addr v3, v1

    iget p1, p0, Lng/c;->b:I

    int-to-long v1, p1

    div-long/2addr v3, v1

    const-wide/16 v1, 0xf

    cmp-long p1, v3, v1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lng/c;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lng/c;->a:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
