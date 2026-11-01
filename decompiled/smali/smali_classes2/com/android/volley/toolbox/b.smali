.class public Lcom/android/volley/toolbox/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/f;


# instance fields
.field protected final a:Lcom/android/volley/toolbox/f;

.field private final b:Lcom/android/volley/toolbox/a;

.field protected final c:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/a;)V
    .locals 2

    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/b;-><init>(Lcom/android/volley/toolbox/a;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/a;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/b;->b:Lcom/android/volley/toolbox/a;

    iput-object p1, p0, Lcom/android/volley/toolbox/b;->a:Lcom/android/volley/toolbox/f;

    iput-object p2, p0, Lcom/android/volley/toolbox/b;->c:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/g;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/c$a;

    move-result-object v0

    invoke-static {v0}, Lcom/android/volley/toolbox/d;->c(Lcom/android/volley/c$a;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Lcom/android/volley/toolbox/b;->b:Lcom/android/volley/toolbox/a;

    invoke-virtual {v3, v8, v0}, Lcom/android/volley/toolbox/a;->a(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/e;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v3}, Lcom/android/volley/toolbox/e;->d()I

    move-result v12

    invoke-virtual {v3}, Lcom/android/volley/toolbox/e;->c()Ljava/util/List;

    move-result-object v0

    const/16 v4, 0x130

    if-ne v12, v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-static {v8, v4, v5, v0}, Lcom/android/volley/toolbox/l;->b(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/g;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v2

    move-object v6, v3

    move-object v3, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/android/volley/toolbox/e;->a()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/volley/toolbox/e;->b()I

    move-result v5

    iget-object v6, v1, Lcom/android/volley/toolbox/b;->c:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-static {v4, v5, v6}, Lcom/android/volley/toolbox/l;->c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    new-array v2, v4, [B

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v9

    invoke-static {v4, v5, v8, v2, v12}, Lcom/android/volley/toolbox/l;->d(JLcom/android/volley/Request;[BI)V

    const/16 v4, 0xc8

    if-lt v12, v4, :cond_2

    const/16 v4, 0x12b

    if-gt v12, v4, :cond_2

    new-instance v4, Lcom/android/volley/g;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v15, v5, v9

    const/4 v14, 0x0

    move-object v11, v4

    move-object v13, v2

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    return-object v4

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v6, v2

    move-object v7, v6

    :goto_2
    move-object/from16 v2, p1

    move-wide v4, v9

    invoke-static/range {v2 .. v7}, Lcom/android/volley/toolbox/l;->e(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/e;[B)Lcom/android/volley/toolbox/l$b;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/volley/toolbox/l;->a(Lcom/android/volley/Request;Lcom/android/volley/toolbox/l$b;)V

    goto :goto_0
.end method
