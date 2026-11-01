.class public final Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;",
        "",
        "()V",
        "landingPage",
        "",
        "getLandingPage",
        "()Ljava/lang/String;",
        "setLandingPage",
        "(Ljava/lang/String;)V",
        "recommend",
        "getRecommend",
        "setRecommend",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private landingPage:Ljava/lang/String;

.field private recommend:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLandingPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;->landingPage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecommend()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;->recommend:Ljava/lang/String;

    return-object v0
.end method

.method public final setLandingPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;->landingPage:Ljava/lang/String;

    return-void
.end method

.method public final setRecommend(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;->recommend:Ljava/lang/String;

    return-void
.end method
