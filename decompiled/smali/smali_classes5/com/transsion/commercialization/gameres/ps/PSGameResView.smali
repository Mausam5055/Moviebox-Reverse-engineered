.class public final Lcom/transsion/commercialization/gameres/ps/PSGameResView;
.super Lcom/transsion/commercialization/gameres/GameResView;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/transsion/commercialization/gameres/ps/PSGameResView;",
        "Lcom/transsion/commercialization/gameres/GameResView;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Lmk/a;",
        "info",
        "",
        "i",
        "(Lmk/a;)V",
        "j",
        "()V",
        "setContent",
        "Commercialization_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/gameres/GameResView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/transsion/commercialization/gameres/GameResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/commercialization/gameres/GameResView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/commercialization/gameres/ps/PSGameResView;Lmk/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResView;->k(Lcom/transsion/commercialization/gameres/ps/PSGameResView;Lmk/a;Landroid/view/View;)V

    return-void
.end method

.method private final i(Lmk/a;)V
    .locals 9

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-virtual {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->h()V

    :cond_0
    invoke-virtual {p1}, Lmk/a;->i()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v3

    sget-object v2, Lqi/b;->a:Lqi/b;

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Lqi/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Lqi/b;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x1

    const-string v5, "PSGame"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lqi/b;->b(Lqi/b;Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;ILjava/lang/Object;)V

    :cond_3
    const-string v0, "open"

    goto :goto_1

    :cond_4
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    return-void

    :cond_5
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x1

    const-string v5, "PSGame"

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lqi/b;->b(Lqi/b;Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/commercialization/gameres/ps/PSGameResView;->j()V

    const-string v0, "install"

    :goto_1
    sget-object v1, Lnk/a;->a:Lnk/a;

    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getGamePageStyle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lnk/a;->e(Lmk/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final j()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/memberapi/IMemberApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/memberapi/IMemberApi;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/memberapi/IMemberApi;->v()V

    :cond_0
    return-void
.end method

.method private static final k(Lcom/transsion/commercialization/gameres/ps/PSGameResView;Lmk/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/commercialization/gameres/ps/PSGameResView;->i(Lmk/a;)V

    return-void
.end method


# virtual methods
.method public setContent(Lmk/a;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/commercialization/gameres/GameResView;->setContent(Lmk/a;)V

    sget-object v0, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->a:Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;

    invoke-virtual {v0}, Lcom/transsion/commercialization/pslink/PsLinkServiceHelper;->h()V

    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lkk/j;

    move-result-object v0

    iget-object v0, v0, Lkk/j;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "tvAhaBtn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->h(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lkk/j;

    move-result-object v0

    iget-object v0, v0, Lkk/j;->e:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    const-string v1, "tvPsBtn"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lkk/j;

    move-result-object v0

    iget-object v0, v0, Lkk/j;->e:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    invoke-virtual {p1}, Lmk/a;->i()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lkk/j;

    move-result-object v1

    iget-object v1, v1, Lkk/j;->e:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    invoke-virtual {v1, v0}, Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;->setItemInfo(Lcom/transsion/ad/ps/model/RecommendInfo;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/commercialization/gameres/GameResView;->getViewBinding()Lkk/j;

    move-result-object v0

    iget-object v0, v0, Lkk/j;->e:Lcom/transsion/commercialization/pslink/PsLinkDownLoadButton;

    new-instance v1, Lcom/transsion/commercialization/gameres/ps/c;

    invoke-direct {v1, p0, p1}, Lcom/transsion/commercialization/gameres/ps/c;-><init>(Lcom/transsion/commercialization/gameres/ps/PSGameResView;Lmk/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
