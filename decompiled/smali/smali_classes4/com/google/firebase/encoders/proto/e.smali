.class public Lcom/google/firebase/encoders/proto/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/proto/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Lbc/c;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lbc/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/encoders/proto/e;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/firebase/encoders/proto/e;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/firebase/encoders/proto/e;->c:Lbc/c;

    return-void
.end method

.method public static a()Lcom/google/firebase/encoders/proto/e$a;
    .locals 1

    new-instance v0, Lcom/google/firebase/encoders/proto/e$a;

    invoke-direct {v0}, Lcom/google/firebase/encoders/proto/e$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 4

    new-instance v0, Lcom/google/firebase/encoders/proto/d;

    iget-object v1, p0, Lcom/google/firebase/encoders/proto/e;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/firebase/encoders/proto/e;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/firebase/encoders/proto/e;->c:Lbc/c;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/google/firebase/encoders/proto/d;-><init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Lbc/c;)V

    invoke-virtual {v0, p1}, Lcom/google/firebase/encoders/proto/d;->t(Ljava/lang/Object;)Lcom/google/firebase/encoders/proto/d;

    return-void
.end method

.method public c(Ljava/lang/Object;)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/encoders/proto/e;->b(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
