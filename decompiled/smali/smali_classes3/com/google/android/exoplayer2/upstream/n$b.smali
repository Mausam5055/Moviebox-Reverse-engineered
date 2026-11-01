.class public final Lcom/google/android/exoplayer2/upstream/n$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:J

.field private c:I

.field private d:[B

.field private e:Ljava/util/Map;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->c:I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->e:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->g:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/n;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/n;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->a:Landroid/net/Uri;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/n;->b:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->b:J

    iget v0, p1, Lcom/google/android/exoplayer2/upstream/n;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->c:I

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/n;->d:[B

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->d:[B

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/n;->e:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->e:Ljava/util/Map;

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/n;->g:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->f:J

    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/n;->h:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->g:J

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/n;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->h:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/exoplayer2/upstream/n;->j:I

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/n$b;->i:I

    iget-object p1, p1, Lcom/google/android/exoplayer2/upstream/n;->k:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->j:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/n;Lcom/google/android/exoplayer2/upstream/n$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/n$b;-><init>(Lcom/google/android/exoplayer2/upstream/n;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/n;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/upstream/n$b;->a:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/n;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/n$b;->a:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/upstream/n$b;->b:J

    iget v7, v0, Lcom/google/android/exoplayer2/upstream/n$b;->c:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/upstream/n$b;->d:[B

    iget-object v9, v0, Lcom/google/android/exoplayer2/upstream/n$b;->e:Ljava/util/Map;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/upstream/n$b;->f:J

    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/n$b;->g:J

    iget-object v14, v0, Lcom/google/android/exoplayer2/upstream/n$b;->h:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/exoplayer2/upstream/n$b;->i:I

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/n$b;->j:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/upstream/n$a;)V

    return-object v1
.end method

.method public b(I)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->i:I

    return-object p0
.end method

.method public c([B)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->d:[B

    return-object p0
.end method

.method public d(I)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->c:I

    return-object p0
.end method

.method public e(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->e:Ljava/util/Map;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(J)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->g:J

    return-object p0
.end method

.method public h(J)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->f:J

    return-object p0
.end method

.method public i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public k(J)Lcom/google/android/exoplayer2/upstream/n$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/n$b;->b:J

    return-object p0
.end method
