.class public final Lco/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/d$a;
    }
.end annotation


# static fields
.field public static final a:Lco/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lco/d;

    invoke-direct {v0}, Lco/d;-><init>()V

    sput-object v0, Lco/d;->a:Lco/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/util/Map;)Landroidx/media3/datasource/HttpDataSource$a;
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lx1/a$b;

    sget-object v0, Lco/d$a;->a:Lco/d$a;

    invoke-virtual {v0}, Lco/d$a;->f()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lx1/a$b;-><init>(Lokhttp3/Call$Factory;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/datasource/c$b;

    invoke-direct {p1}, Landroidx/media3/datasource/c$b;-><init>()V

    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p1, p2}, Landroidx/media3/datasource/HttpDataSource$a;->a(Ljava/util/Map;)Landroidx/media3/datasource/HttpDataSource$a;

    :cond_2
    return-object p1
.end method
