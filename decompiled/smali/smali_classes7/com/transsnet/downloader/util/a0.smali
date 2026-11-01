.class public final Lcom/transsnet/downloader/util/a0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsnet/downloader/util/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/util/a0;

    invoke-direct {v0}, Lcom/transsnet/downloader/util/a0;-><init>()V

    sput-object v0, Lcom/transsnet/downloader/util/a0;->a:Lcom/transsnet/downloader/util/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/transsnet/downloader/popup/PopupManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "popupManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-class v2, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->c()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/transsnet/downloader/popup/PopupManager;->M(Lcom/transsnet/downloader/popup/PopupManager;Landroid/content/Context;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/transsion/memberapi/IMemberApi;->f()Z

    move-result v0

    :cond_2
    const/4 p1, 0x3

    const/4 p2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "/member/MemberActivity"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    const-string v1, "scene_id"

    invoke-virtual {v0, v1, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    const-string v0, "trace_id"

    invoke-virtual {p3, v0, p4}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    invoke-static {p3, p2, p2, p1, p2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string p3, "/rewards/center"

    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p3

    invoke-static {p3, p2, p2, p1, p2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method
