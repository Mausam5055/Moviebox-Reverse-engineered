.class public final Landroidx/media3/datasource/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/datasource/a;


# static fields
.field public static final a:Landroidx/media3/datasource/f;

.field public static final b:Landroidx/media3/datasource/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/datasource/f;

    invoke-direct {v0}, Landroidx/media3/datasource/f;-><init>()V

    sput-object v0, Landroidx/media3/datasource/f;->a:Landroidx/media3/datasource/f;

    new-instance v0, Lw1/j;

    invoke-direct {v0}, Lw1/j;-><init>()V

    sput-object v0, Landroidx/media3/datasource/f;->b:Landroidx/media3/datasource/a$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d()Landroidx/media3/datasource/f;
    .locals 1

    new-instance v0, Landroidx/media3/datasource/f;

    invoke-direct {v0}, Landroidx/media3/datasource/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lw1/h;)J
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "PlaceholderDataSource cannot be opened"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lw1/n;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lw1/e;->a(Landroidx/media3/datasource/a;)Ljava/util/Map;

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
