.class Lcom/mbridge/msdk/mbnative/controller/NativeController$n$a;
.super Lcom/mbridge/msdk/foundation/same/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Lcom/mbridge/msdk/mbnative/controller/NativeController$n;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbnative/controller/NativeController$n;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n$a;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$n;

    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n$a;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$n$a;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController$n;

    iget-object v1, v1, Lcom/mbridge/msdk/mbnative/controller/NativeController$n;->g:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {v1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->p(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/mbridge/msdk/mbnative/report/a;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    return-void
.end method
