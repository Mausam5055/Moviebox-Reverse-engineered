.class public Lcom/mbridge/msdk/mbbanner/common/util/a;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/lang/String; = "a"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbbanner/common/util/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a;->b:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/util/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postCampaignSuccess unitId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/util/a$a;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/mbridge/msdk/mbbanner/common/util/a$a;-><init>(Lcom/mbridge/msdk/mbbanner/common/util/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/util/a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/util/a$b;-><init>(Lcom/mbridge/msdk/mbbanner/common/util/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/mbridge/msdk/mbbanner/common/listener/b;Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/util/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postResourceSuccess unitId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/util/a$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mbridge/msdk/mbbanner/common/util/a$c;-><init>(Lcom/mbridge/msdk/mbbanner/common/util/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/mbbanner/common/util/a;->b:Z

    return-void
.end method

.method public b(Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 3

    sget-object v0, Lcom/mbridge/msdk/mbbanner/common/util/a;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postResourceFail unitId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/util/a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mbridge/msdk/mbbanner/common/util/a$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/mbbanner/common/util/a$d;-><init>(Lcom/mbridge/msdk/mbbanner/common/util/a;Lcom/mbridge/msdk/mbbanner/common/listener/b;Lcom/mbridge/msdk/foundation/error/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
