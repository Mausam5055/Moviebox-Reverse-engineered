.class public final Lcom/google/android/exoplayer2/upstream/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/upstream/d0;

.field public static final b:Lcom/google/android/exoplayer2/upstream/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/d0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/d0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/d0;->a:Lcom/google/android/exoplayer2/upstream/d0;

    new-instance v0, Lcom/google/android/exoplayer2/upstream/c0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/c0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/d0;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic f()Lcom/google/android/exoplayer2/upstream/d0;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/d0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/d0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/n;)J
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "PlaceholderDataSource cannot be opened"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 0

    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/j;->a(Lcom/google/android/exoplayer2/upstream/k;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public read([BII)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
