.class Lcom/mbridge/msdk/mbbanner/controll/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/mbbanner/common/listener/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/mbbanner/controll/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/controll/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/controll/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;ILcom/mbridge/msdk/foundation/error/b;)V

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/error/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;IZ)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->d(Lcom/mbridge/msdk/mbbanner/controll/a;)Lcom/mbridge/msdk/out/MBBannerView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->e(Lcom/mbridge/msdk/mbbanner/controll/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;Z)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;Lcom/mbridge/msdk/foundation/entity/CampaignUnit;)Lcom/mbridge/msdk/foundation/entity/CampaignUnit;

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;ILcom/mbridge/msdk/foundation/error/b;)V

    return-void
.end method

.method public b(Lcom/mbridge/msdk/foundation/error/b;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/error/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->a(Lcom/mbridge/msdk/mbbanner/controll/a;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbbanner/controll/a$b;->a:Lcom/mbridge/msdk/mbbanner/controll/a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/mbbanner/controll/a;->c()V

    return-void
.end method
