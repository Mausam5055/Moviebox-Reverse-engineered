.class public Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/infra/gateway/core/bean/RequestBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private accept:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private key:Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

.field private method:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->accept:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->body:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->key:Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->accept:Ljava/lang/String;

    return-object p0
.end method

.method public body(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->body:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/transsion/infra/gateway/core/bean/RequestBean;
    .locals 1

    new-instance v0, Lcom/transsion/infra/gateway/core/bean/RequestBean;

    invoke-direct {v0, p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;-><init>(Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;)V

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public key(Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->key:Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    return-object p0
.end method

.method public method(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/bean/RequestBean$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
