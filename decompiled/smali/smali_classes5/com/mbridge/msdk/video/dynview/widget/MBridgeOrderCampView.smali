.class public Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;
.super Lcom/mbridge/msdk/video/module/MBridgeBaseView;


# instance fields
.field private m:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Lcom/mbridge/msdk/widget/FeedBackButton;

.field private u:Landroid/widget/ImageView;

.field private v:Z

.field private w:Lcom/mbridge/msdk/video/dynview/listener/c;

.field private x:Lcom/mbridge/msdk/video/dynview/listener/b;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->v:Z

    new-instance v0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$a;-><init>(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)V

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->w:Lcom/mbridge/msdk/video/dynview/listener/c;

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->y:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->v:Z

    new-instance p2, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$a;

    invoke-direct {p2, p0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$a;-><init>(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)V

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->w:Lcom/mbridge/msdk/video/dynview/listener/c;

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->y:Z

    return-void
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;II)V
    .locals 8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isDynamicView()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx$c;->f()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v7, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "order_view_click"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBridgeBaseView"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    sget-object v0, Lcom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a(I)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "camp_position"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, p1

    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz p2, :cond_2

    const/16 p3, 0x69

    invoke-interface {p2, p3, p1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->g()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;II)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->m:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Lcom/mbridge/msdk/video/dynview/listener/b;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->x:Lcom/mbridge/msdk/video/dynview/listener/b;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->a:Landroid/content/Context;

    return-object p0
.end method

.method private e()V
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0, v2, v5}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->t:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$c;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$c;-><init>(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;)V

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b;->b()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->t:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/widget/FeedBackButton;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->t:Lcom/mbridge/msdk/widget/FeedBackButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->t:Lcom/mbridge/msdk/widget/FeedBackButton;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->u:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->u:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->u:Landroid/widget/ImageView;

    new-instance v2, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$d;

    invoke-direct {v2, p0, v0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$d;-><init>(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 4

    const-string v0, "MBridgeBaseView"

    :try_start_0
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    const-string v2, "type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v2

    const-string v3, "2000152"

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    const-string v2, "2000134"

    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/video/dynview/moffer/a;->a()Lcom/mbridge/msdk/video/dynview/moffer/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/dynview/moffer/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v0, :cond_0

    const/16 v1, 0x68

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->x:Lcom/mbridge/msdk/video/dynview/listener/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/mbridge/msdk/video/dynview/listener/b;->b()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->w:Lcom/mbridge/msdk/video/dynview/listener/c;

    const-string v2, "order_view_callback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/mbridge/msdk/video/dynview/wrapper/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/video/dynview/wrapper/c;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/video/dynview/wrapper/c;->b(Landroid/content/Context;Ljava/util/List;)Lcom/mbridge/msdk/video/dynview/c;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/b;->a()Lcom/mbridge/msdk/video/dynview/b;

    move-result-object v2

    new-instance v3, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;

    invoke-direct {v3, p0, p1}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView$b;-><init>(Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v1, v3, v0}, Lcom/mbridge/msdk/video/dynview/b;->a(Lcom/mbridge/msdk/video/dynview/c;Lcom/mbridge/msdk/video/dynview/listener/h;Ljava/util/Map;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->m:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "camp_position"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    if-eqz v2, :cond_1

    const/16 v3, 0x6e

    invoke-interface {v2, v3, v1}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setCampOrderViewBuildCallback(Lcom/mbridge/msdk/video/dynview/listener/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->x:Lcom/mbridge/msdk/video/dynview/listener/b;

    return-void
.end method

.method public setCampaignExes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->n:Ljava/util/List;

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->o:I

    iput p2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->p:I

    iput p3, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->q:I

    iput p4, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->r:I

    invoke-virtual {p0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->setViewStatus()V

    return-void
.end method

.method public setRewarded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->y:Z

    return-void
.end method

.method public setViewStatus()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->m:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->y:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->v:Z

    const-string v2, "mbridge_native_order_camp_controller"

    invoke-virtual {p0, v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->m:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->v:Z

    const-string v3, "mbridge_native_order_camp_feed_btn"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/widget/FeedBackButton;

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->t:Lcom/mbridge/msdk/widget/FeedBackButton;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->m:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    iget-boolean v2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->v:Z

    const-string v3, "mbridge_iv_link"

    invoke-virtual {p0, v2, v3}, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->filterFindViewId(ZLjava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->o:I

    iget v2, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->q:I

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->p:I

    iget v4, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->r:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->t:Lcom/mbridge/msdk/widget/FeedBackButton;

    const-string v1, "MBridgeBaseView"

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :try_start_1
    invoke-direct {p0}, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startAlphaAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->m:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startTranslateAnimation()V
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;->m:Lcom/mbridge/msdk/video/dynview/widget/MBridgeOrderCampView;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
