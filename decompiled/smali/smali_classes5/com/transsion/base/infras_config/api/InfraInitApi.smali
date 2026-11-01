.class public interface abstract Lcom/transsion/base/infras_config/api/InfraInitApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;,
        Lcom/transsion/base/infras_config/api/InfraInitApi$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bJ1\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00062\n\u0008\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004H\'\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/base/infras_config/api/InfraInitApi;",
        "",
        "",
        "url",
        "Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;",
        "body",
        "Lio/reactivex/rxjava3/core/j;",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "Lcom/transsion/base/infras_config/model/ConfigInitData;",
        "initMobileInfra",
        "(Ljava/lang/String;Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;)Lio/reactivex/rxjava3/core/j;",
        "Companion",
        "base_infras_config_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;

.field public static final INIT_PATH:Ljava/lang/String; = "/infras-mobile-bff/v1/init"

.field public static final RELEASE_HOST:Ljava/lang/String; = "https://i-api.aoneroom.com"

.field public static final TEST_HOST:Ljava/lang/String; = "https://i-api-test.aoneroom.com"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;->$$INSTANCE:Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;

    sput-object v0, Lcom/transsion/base/infras_config/api/InfraInitApi;->Companion:Lcom/transsion/base/infras_config/api/InfraInitApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract initMobileInfra(Ljava/lang/String;Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;)Lio/reactivex/rxjava3/core/j;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "multiple_base_url"
        .end annotation
    .end param
    .param p2    # Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;",
            ")",
            "Lio/reactivex/rxjava3/core/j<",
            "Lcom/tn/lib/net/bean/BaseDto<",
            "Lcom/transsion/base/infras_config/model/ConfigInitData;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/infras-mobile-bff/v1/init"
    .end annotation
.end method
