.class public final Lcom/cloud/tmc/miniapp/utils/OooO00o;
.super Ljava/lang/Object;


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/OooO00o;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/OooO00o;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/utils/OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 2

    sget-object v0, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o:Lcom/cloud/tmc/miniapp/utils/ScopeUtils;

    invoke-virtual {v0, p1}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Lcom/cloud/tmc/integration/structure/Page;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v1, "fullScreen"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/tmc/miniapp/utils/ScopeUtils;->OooO00o(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkFullScreenAuthority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthorityUtils"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
