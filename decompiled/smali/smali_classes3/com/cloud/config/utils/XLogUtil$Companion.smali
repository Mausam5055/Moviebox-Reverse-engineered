.class public final Lcom/cloud/config/utils/XLogUtil$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/config/utils/XLogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\"\u0010\u0008\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cloud/config/utils/XLogUtil$Companion;",
        "",
        "()V",
        "DEBUG",
        "",
        "ERROR",
        "INFO",
        "JSON",
        "NET_LOG",
        "Lcom/transsion/core/log/ObjectLogUtils;",
        "kotlin.jvm.PlatformType",
        "getNET_LOG",
        "()Lcom/transsion/core/log/ObjectLogUtils;",
        "setNET_LOG",
        "(Lcom/transsion/core/log/ObjectLogUtils;)V",
        "TAG",
        "",
        "VERBOSE",
        "WARN",
        "log",
        "Lcom/cloud/config/utils/XLogUtil;",
        "getLog",
        "()Lcom/cloud/config/utils/XLogUtil;",
        "log$delegate",
        "Lkotlin/Lazy;",
        "netLog",
        "",
        "msg",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/config/utils/XLogUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLog()Lcom/cloud/config/utils/XLogUtil;
    .locals 1

    invoke-static {}, Lcom/cloud/config/utils/XLogUtil;->access$getLog$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/config/utils/XLogUtil;

    return-object v0
.end method

.method public final getNET_LOG()Lcom/transsion/core/log/ObjectLogUtils;
    .locals 1

    invoke-static {}, Lcom/cloud/config/utils/XLogUtil;->access$getNET_LOG$cp()Lcom/transsion/core/log/ObjectLogUtils;

    move-result-object v0

    return-object v0
.end method

.method public final netLog(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/cloud/config/utils/XLogUtil$Companion;->getNET_LOG()Lcom/transsion/core/log/ObjectLogUtils;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/log/ObjectLogUtils;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setNET_LOG(Lcom/transsion/core/log/ObjectLogUtils;)V
    .locals 0

    invoke-static {p1}, Lcom/cloud/config/utils/XLogUtil;->access$setNET_LOG$cp(Lcom/transsion/core/log/ObjectLogUtils;)V

    return-void
.end method
