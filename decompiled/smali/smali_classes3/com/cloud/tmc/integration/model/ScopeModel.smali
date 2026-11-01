.class public final Lcom/cloud/tmc/integration/model/ScopeModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u000e\"\u0004\u0008\u001e\u0010\u0010R\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/ScopeModel;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "()V",
        "apis",
        "",
        "",
        "getApis",
        "()Ljava/util/List;",
        "setApis",
        "(Ljava/util/List;)V",
        "defaultAuthorization",
        "",
        "getDefaultAuthorization",
        "()Z",
        "setDefaultAuthorization",
        "(Z)V",
        "language",
        "Lcom/google/gson/JsonObject;",
        "getLanguage",
        "()Lcom/google/gson/JsonObject;",
        "setLanguage",
        "(Lcom/google/gson/JsonObject;)V",
        "scopeName",
        "getScopeName",
        "()Ljava/lang/String;",
        "setScopeName",
        "(Ljava/lang/String;)V",
        "userAuthorization",
        "getUserAuthorization",
        "setUserAuthorization",
        "validityTime",
        "",
        "getValidityTime",
        "()J",
        "setValidityTime",
        "(J)V",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private apis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAuthorization:Z

.field private language:Lcom/google/gson/JsonObject;

.field private scopeName:Ljava/lang/String;

.field private userAuthorization:Z

.field private validityTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public final getApis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->apis:Ljava/util/List;

    return-object v0
.end method

.method public final getDefaultAuthorization()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->defaultAuthorization:Z

    return v0
.end method

.method public final getLanguage()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->language:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public final getScopeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->scopeName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAuthorization()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->userAuthorization:Z

    return v0
.end method

.method public final getValidityTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->validityTime:J

    return-wide v0
.end method

.method public final setApis(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->apis:Ljava/util/List;

    return-void
.end method

.method public final setDefaultAuthorization(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->defaultAuthorization:Z

    return-void
.end method

.method public final setLanguage(Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->language:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public final setScopeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->scopeName:Ljava/lang/String;

    return-void
.end method

.method public final setUserAuthorization(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->userAuthorization:Z

    return-void
.end method

.method public final setValidityTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/ScopeModel;->validityTime:J

    return-void
.end method
