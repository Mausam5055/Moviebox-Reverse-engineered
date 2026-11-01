.class public final Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010@\u001a\u00020AJ\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0004J.\u0010\u0011\u001a\u00020\u00002&\u0010\u000c\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\rj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004`\u000eJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0004J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0004J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0004J\u000e\u0010-\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0004J\u000e\u00100\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0004J\u000e\u00105\u001a\u00020\u00002\u0006\u00101\u001a\u000202J.\u00109\u001a\u00020\u00002&\u00107\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00040\rj\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004`\u000eJ\u000e\u0010<\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0004J\u000e\u0010?\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R>\u0010\u000c\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0006\"\u0004\u0008\u001b\u0010\u0008R\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0006\"\u0004\u0008\u001e\u0010\u0008R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0006\"\u0004\u0008!\u0010\u0008R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0006\"\u0004\u0008$\u0010\u0008R\u001c\u0010%\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0006\"\u0004\u0008\'\u0010\u0008R\u001c\u0010(\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0006\"\u0004\u0008*\u0010\u0008R\u001c\u0010+\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0006\"\u0004\u0008-\u0010\u0008R\u001c\u0010.\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0006\"\u0004\u00080\u0010\u0008R\u001a\u00101\u001a\u000202X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R>\u00107\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\rj\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u0001`\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0010\"\u0004\u00089\u0010\u0012R\u001c\u0010:\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R\u001c\u0010=\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u0006\"\u0004\u0008?\u0010\u0008\u00a8\u0006B"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "()V",
        "app",
        "",
        "getApp",
        "()Ljava/lang/String;",
        "setApp",
        "(Ljava/lang/String;)V",
        "downloadModel",
        "getDownloadModel",
        "setDownloadModel",
        "extInfo",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "getExtInfo",
        "()Ljava/util/HashMap;",
        "setExtInfo",
        "(Ljava/util/HashMap;)V",
        "extParams",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;",
        "getExtParams",
        "()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;",
        "setExtParams",
        "(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;)V",
        "extraConfig",
        "getExtraConfig",
        "setExtraConfig",
        "group",
        "getGroup",
        "setGroup",
        "language",
        "getLanguage",
        "setLanguage",
        "name",
        "getName",
        "setName",
        "nation",
        "getNation",
        "setNation",
        "networkType",
        "getNetworkType",
        "setNetworkType",
        "pkgEncrypted",
        "getPkgEncrypted",
        "setPkgEncrypted",
        "pkgUrl",
        "getPkgUrl",
        "setPkgUrl",
        "priority",
        "",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "resMap",
        "getResMap",
        "setResMap",
        "type",
        "getType",
        "setType",
        "version",
        "getVersion",
        "setVersion",
        "build",
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private app:Ljava/lang/String;

.field private downloadModel:Ljava/lang/String;

.field private extInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extParams:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

.field private extraConfig:Ljava/lang/String;

.field private group:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nation:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private pkgEncrypted:Ljava/lang/String;

.field private pkgUrl:Ljava/lang/String;

.field private priority:I

.field private resMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    const-string v0, "startup"

    iput-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->downloadModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;
    .locals 24

    move-object/from16 v0, p0

    new-instance v22, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;

    move-object/from16 v1, v22

    iget-object v2, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->downloadModel:Ljava/lang/String;

    iget-object v3, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->app:Ljava/lang/String;

    iget-object v4, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->group:Ljava/lang/String;

    iget-object v5, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->language:Ljava/lang/String;

    iget-object v6, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->name:Ljava/lang/String;

    iget-object v7, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->nation:Ljava/lang/String;

    iget-object v8, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->networkType:Ljava/lang/String;

    iget-object v9, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->pkgUrl:Ljava/lang/String;

    iget v10, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->priority:I

    iget-object v11, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->version:Ljava/lang/String;

    iget-object v12, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->type:Ljava/lang/String;

    iget-object v13, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->resMap:Ljava/util/HashMap;

    iget-object v14, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extInfo:Ljava/util/HashMap;

    iget-object v15, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extraConfig:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->pkgEncrypted:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extParams:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    move-object/from16 v18, v1

    const v20, 0x28000

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v21}, Lcom/cloud/tmc/offline/download/model/OffPkgConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v22
.end method

.method public final getApp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->app:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->downloadModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getExtParams()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extParams:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    return-object v0
.end method

.method public final getExtraConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extraConfig:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->group:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->nation:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPkgEncrypted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->pkgEncrypted:Ljava/lang/String;

    return-object v0
.end method

.method public final getPkgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->pkgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->priority:I

    return v0
.end method

.method public final getResMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->resMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setApp(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->app:Ljava/lang/String;

    return-object p0
.end method

.method public final setApp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->app:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadModel(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "downloadModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->downloadModel:Ljava/lang/String;

    return-object p0
.end method

.method public final setDownloadModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->downloadModel:Ljava/lang/String;

    return-void
.end method

.method public final setExtInfo(Ljava/util/HashMap;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;"
        }
    .end annotation

    const-string v0, "extInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public final setExtInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extInfo:Ljava/util/HashMap;

    return-void
.end method

.method public final setExtParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "extParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extParams:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    return-object p0
.end method

.method public final setExtParams(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extParams:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    return-void
.end method

.method public final setExtraConfig(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "extraConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extraConfig:Ljava/lang/String;

    return-object p0
.end method

.method public final setExtraConfig(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->extraConfig:Ljava/lang/String;

    return-void
.end method

.method public final setGroup(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->group:Ljava/lang/String;

    return-object p0
.end method

.method public final setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->group:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->language:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNation(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "nation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->nation:Ljava/lang/String;

    return-object p0
.end method

.method public final setNation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->nation:Ljava/lang/String;

    return-void
.end method

.method public final setNetworkType(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->networkType:Ljava/lang/String;

    return-object p0
.end method

.method public final setNetworkType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->networkType:Ljava/lang/String;

    return-void
.end method

.method public final setPkgEncrypted(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "pkgEncrypted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->pkgEncrypted:Ljava/lang/String;

    return-object p0
.end method

.method public final setPkgEncrypted(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->pkgEncrypted:Ljava/lang/String;

    return-void
.end method

.method public final setPkgUrl(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "pkgUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->pkgUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setPkgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->pkgUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPriority(I)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->priority:I

    return-object p0
.end method

.method public final setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->priority:I

    return-void
.end method

.method public final setResMap(Ljava/util/HashMap;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;"
        }
    .end annotation

    const-string v0, "resMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->resMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public final setResMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->resMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setType(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->type:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->version:Ljava/lang/String;

    return-object p0
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OfflineDownloadBuilder;->version:Ljava/lang/String;

    return-void
.end method
