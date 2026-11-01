.class public interface abstract Lzv/h;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J)\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004H\'\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lzv/h;",
        "",
        "Lcom/transsion/upgradesdk/bean/RequestBean;",
        "requestParam",
        "",
        "appKey",
        "Lretrofit2/d;",
        "Lcom/transsion/upgradesdk/bean/UpgradeStatus;",
        "a",
        "(Lcom/transsion/upgradesdk/bean/RequestBean;Ljava/lang/String;)Lretrofit2/d;",
        "upgradesdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/transsion/upgradesdk/bean/RequestBean;Ljava/lang/String;)Lretrofit2/d;
    .param p1    # Lcom/transsion/upgradesdk/bean/RequestBean;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "ACCESS-KEY"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/upgradesdk/bean/RequestBean;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/d<",
            "Lcom/transsion/upgradesdk/bean/UpgradeStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "app/upgrade/issued"
    .end annotation
.end method
