.class public Lcom/transsion/gslb/ListenerBean;
.super Ljava/lang/Object;


# instance fields
.field public domains:[Ljava/lang/String;

.field public gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

.field public gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

.field public initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

.field public isNewDomainListener:Z

.field public isNewInitListener:Z

.field public resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$ResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/gslb/ListenerBean;->resultListener:Lcom/transsion/gslb/GslbSdk$ResultListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/transsion/gslb/GslbSdk$GetDomainListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/gslb/ListenerBean;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/gslb/ListenerBean;->gslbDomainListener:Lcom/transsion/gslb/GslbSdk$GetDomainListener;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/gslb/ListenerBean;->isNewDomainListener:Z

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/transsion/gslb/ListenerBean;->gslbInitListener:Lcom/transsion/gslb/GslbSdk$GslbInitListener;

    iput-object p2, p0, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/gslb/ListenerBean;->isNewInitListener:Z

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/gslb/ListenerBean;->domains:[Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/gslb/ListenerBean;->initListener:Lcom/transsion/gslb/GslbSdk$InitListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/gslb/ListenerBean;->isNewInitListener:Z

    return-void
.end method
