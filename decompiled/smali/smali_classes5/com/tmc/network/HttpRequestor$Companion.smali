.class public final Lcom/tmc/network/HttpRequestor$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tmc/network/HttpRequestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0011J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0011J\u000e\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/tmc/network/HttpRequestor$Companion;",
        "",
        "()V",
        "APP_NAME",
        "",
        "APP_VERSION",
        "CALL_TIMEOUT",
        "CONTENT_TYPE",
        "COUNTRY",
        "ENCODING",
        "GATEWAY_ALWAYS_ACCESS",
        "LANGUAGE",
        "MAX_CALL_TIMEOUT",
        "",
        "TIME_ZONE",
        "VERSION_CODE",
        "enablePostMode",
        "",
        "getInstance",
        "Lcom/tmc/network/HttpRequestor;",
        "setCacheMode",
        "",
        "ifUseCache",
        "ifForce",
        "setLoggable",
        "loggable",
        "setPostMode",
        "enable",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
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

    invoke-direct {p0}, Lcom/tmc/network/HttpRequestor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/tmc/network/HttpRequestor;
    .locals 1

    sget-object v0, Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;->INSTANCE:Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;

    invoke-virtual {v0}, Lcom/tmc/network/HttpRequestor$HttpRequestorHolder;->getSInstance()Lcom/tmc/network/HttpRequestor;

    move-result-object v0

    return-object v0
.end method

.method public final setCacheMode(ZZ)V
    .locals 1

    sget-object v0, Lcom/tmc/network/HttpClient;->Companion:Lcom/tmc/network/HttpClient$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/tmc/network/HttpClient$Companion;->setCacheMode(ZZ)V

    return-void
.end method

.method public final setLoggable(Z)V
    .locals 1

    sget-object v0, Lgg/b;->a:Lgg/b;

    invoke-virtual {v0, p1}, Lgg/b;->h(Z)V

    return-void
.end method

.method public final setPostMode(Z)V
    .locals 0

    invoke-static {p1}, Lcom/tmc/network/HttpRequestor;->access$setEnablePostMode$cp(Z)V

    return-void
.end method
