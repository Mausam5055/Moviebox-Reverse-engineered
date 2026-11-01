.class public final Lcom/google/android/exoplayer2/source/rtsp/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method private constructor <init>(ILjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->a:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->c:I

    iput p4, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->d:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/a$c;
    .locals 6

    const-string v0, " "

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/p0;->T0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    aget-object v0, p0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/rtsp/y;->g(Ljava/lang/String;)I

    move-result v0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v4, "/"

    invoke-static {p0, v4}, Lcom/google/android/exoplayer2/util/p0;->S0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    if-lt v4, v3, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/y;->g(Ljava/lang/String;)I

    move-result v2

    array-length v4, p0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/rtsp/y;->g(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    new-instance v4, Lcom/google/android/exoplayer2/source/rtsp/a$c;

    aget-object p0, p0, v1

    invoke-direct {v4, v0, p0, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/a$c;-><init>(ILjava/lang/String;II)V

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/source/rtsp/a$c;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/a$c;

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a$c;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/rtsp/a$c;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->d:I

    iget p1, p1, Lcom/google/android/exoplayer2/source/rtsp/a$c;->d:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0xd9

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/source/rtsp/a$c;->d:I

    add-int/2addr v0, v1

    return v0
.end method
