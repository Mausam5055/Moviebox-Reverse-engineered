.class public final Lcom/transsion/api/gateway/config/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/api/gateway/config/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;

.field public i:I

.field public j:Ljava/util/List;

.field public k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->a:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/api/gateway/config/a$a;->c:Z

    const v1, 0xea60

    iput v1, p0, Lcom/transsion/api/gateway/config/a$a;->d:I

    const-wide/32 v1, 0x36ee80

    iput-wide v1, p0, Lcom/transsion/api/gateway/config/a$a;->e:J

    iput-wide v1, p0, Lcom/transsion/api/gateway/config/a$a;->f:J

    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->i:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/api/gateway/config/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a;->a:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->a:Z

    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a;->b:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->b:Z

    iget-boolean v0, p1, Lcom/transsion/api/gateway/config/a;->c:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->c:Z

    iget v0, p1, Lcom/transsion/api/gateway/config/a;->d:I

    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->d:I

    iget-wide v0, p1, Lcom/transsion/api/gateway/config/a;->e:J

    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a$a;->e:J

    iget-wide v0, p1, Lcom/transsion/api/gateway/config/a;->g:J

    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a$a;->f:J

    iget-object v0, p1, Lcom/transsion/api/gateway/config/a;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->j:Ljava/util/List;

    iget-object v0, p1, Lcom/transsion/api/gateway/config/a;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->k:Ljava/util/List;

    iget v0, p1, Lcom/transsion/api/gateway/config/a;->f:I

    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->i:I

    iget-object v0, p1, Lcom/transsion/api/gateway/config/a;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/api/gateway/config/a;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/api/gateway/config/a$a;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/api/gateway/bean/RemoteConfig;)Lcom/transsion/api/gateway/config/a$a;
    .locals 2

    iget-boolean v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->activateGatewayDns:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->a:Z

    iget-boolean v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->useGateway:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->b:Z

    iget-boolean v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->activateTracking:Z

    iput-boolean v0, p0, Lcom/transsion/api/gateway/config/a$a;->c:Z

    iget v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->requestTimeout:I

    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->d:I

    iget-wide v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->refreshInterval:J

    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a$a;->e:J

    iget-wide v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->metricsInterval:J

    iput-wide v0, p0, Lcom/transsion/api/gateway/config/a$a;->f:J

    iget-object v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->useGatewayHostList:Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->j:Ljava/util/List;

    iget-object v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->gatewayStrategy:Ljava/util/List;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->k:Ljava/util/List;

    iget v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->configVersion:I

    iput v0, p0, Lcom/transsion/api/gateway/config/a$a;->i:I

    iget-object v0, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->gatewayHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/api/gateway/config/a$a;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/api/gateway/bean/RemoteConfig;->gatewayIp:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/api/gateway/config/a$a;->h:Ljava/util/List;

    return-object p0
.end method
