.class public final Lcom/transsion/base/infras_config/api/InfraInitApi$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/base/infras_config/api/InfraInitApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic initMobileInfra$default(Lcom/transsion/base/infras_config/api/InfraInitApi;Ljava/lang/String;Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "https://i-api.aoneroom.com"

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/base/infras_config/api/InfraInitApi;->initMobileInfra(Ljava/lang/String;Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;)Lio/reactivex/rxjava3/core/j;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: initMobileInfra"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
