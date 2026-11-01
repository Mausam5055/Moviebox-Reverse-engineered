.class public final Lri/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lri/b;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lri/b;

    invoke-direct {v0}, Lri/b;-><init>()V

    sput-object v0, Lri/b;->a:Lri/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lri/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lri/a;->a:Lri/a;

    invoke-virtual {v0}, Lri/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Loi/a;->a:Loi/a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v2, "Report_ad"

    const-string v3, "AdReportManager --> onReport() --> \u4e1a\u52a1\u7ebf\u5173\u95ed\u57cb\u70b9\u4e0a\u62a5\uff0c\u4e0d\u4e0a\u62a5"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    invoke-virtual {v0}, Lcom/transsion/ad/scene/b;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Loi/a;->a:Loi/a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v2, "Report_ad"

    const-string v3, "AdReportManager --> onReport() --> \u5e7f\u544a\u6570\u636e\u4e0a\u62a5\u94fe\u8def\u5df2\u5173\u95ed\uff0c\u4e0d\u4e0a\u62a5"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void

    :cond_1
    sget-object v0, Lri/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {v2}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/ad/MBAd$a;->l()Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    const-string v4, "mb_ad"

    const/16 v5, 0x197d

    invoke-static {v1, v4, v5, v2, v3}, Lcom/transsion/ga/AthenaAnalytics;->Q(Landroid/content/Context;Ljava/lang/String;IZZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Loi/a;->a:Loi/a;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "AdReportManager --> onReport() --> \u5e7f\u544a\u57cb\u70b9Athena\u521d\u59cb\u5316\u5b8c\u6210"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Loi/a;->c(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_3
    const-string v0, "ad_vn"

    const-string v1, "4.3.3_2"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "biz_pkg"

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "biz_vc"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "biz_vn"

    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lhj/i;->a:Lhj/i;

    if-nez p3, :cond_4

    const-string p3, ""

    :cond_4
    move-object v5, p3

    sget-object p3, Lcom/transsion/ad/strategy/AppManager;->a:Lcom/transsion/ad/strategy/AppManager;

    invoke-virtual {p3}, Lcom/transsion/ad/strategy/AppManager;->a()Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x197d

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lhj/i;->v(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
