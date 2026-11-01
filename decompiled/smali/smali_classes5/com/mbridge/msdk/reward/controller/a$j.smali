.class public Lcom/mbridge/msdk/reward/controller/a$j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/reward/controller/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/reward/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$j;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$j;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/controller/a;->l(Lcom/mbridge/msdk/reward/controller/a;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/reward/controller/a;->a(Lcom/mbridge/msdk/reward/controller/a;I)I

    iget-object v0, p0, Lcom/mbridge/msdk/reward/controller/a$j;->a:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/reward/controller/a;->u(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/mbridge/msdk/reward/controller/a;->b(ZLjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    return-void
.end method
