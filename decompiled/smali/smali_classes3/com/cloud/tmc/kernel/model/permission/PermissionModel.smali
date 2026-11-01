.class public final Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/model/permission/PermissionModel$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 <2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001<B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u00106\u001a\u000207H\u0016J\u0008\u00108\u001a\u00020\nH\u0016J\u0018\u00109\u001a\u00020:2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010;\u001a\u000207H\u0016R.\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R.\u0010\u0015\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\r\"\u0004\u0008\u0017\u0010\u000fR\"\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0019\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0013\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0013\u0010&\u001a\u0004\u0018\u00010#\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010%R.\u0010(\u001a\u0016\u0012\u0004\u0012\u00020\n\u0018\u00010\tj\n\u0012\u0004\u0012\u00020\n\u0018\u0001`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\r\"\u0004\u0008*\u0010\u000fR.\u0010+\u001a\u0016\u0012\u0004\u0012\u00020,\u0018\u00010\tj\n\u0012\u0004\u0012\u00020,\u0018\u0001`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\r\"\u0004\u0008.\u0010\u000fR\u001c\u0010/\u001a\u0004\u0018\u00010#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u0010%\"\u0004\u00081\u00102R\"\u00103\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u001b\"\u0004\u00085\u0010\u001d\u00a8\u0006="
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "api",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getApi",
        "()Ljava/util/ArrayList;",
        "setApi",
        "(Ljava/util/ArrayList;)V",
        "group",
        "getGroup",
        "()Ljava/lang/String;",
        "setGroup",
        "(Ljava/lang/String;)V",
        "hosts",
        "getHosts",
        "setHosts",
        "ignorePermissionCheck",
        "",
        "getIgnorePermissionCheck",
        "()Ljava/util/Set;",
        "setIgnorePermissionCheck",
        "(Ljava/util/Set;)V",
        "jsapiList",
        "",
        "getJsapiList",
        "()Ljava/util/List;",
        "nativeApiScopeConfig",
        "Lcom/google/gson/JsonObject;",
        "getNativeApiScopeConfig",
        "()Lcom/google/gson/JsonObject;",
        "nativeApiUserAuth",
        "getNativeApiUserAuth",
        "scopes",
        "getScopes",
        "setScopes",
        "scopesV2",
        "Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;",
        "getScopesV2",
        "setScopesV2",
        "specialConfigs",
        "getSpecialConfigs",
        "setSpecialConfigs",
        "(Lcom/google/gson/JsonObject;)V",
        "validDomains",
        "getValidDomains",
        "setValidDomains",
        "describeContents",
        "",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
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


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/kernel/model/permission/PermissionModel$CREATOR;


# instance fields
.field private api:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/lang/String;

.field private hosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ignorePermissionCheck:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nativeApiScopeConfig:Lcom/google/gson/JsonObject;

.field private final nativeApiUserAuth:Lcom/google/gson/JsonObject;

.field private scopes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scopesV2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;",
            ">;"
        }
    .end annotation
.end field

.field private specialConfigs:Lcom/google/gson/JsonObject;

.field private validDomains:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->CREATOR:Lcom/cloud/tmc/kernel/model/permission/PermissionModel$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->group:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->api:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->hosts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopes:Ljava/util/ArrayList;

    sget-object v0, Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;->CREATOR:Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopesV2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getApi()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->api:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->group:Ljava/lang/String;

    return-object v0
.end method

.method public final getHosts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->hosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getIgnorePermissionCheck()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->ignorePermissionCheck:Ljava/util/Set;

    return-object v0
.end method

.method public final getJsapiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getNativeApiScopeConfig()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->nativeApiScopeConfig:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public final getNativeApiUserAuth()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->nativeApiUserAuth:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public final getScopes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getScopesV2()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopesV2:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSpecialConfigs()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->specialConfigs:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public final getValidDomains()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->validDomains:Ljava/util/Set;

    return-object v0
.end method

.method public final setApi(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->api:Ljava/util/ArrayList;

    return-void
.end method

.method public final setGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->group:Ljava/lang/String;

    return-void
.end method

.method public final setHosts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->hosts:Ljava/util/ArrayList;

    return-void
.end method

.method public final setIgnorePermissionCheck(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->ignorePermissionCheck:Ljava/util/Set;

    return-void
.end method

.method public final setScopes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopes:Ljava/util/ArrayList;

    return-void
.end method

.method public final setScopesV2(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/kernel/model/permission/ScopesV2Bean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopesV2:Ljava/util/ArrayList;

    return-void
.end method

.method public final setSpecialConfigs(Lcom/google/gson/JsonObject;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->specialConfigs:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public final setValidDomains(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->validDomains:Ljava/util/Set;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionModel(group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", api="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->api:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hosts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->hosts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scopes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scopesV2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopesV2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeApiUserAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->nativeApiUserAuth:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeApiScopeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->nativeApiScopeConfig:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ignorePermissionCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->ignorePermissionCheck:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", specialConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->specialConfigs:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validDomains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->validDomains:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->group:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->api:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->hosts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;->scopes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
