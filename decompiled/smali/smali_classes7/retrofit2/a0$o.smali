.class final Lretrofit2/a0$o;
.super Lretrofit2/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation


# static fields
.field static final a:Lretrofit2/a0$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lretrofit2/a0$o;

    invoke-direct {v0}, Lretrofit2/a0$o;-><init>()V

    sput-object v0, Lretrofit2/a0$o;->a:Lretrofit2/a0$o;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lokhttp3/MultipartBody$Part;

    invoke-virtual {p0, p1, p2}, Lretrofit2/a0$o;->d(Lretrofit2/h0;Lokhttp3/MultipartBody$Part;)V

    return-void
.end method

.method d(Lretrofit2/h0;Lokhttp3/MultipartBody$Part;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lretrofit2/h0;->e(Lokhttp3/MultipartBody$Part;)V

    :cond_0
    return-void
.end method
