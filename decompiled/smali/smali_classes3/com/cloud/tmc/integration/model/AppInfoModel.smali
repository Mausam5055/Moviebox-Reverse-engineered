.class public final Lcom/cloud/tmc/integration/model/AppInfoModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008+\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00a5\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00a5\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u00a0\u0001\u001a\u00020\u000fH\u0016J\t\u0010\u00a1\u0001\u001a\u00020\tH\u0016J\u001b\u0010\u00a2\u0001\u001a\u00030\u00a3\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0007\u0010\u00a4\u0001\u001a\u00020\u000fH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000b\"\u0004\u0008 \u0010\rR\u001c\u0010!\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000b\"\u0004\u0008#\u0010\rR\u001c\u0010$\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000b\"\u0004\u0008&\u0010\rR\u001c\u0010\'\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u000b\"\u0004\u0008)\u0010\rR\u001c\u0010*\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000b\"\u0004\u0008,\u0010\rR\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001a\u00109\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u0010\u0011\"\u0004\u0008;\u0010\u0013R\u001a\u0010<\u001a\u00020=X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010\u000b\"\u0004\u0008C\u0010\rR\u001c\u0010D\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u000b\"\u0004\u0008F\u0010\rR\u001c\u0010G\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010\u000b\"\u0004\u0008I\u0010\rR\u001c\u0010J\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u000b\"\u0004\u0008L\u0010\rR\u001c\u0010M\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\u000b\"\u0004\u0008O\u0010\rR\"\u0010P\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010\u0018\"\u0004\u0008R\u0010\u001aR\u001c\u0010S\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008T\u0010\u000b\"\u0004\u0008U\u0010\rR\u001c\u0010V\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\u000b\"\u0004\u0008X\u0010\rR\u001e\u0010Y\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010^\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R\u001c\u0010_\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010\u000b\"\u0004\u0008a\u0010\rR\u001c\u0010b\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008c\u0010\u000b\"\u0004\u0008d\u0010\rR\u001c\u0010e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010\u000b\"\u0004\u0008g\u0010\rR\u001c\u0010h\u001a\u0004\u0018\u00010iX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u001e\u0010n\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010^\u001a\u0004\u0008o\u0010[\"\u0004\u0008p\u0010]R\u001c\u0010q\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u0010\u000b\"\u0004\u0008s\u0010\rR\u001c\u0010t\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010\u000b\"\u0004\u0008v\u0010\rR\u001c\u0010w\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u0010\u000b\"\u0004\u0008y\u0010\rR\u001a\u0010z\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u00100\"\u0004\u0008|\u00102R\u001c\u0010}\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008~\u0010\u000b\"\u0004\u0008\u007f\u0010\rR&\u0010\u0080\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010\u0018\"\u0005\u0008\u0083\u0001\u0010\u001aRA\u0010\u0084\u0001\u001a$\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u0085\u0001j\u0011\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0086\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008c\u0001\u0010\u000b\"\u0005\u0008\u008d\u0001\u0010\rR\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008f\u0001\u0010\u000b\"\u0005\u0008\u0090\u0001\u0010\rR\u001f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0092\u0001\u0010\u000b\"\u0005\u0008\u0093\u0001\u0010\rR\u001f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0095\u0001\u0010\u000b\"\u0005\u0008\u0096\u0001\u0010\rR\u001f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0098\u0001\u0010\u000b\"\u0005\u0008\u0099\u0001\u0010\rR\u001f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009b\u0001\u0010\u000b\"\u0005\u0008\u009c\u0001\u0010\rR\u001f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009e\u0001\u0010\u000b\"\u0005\u0008\u009f\u0001\u0010\r\u00a8\u0006\u00a6\u0001"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/AppInfoModel;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "appId",
        "",
        "getAppId",
        "()Ljava/lang/String;",
        "setAppId",
        "(Ljava/lang/String;)V",
        "appinfoCategoryType",
        "",
        "getAppinfoCategoryType",
        "()I",
        "setAppinfoCategoryType",
        "(I)V",
        "classification",
        "",
        "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
        "getClassification",
        "()Ljava/util/List;",
        "setClassification",
        "(Ljava/util/List;)V",
        "classificationNames",
        "getClassificationNames",
        "setClassificationNames",
        "compatiblePackageUrl",
        "getCompatiblePackageUrl",
        "setCompatiblePackageUrl",
        "deployVersion",
        "getDeployVersion",
        "setDeployVersion",
        "desc",
        "getDesc",
        "setDesc",
        "developer",
        "getDeveloper",
        "setDeveloper",
        "developerVersion",
        "getDeveloperVersion",
        "setDeveloperVersion",
        "expiresTime",
        "",
        "getExpiresTime",
        "()J",
        "setExpiresTime",
        "(J)V",
        "extend",
        "Lcom/cloud/tmc/integration/model/ExtendModel;",
        "getExtend",
        "()Lcom/cloud/tmc/integration/model/ExtendModel;",
        "setExtend",
        "(Lcom/cloud/tmc/integration/model/ExtendModel;)V",
        "forceUpdate",
        "getForceUpdate",
        "setForceUpdate",
        "isTestVersion",
        "",
        "()Z",
        "setTestVersion",
        "(Z)V",
        "linkAndButtonColor",
        "getLinkAndButtonColor",
        "setLinkAndButtonColor",
        "logo",
        "getLogo",
        "setLogo",
        "lowestOpenedVersion",
        "getLowestOpenedVersion",
        "setLowestOpenedVersion",
        "lowestSupportTemplateVersion",
        "getLowestSupportTemplateVersion",
        "setLowestSupportTemplateVersion",
        "lowestSupportVersion",
        "getLowestSupportVersion",
        "setLowestSupportVersion",
        "mainPackagePages",
        "getMainPackagePages",
        "setMainPackagePages",
        "mainPackageUrl",
        "getMainPackageUrl",
        "setMainPackageUrl",
        "mainUrl",
        "getMainUrl",
        "setMainUrl",
        "miniappSubtype",
        "getMiniappSubtype",
        "()Ljava/lang/Integer;",
        "setMiniappSubtype",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "name",
        "getName",
        "setName",
        "packageSize",
        "getPackageSize",
        "setPackageSize",
        "packageUrl",
        "getPackageUrl",
        "setPackageUrl",
        "permissions",
        "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
        "getPermissions",
        "()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;",
        "setPermissions",
        "(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V",
        "popupStyle",
        "getPopupStyle",
        "setPopupStyle",
        "privacyPolicyUrl",
        "getPrivacyPolicyUrl",
        "setPrivacyPolicyUrl",
        "processingMethod",
        "getProcessingMethod",
        "setProcessingMethod",
        "registerType",
        "getRegisterType",
        "setRegisterType",
        "releaseTime",
        "getReleaseTime",
        "setReleaseTime",
        "slogan",
        "getSlogan",
        "setSlogan",
        "subPackagePages",
        "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
        "getSubPackagePages",
        "setSubPackagePages",
        "subPackageUrls",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "getSubPackageUrls",
        "()Ljava/util/HashMap;",
        "setSubPackageUrls",
        "(Ljava/util/HashMap;)V",
        "templateDeployVersion",
        "getTemplateDeployVersion",
        "setTemplateDeployVersion",
        "templateMiniappId",
        "getTemplateMiniappId",
        "setTemplateMiniappId",
        "templatePackageUrl",
        "getTemplatePackageUrl",
        "setTemplatePackageUrl",
        "userAgreement",
        "getUserAgreement",
        "setUserAgreement",
        "userAgreementUrl",
        "getUserAgreementUrl",
        "setUserAgreementUrl",
        "userAgreementVersion",
        "getUserAgreementVersion",
        "setUserAgreementVersion",
        "vhost",
        "getVhost",
        "setVhost",
        "describeContents",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;


# instance fields
.field private appId:Ljava/lang/String;

.field private appinfoCategoryType:I

.field private classification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classificationNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private compatiblePackageUrl:Ljava/lang/String;

.field private deployVersion:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private developerVersion:Ljava/lang/String;

.field private expiresTime:J

.field private extend:Lcom/cloud/tmc/integration/model/ExtendModel;

.field private forceUpdate:I

.field private isTestVersion:Z

.field private linkAndButtonColor:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private lowestOpenedVersion:Ljava/lang/String;

.field private lowestSupportTemplateVersion:Ljava/lang/String;

.field private lowestSupportVersion:Ljava/lang/String;

.field private mainPackagePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mainPackageUrl:Ljava/lang/String;

.field private mainUrl:Ljava/lang/String;

.field private miniappSubtype:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private packageSize:Ljava/lang/String;

.field private packageUrl:Ljava/lang/String;

.field private permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

.field private popupStyle:Ljava/lang/Integer;

.field private privacyPolicyUrl:Ljava/lang/String;

.field private processingMethod:Ljava/lang/String;

.field private registerType:Ljava/lang/String;

.field private releaseTime:J

.field private slogan:Ljava/lang/String;

.field private subPackagePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private subPackageUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private templateDeployVersion:Ljava/lang/String;

.field private templateMiniappId:Ljava/lang/String;

.field private templatePackageUrl:Ljava/lang/String;

.field private userAgreement:Ljava/lang/String;

.field private userAgreementUrl:Ljava/lang/String;

.field private userAgreementVersion:Ljava/lang/String;

.field private vhost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->CREATOR:Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/AppInfoModel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    const-class v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    const-class v0, Lcom/cloud/tmc/integration/model/ExtendModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/ExtendModel;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackageUrls:Ljava/util/HashMap;

    sget-object v0, Lcom/cloud/tmc/integration/model/SubPackageInfo;->CREATOR:Lcom/cloud/tmc/integration/model/SubPackageInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackagePages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackagePages:Ljava/util/List;

    sget-object v0, Lcom/cloud/tmc/integration/model/ClassificationInfo;->CREATOR:Lcom/cloud/tmc/integration/model/ClassificationInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classification:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppinfoCategoryType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    return v0
.end method

.method public final getClassification()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classification:Ljava/util/List;

    return-object v0
.end method

.method public final getClassificationNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    return-object v0
.end method

.method public final getCompatiblePackageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeployVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeveloper()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeveloperVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiresTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    return-wide v0
.end method

.method public final getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    return-object v0
.end method

.method public final getForceUpdate()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    return v0
.end method

.method public final getLinkAndButtonColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public final getLowestOpenedVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLowestSupportTemplateVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getLowestSupportVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getMainPackagePages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackagePages:Ljava/util/List;

    return-object v0
.end method

.method public final getMainPackageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMainUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMiniappSubtype()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageSize()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    return-object v0
.end method

.method public final getPopupStyle()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessingMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegisterType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    return-object v0
.end method

.method public final getReleaseTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    return-wide v0
.end method

.method public final getSlogan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubPackagePages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackagePages:Ljava/util/List;

    return-object v0
.end method

.method public final getSubPackageUrls()Ljava/util/HashMap;
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

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackageUrls:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTemplateDeployVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemplateMiniappId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTemplatePackageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgreement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgreementUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAgreementVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getVhost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    return-object v0
.end method

.method public final isTestVersion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion:Z

    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setAppinfoCategoryType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    return-void
.end method

.method public final setClassification(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classification:Ljava/util/List;

    return-void
.end method

.method public final setClassificationNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    return-void
.end method

.method public final setCompatiblePackageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDeployVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    return-void
.end method

.method public final setDeveloper(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    return-void
.end method

.method public final setDeveloperVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    return-void
.end method

.method public final setExpiresTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    return-void
.end method

.method public final setExtend(Lcom/cloud/tmc/integration/model/ExtendModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    return-void
.end method

.method public final setForceUpdate(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    return-void
.end method

.method public final setLinkAndButtonColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    return-void
.end method

.method public final setLowestOpenedVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    return-void
.end method

.method public final setLowestSupportTemplateVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    return-void
.end method

.method public final setLowestSupportVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    return-void
.end method

.method public final setMainPackagePages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackagePages:Ljava/util/List;

    return-void
.end method

.method public final setMainPackageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMainUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    return-void
.end method

.method public final setMiniappSubtype(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPackageSize(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    return-void
.end method

.method public final setPackageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setPermissions(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    return-void
.end method

.method public final setPopupStyle(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    return-void
.end method

.method public final setPrivacyPolicyUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    return-void
.end method

.method public final setProcessingMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    return-void
.end method

.method public final setRegisterType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    return-void
.end method

.method public final setReleaseTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    return-void
.end method

.method public final setSlogan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    return-void
.end method

.method public final setSubPackagePages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/SubPackageInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackagePages:Ljava/util/List;

    return-void
.end method

.method public final setSubPackageUrls(Ljava/util/HashMap;)V
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

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackageUrls:Ljava/util/HashMap;

    return-void
.end method

.method public final setTemplateDeployVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    return-void
.end method

.method public final setTemplateMiniappId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    return-void
.end method

.method public final setTemplatePackageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setTestVersion(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion:Z

    return-void
.end method

.method public final setUserAgreement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    return-void
.end method

.method public final setUserAgreementUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementUrl:Ljava/lang/String;

    return-void
.end method

.method public final setUserAgreementVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementVersion:Ljava/lang/String;

    return-void
.end method

.method public final setVhost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 38

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    iget-object v2, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    iget-object v3, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    iget-object v4, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    iget-object v5, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    iget-object v6, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    iget-object v7, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    iget-object v8, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    iget-object v9, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    iget-object v10, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    iget-object v11, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    iget-object v12, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    iget-wide v13, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    move-wide v15, v13

    iget-wide v13, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    move-wide/from16 v17, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    move-object/from16 v19, v15

    iget v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    move/from16 v20, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    move-object/from16 v21, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    move-object/from16 v23, v15

    iget v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    move/from16 v24, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    move-object/from16 v26, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    move-object/from16 v27, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    move-object/from16 v28, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    move-object/from16 v29, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    move-object/from16 v30, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    move-object/from16 v31, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    move-object/from16 v32, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    move-object/from16 v33, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    move-object/from16 v34, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    move-object/from16 v35, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    move-object/from16 v36, v15

    iget-object v15, v0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v37, v15

    const-string v15, "AppInfoModel(appId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deployVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", slogan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", developerVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vhost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", developer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", releaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lowestSupportVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lowestOpenedVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", forceUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", classificationNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", registerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appinfoCategoryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainPackageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAgreement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyPolicyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkAndButtonColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", processingMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",popupStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",miniappSubtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",templateMiniappId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",templatePackageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",templateDeployVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",lowestSupportTemplateVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",compatiblePackageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->deployVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->slogan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developerVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->vhost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->developer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->expiresTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->releaseTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->packageSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classificationNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->registerType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->appinfoCategoryType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestOpenedVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->forceUpdate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->isTestVersion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackageUrls:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->subPackagePages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->mainPackagePages:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->classification:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreement:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->userAgreementUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->linkAndButtonColor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->processingMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->popupStyle:Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->miniappSubtype:Ljava/lang/Integer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateMiniappId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templatePackageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->templateDeployVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/tmc/integration/model/AppInfoModel;->compatiblePackageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
