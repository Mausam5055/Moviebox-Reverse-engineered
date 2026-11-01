.class public final Lcom/squareup/okhttp/internal/DiskLruCache$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Lokio/Source;

.field private final d:[J

.field final synthetic e:Lcom/squareup/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->b:J

    iput-object p5, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->c:[Lokio/Source;

    iput-object p6, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[JLcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/DiskLruCache$f;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/DiskLruCache$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->c:[Lokio/Source;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/squareup/okhttp/internal/g;->c(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()Lcom/squareup/okhttp/internal/DiskLruCache$d;
    .locals 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->e:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/DiskLruCache;->k(Lcom/squareup/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/DiskLruCache$d;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Lokio/Source;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$f;->c:[Lokio/Source;

    aget-object p1, v0, p1

    return-object p1
.end method
