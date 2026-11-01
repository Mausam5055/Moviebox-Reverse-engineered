.class public interface abstract Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0014\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\tH&\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/minicover/callback/OnEventCallback;",
        "",
        "onFailed",
        "",
        "errorCode",
        "",
        "errMsg",
        "onSuccess",
        "jsonObjectBuilder",
        "Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/cloud/tmc/kernel/utils/JsonObjectUtils$Builder;)V
.end method
