.class public final Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# instance fields
.field private lastlyMessageInfo:Lcom/cloud/tmc/miniapp/utils/LauncherLastlyMessageInfo;

.field private miniappMessageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private successUpdateSwitchStatus:Ljava/lang/Boolean;

.field private webQueryTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->successUpdateSwitchStatus:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final getLastlyMessageInfo()Lcom/cloud/tmc/miniapp/utils/LauncherLastlyMessageInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->lastlyMessageInfo:Lcom/cloud/tmc/miniapp/utils/LauncherLastlyMessageInfo;

    return-object v0
.end method

.method public final getMiniappMessageInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgInfoBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->miniappMessageInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSuccessUpdateSwitchStatus()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->successUpdateSwitchStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getWebQueryTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->webQueryTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final setLastlyMessageInfo(Lcom/cloud/tmc/miniapp/utils/LauncherLastlyMessageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->lastlyMessageInfo:Lcom/cloud/tmc/miniapp/utils/LauncherLastlyMessageInfo;

    return-void
.end method

.method public final setMiniappMessageInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgInfoBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->miniappMessageInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSuccessUpdateSwitchStatus(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->successUpdateSwitchStatus:Ljava/lang/Boolean;

    return-void
.end method

.method public final setWebQueryTimestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/LauncherMiniAppMsgModel;->webQueryTimestamp:Ljava/lang/Long;

    return-void
.end method
