.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/mbridge/msdk/thrid/okio/f;

.field public static final e:Lcom/mbridge/msdk/thrid/okio/f;

.field public static final f:Lcom/mbridge/msdk/thrid/okio/f;

.field public static final g:Lcom/mbridge/msdk/thrid/okio/f;

.field public static final h:Lcom/mbridge/msdk/thrid/okio/f;

.field public static final i:Lcom/mbridge/msdk/thrid/okio/f;


# instance fields
.field public final a:Lcom/mbridge/msdk/thrid/okio/f;

.field public final b:Lcom/mbridge/msdk/thrid/okio/f;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->d:Lcom/mbridge/msdk/thrid/okio/f;

    const-string v0, ":status"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->e:Lcom/mbridge/msdk/thrid/okio/f;

    const-string v0, ":method"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->f:Lcom/mbridge/msdk/thrid/okio/f;

    const-string v0, ":path"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->g:Lcom/mbridge/msdk/thrid/okio/f;

    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->h:Lcom/mbridge/msdk/thrid/okio/f;

    const-string v0, ":authority"

    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->i:Lcom/mbridge/msdk/thrid/okio/f;

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/thrid/okio/f;Lcom/mbridge/msdk/thrid/okio/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->a:Lcom/mbridge/msdk/thrid/okio/f;

    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->b:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okio/f;->e()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/mbridge/msdk/thrid/okio/f;->e()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/thrid/okio/f;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;-><init>(Lcom/mbridge/msdk/thrid/okio/f;Lcom/mbridge/msdk/thrid/okio/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object p1

    invoke-static {p2}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;-><init>(Lcom/mbridge/msdk/thrid/okio/f;Lcom/mbridge/msdk/thrid/okio/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->a:Lcom/mbridge/msdk/thrid/okio/f;

    iget-object v2, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->a:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okio/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->b:Lcom/mbridge/msdk/thrid/okio/f;

    iget-object p1, p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->b:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/thrid/okio/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->a:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->b:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okio/f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->a:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okio/f;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->b:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okio/f;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "%s: %s"

    invoke-static {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
