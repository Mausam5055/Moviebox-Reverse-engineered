.class public Lcom/amazonaws/ClientConfiguration;
.super Ljava/lang/Object;


# static fields
.field public static final u:Ljava/lang/String;

.field public static final v:Lcom/amazonaws/retry/RetryPolicy;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/amazonaws/retry/RetryPolicy;

.field private e:Lcom/amazonaws/Protocol;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljavax/net/ssl/TrustManager;

.field private s:Z

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->u:Ljava/lang/String;

    sget-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->b:Lcom/amazonaws/retry/RetryPolicy;

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->v:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/amazonaws/ClientConfiguration;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->c:I

    sget-object v1, Lcom/amazonaws/ClientConfiguration;->v:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->d:Lcom/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->e:Lcom/amazonaws/Protocol;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->f:Ljava/lang/String;

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->g:I

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->k:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->l:I

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->m:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->n:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->o:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->p:I

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->r:Ljavax/net/ssl/TrustManager;

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->s:Z

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->t:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->n:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->c:I

    return v0
.end method

.method public c()Lcom/amazonaws/Protocol;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->e:Lcom/amazonaws/Protocol;

    return-object v0
.end method

.method public d()Lcom/amazonaws/retry/RetryPolicy;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->d:Lcom/amazonaws/retry/RetryPolicy;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->q:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->m:I

    return v0
.end method

.method public g()Ljavax/net/ssl/TrustManager;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->r:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->s:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->t:Z

    return v0
.end method
