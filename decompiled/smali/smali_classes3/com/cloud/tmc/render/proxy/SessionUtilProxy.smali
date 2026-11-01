.class public interface abstract Lcom/cloud/tmc/render/proxy/SessionUtilProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.miniapp.utils.SessionUtils"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/tmc/render/proxy/SessionUtilProxy;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "getId",
        "",
        "appId",
        "removeSession",
        "",
        "updateSession",
        "isValidOnResume",
        "",
        "isFormStart",
        "com.cloud.tmc.render"
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
.method public abstract getId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeSession(Ljava/lang/String;)V
.end method

.method public abstract updateSession(Ljava/lang/String;ZZ)V
.end method
