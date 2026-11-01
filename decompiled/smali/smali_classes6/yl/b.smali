.class public abstract Lyl/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/Object;

.field protected c:Ljava/util/Map;

.field protected d:Z

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Ljavax/net/ssl/SSLSocketFactory;

.field protected i:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lyl/b;->c:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyl/b;->d:Z

    const/16 v0, 0x2710

    iput v0, p0, Lyl/b;->e:I

    iput v0, p0, Lyl/b;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyl/b;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lyl/b;
    .locals 0

    iput p1, p0, Lyl/b;->e:I

    return-object p0
.end method

.method public b(Z)Lyl/b;
    .locals 0

    iput-boolean p1, p0, Lyl/b;->d:Z

    return-object p0
.end method

.method public c(I)Lyl/b;
    .locals 0

    iput p1, p0, Lyl/b;->f:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lyl/b;
    .locals 0

    iput-object p1, p0, Lyl/b;->a:Ljava/lang/String;

    return-object p0
.end method
