.class public Lcom/amazonaws/util/URIBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    invoke-virtual {v0}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/util/URIBuilder;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/net/URI;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lcom/amazonaws/util/URIBuilder;->d:I

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/util/URIBuilder;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/util/URIBuilder;->g:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/net/URI;)Lcom/amazonaws/util/URIBuilder;
    .locals 1

    new-instance v0, Lcom/amazonaws/util/URIBuilder;

    invoke-direct {v0, p0}, Lcom/amazonaws/util/URIBuilder;-><init>(Ljava/net/URI;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .locals 9

    new-instance v8, Ljava/net/URI;

    iget-object v1, p0, Lcom/amazonaws/util/URIBuilder;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/util/URIBuilder;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/util/URIBuilder;->c:Ljava/lang/String;

    iget v4, p0, Lcom/amazonaws/util/URIBuilder;->d:I

    iget-object v5, p0, Lcom/amazonaws/util/URIBuilder;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/util/URIBuilder;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazonaws/util/URIBuilder;->g:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public c(Ljava/lang/String;)Lcom/amazonaws/util/URIBuilder;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/util/URIBuilder;->c:Ljava/lang/String;

    return-object p0
.end method
