.class public Lcom/mbridge/msdk/foundation/feedback/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/feedback/b$b;
    }
.end annotation


# static fields
.field public static d:I = -0x2

.field public static e:I = -0x2

.field public static volatile f:Z


# instance fields
.field private final a:Landroid/widget/RelativeLayout$LayoutParams;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/feedback/bean/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mbridge/msdk/setting/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/mbridge/msdk/foundation/feedback/b;->e:I

    sget v2, Lcom/mbridge/msdk/foundation/feedback/b;->d:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->a:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/feedback/b$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/feedback/b;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static b()Lcom/mbridge/msdk/foundation/feedback/b;
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/foundation/feedback/b$b;->a()Lcom/mbridge/msdk/foundation/feedback/b;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/feedback/bean/a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v0, v1

    :goto_0
    :try_start_1
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_1

    check-cast p1, Landroid/app/Activity;

    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->a()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, p1

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/mbridge/msdk/widget/FeedBackButton;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->i()Lcom/mbridge/msdk/widget/FeedBackButton;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->b(I)V

    return-void
.end method

.method public a(Ljava/lang/String;IIIFFFLjava/lang/String;Ljava/lang/String;FLorg/json/JSONArray;)V
    .locals 11

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    move/from16 v2, p5

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    move/from16 v3, p6

    invoke-static {v1, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    move v4, p2

    int-to-float v4, v4

    invoke-static {v1, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    move v5, p3

    int-to-float v5, v5

    invoke-static {v1, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v5

    move v6, p4

    int-to-float v6, v6

    invoke-static {v1, v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v6

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(IIIIIFLjava/lang/String;Ljava/lang/String;FLorg/json/JSONArray;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mbridge/msdk/foundation/feedback/b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->c(I)V

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->h()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v5

    const-string v1, ""

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->k()I

    move-result v7

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->j()I

    move-result v8

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v9, p4

    goto :goto_2

    :cond_3
    move-object v9, v1

    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v4

    :cond_4
    move v11, v4

    move/from16 v10, p2

    move/from16 v12, p3

    move-object/from16 v13, p5

    invoke-static/range {v5 .. v13}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;IILjava/lang/String;IIILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;ILandroid/view/ViewGroup;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->i()Lcom/mbridge/msdk/widget/FeedBackButton;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->d(I)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/mbridge/msdk/foundation/feedback/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/mbridge/msdk/foundation/feedback/a;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;

    invoke-direct {v1, p1, p3}, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Lcom/mbridge/msdk/foundation/feedback/bean/a$g;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->g()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->p()V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/mbridge/msdk/foundation/feedback/a;)V
    .locals 2

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/feedback/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v0

    if-eqz p5, :cond_1

    new-instance v1, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;

    invoke-direct {v1, p1, p5}, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Lcom/mbridge/msdk/foundation/feedback/bean/a$g;)V

    :cond_1
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->i()Lcom/mbridge/msdk/widget/FeedBackButton;

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p4, :cond_2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p4

    const/high16 p5, 0x41200000    # 10.0f

    invoke-static {p4, p5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result p4

    iget-object p5, p0, Lcom/mbridge/msdk/foundation/feedback/b;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p5, p4, p4, p4, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p4, p0, Lcom/mbridge/msdk/foundation/feedback/b;->a:Landroid/widget/RelativeLayout$LayoutParams;

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup;

    if-eqz p5, :cond_3

    invoke-virtual {p5, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    const p3, 0x1020002

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p3, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;

    invoke-direct {v1, p1, p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a$g;-><init>(Ljava/lang/String;Lcom/mbridge/msdk/foundation/feedback/a;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Lcom/mbridge/msdk/foundation/feedback/bean/a$g;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/widget/FeedBackButton;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->a(Lcom/mbridge/msdk/widget/FeedBackButton;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 2

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->c:Lcom/mbridge/msdk/setting/g;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->c:Lcom/mbridge/msdk/setting/g;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)Z
    .locals 0

    if-nez p3, :cond_0

    const-string p1, ""

    const-string p2, "mbAlertDialog  is null"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/mbridge/msdk/foundation/feedback/b;->a(Landroid/content/Context;Lcom/mbridge/msdk/widget/dialog/MBFeedBackDialog;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/feedback/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/feedback/bean/a;

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lcom/mbridge/msdk/foundation/feedback/bean/a;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/foundation/feedback/bean/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/feedback/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->c(I)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/feedback/b;->c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/feedback/bean/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/feedback/bean/a;->f()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/feedback/b;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    sput-boolean p1, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method
