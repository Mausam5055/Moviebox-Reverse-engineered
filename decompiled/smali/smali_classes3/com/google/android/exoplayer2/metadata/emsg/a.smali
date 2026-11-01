.class public final Lcom/google/android/exoplayer2/metadata/emsg/a;
.super Lcom/google/android/exoplayer2/metadata/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcom/google/android/exoplayer2/metadata/d;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-instance v0, Lcom/google/android/exoplayer2/util/d0;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/google/android/exoplayer2/util/d0;-><init>([BI)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/metadata/emsg/a;->c(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1
.end method

.method public c(Lcom/google/android/exoplayer2/util/d0;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->w()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->w()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->d()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->f()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p1
.end method
