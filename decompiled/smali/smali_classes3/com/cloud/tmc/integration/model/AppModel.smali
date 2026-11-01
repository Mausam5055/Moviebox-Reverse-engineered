.class public final Lcom/cloud/tmc/integration/model/AppModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/model/AppModel$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u00089\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00c7\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u00c7\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u00c3\u0001\u001a\u00020\u000fH\u0016J\u001b\u0010\u00c4\u0001\u001a\u00030\u00c5\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0007\u0010\u00c6\u0001\u001a\u00020\u000fH\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000b\"\u0004\u0008 \u0010\rR\u001c\u0010!\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u000b\"\u0004\u0008#\u0010\rR\u001c\u0010$\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u000b\"\u0004\u0008&\u0010\rR\u001c\u0010\'\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u000b\"\u0004\u0008)\u0010\rR\u001a\u0010*\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0011\"\u0004\u0008,\u0010\u0013R\u001c\u0010-\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u000b\"\u0004\u0008/\u0010\rR\u001c\u00100\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u000b\"\u0004\u00082\u0010\rR\u001a\u00103\u001a\u000204X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001c\u00109\u001a\u0004\u0018\u00010:X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001c\u0010?\u001a\u0004\u0018\u00010@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001a\u0010E\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010\u0011\"\u0004\u0008G\u0010\u0013R\u001a\u0010H\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010\u0011\"\u0004\u0008J\u0010\u0013R\u001a\u0010K\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010M\"\u0004\u0008,\u0010NR\u001a\u0010O\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008O\u0010M\"\u0004\u0008G\u0010NR\u001a\u0010P\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010M\"\u0004\u0008Q\u0010NR\u001c\u0010R\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010\u000b\"\u0004\u0008T\u0010\rR\u001c\u0010U\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008V\u0010\u000b\"\u0004\u0008W\u0010\rR\u001c\u0010X\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Y\u0010\u000b\"\u0004\u0008Z\u0010\rR\u001c\u0010[\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010\u000b\"\u0004\u0008]\u0010\rR\u001c\u0010^\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008_\u0010\u000b\"\u0004\u0008`\u0010\rR\"\u0010a\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010\u0018\"\u0004\u0008c\u0010\u001aR\u001c\u0010d\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010\u000b\"\u0004\u0008f\u0010\rR\u001c\u0010g\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010\u000b\"\u0004\u0008i\u0010\rR\u001c\u0010j\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008k\u0010\u000b\"\u0004\u0008l\u0010\rR\u001c\u0010m\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008n\u0010\u000b\"\u0004\u0008o\u0010\rR\u001c\u0010p\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008q\u0010\u000b\"\u0004\u0008r\u0010\rR\u001e\u0010s\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010x\u001a\u0004\u0008t\u0010u\"\u0004\u0008v\u0010wR\u001c\u0010y\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u0010\u000b\"\u0004\u0008{\u0010\rR\u001c\u0010|\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008}\u0010\u000b\"\u0004\u0008~\u0010\rR\u001e\u0010\u007f\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0080\u0001\u0010\u000b\"\u0005\u0008\u0081\u0001\u0010\rR\u001f\u0010\u0082\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0083\u0001\u0010\u000b\"\u0005\u0008\u0084\u0001\u0010\rR\"\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0087\u0001\u0010\u0088\u0001\"\u0006\u0008\u0089\u0001\u0010\u008a\u0001R!\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010x\u001a\u0005\u0008\u008c\u0001\u0010u\"\u0005\u0008\u008d\u0001\u0010wR\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008f\u0001\u0010\u000b\"\u0005\u0008\u0090\u0001\u0010\rR\u001f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0092\u0001\u0010\u000b\"\u0005\u0008\u0093\u0001\u0010\rR\u001f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0095\u0001\u0010\u000b\"\u0005\u0008\u0096\u0001\u0010\rR\u001d\u0010\u0097\u0001\u001a\u000204X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0098\u0001\u00106\"\u0005\u0008\u0099\u0001\u00108R\u001f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009b\u0001\u0010\u000b\"\u0005\u0008\u009c\u0001\u0010\rR&\u0010\u009d\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u009e\u0001\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009f\u0001\u0010\u0018\"\u0005\u0008\u00a0\u0001\u0010\u001aRA\u0010\u00a1\u0001\u001a$\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u00a2\u0001j\u0011\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u0001`\u00a3\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001\"\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u001f\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00a9\u0001\u0010\u000b\"\u0005\u0008\u00aa\u0001\u0010\rR\u001f\u0010\u00ab\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00ac\u0001\u0010\u000b\"\u0005\u0008\u00ad\u0001\u0010\rR\u001f\u0010\u00ae\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00af\u0001\u0010\u000b\"\u0005\u0008\u00b0\u0001\u0010\rR\u001f\u0010\u00b1\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b2\u0001\u0010\u000b\"\u0005\u0008\u00b3\u0001\u0010\rR\u001f\u0010\u00b4\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b5\u0001\u0010\u000b\"\u0005\u0008\u00b6\u0001\u0010\rR\u001f\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00b8\u0001\u0010\u000b\"\u0005\u0008\u00b9\u0001\u0010\rR\u001f\u0010\u00ba\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00bb\u0001\u0010\u000b\"\u0005\u0008\u00bc\u0001\u0010\rR\u001f\u0010\u00bd\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00be\u0001\u0010\u000b\"\u0005\u0008\u00bf\u0001\u0010\rR\u001f\u0010\u00c0\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u00c1\u0001\u0010\u000b\"\u0005\u0008\u00c2\u0001\u0010\r\u00a8\u0006\u00c8\u0001"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/AppModel;",
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
        "currentUseCommonResVersion",
        "getCurrentUseCommonResVersion",
        "setCurrentUseCommonResVersion",
        "deployVersion",
        "getDeployVersion",
        "setDeployVersion",
        "desc",
        "getDesc",
        "setDesc",
        "devMode",
        "getDevMode",
        "setDevMode",
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
        "extendInfos",
        "Lcom/google/gson/JsonObject;",
        "getExtendInfos",
        "()Lcom/google/gson/JsonObject;",
        "setExtendInfos",
        "(Lcom/google/gson/JsonObject;)V",
        "forceUpdate",
        "getForceUpdate",
        "setForceUpdate",
        "fromCacheType",
        "getFromCacheType",
        "setFromCacheType",
        "isDevMode",
        "",
        "()Z",
        "(Z)V",
        "isForceUpdate",
        "isTestVersion",
        "setTestVersion",
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
        "mainPackageUnZipFilePath",
        "getMainPackageUnZipFilePath",
        "setMainPackageUnZipFilePath",
        "mainPackageUrl",
        "getMainPackageUrl",
        "setMainPackageUrl",
        "mainPackageUrlEncryption",
        "getMainPackageUrlEncryption",
        "setMainPackageUrlEncryption",
        "mainPackageZipPath",
        "getMainPackageZipPath",
        "setMainPackageZipPath",
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
        "packageUrl_MD5",
        "getPackageUrl_MD5",
        "setPackageUrl_MD5",
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
        "unzipFilePath",
        "getUnzipFilePath",
        "setUnzipFilePath",
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
        "zipPath",
        "getZipPath",
        "setZipPath",
        "describeContents",
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
.field public static final CREATOR:Lcom/cloud/tmc/integration/model/AppModel$CREATOR;


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

.field private currentUseCommonResVersion:Ljava/lang/String;

.field private deployVersion:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private devMode:I

.field private developer:Ljava/lang/String;

.field private developerVersion:Ljava/lang/String;

.field private expiresTime:J

.field private extend:Lcom/cloud/tmc/integration/model/ExtendModel;

.field private extendInfos:Lcom/google/gson/JsonObject;

.field private forceUpdate:I

.field private fromCacheType:I

.field private isDevMode:Z

.field private isForceUpdate:Z

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

.field private mainPackageUnZipFilePath:Ljava/lang/String;

.field private mainPackageUrl:Ljava/lang/String;

.field private mainPackageUrlEncryption:Ljava/lang/String;

.field private mainPackageZipPath:Ljava/lang/String;

.field private mainUrl:Ljava/lang/String;

.field private miniappSubtype:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private packageSize:Ljava/lang/String;

.field private packageUrl:Ljava/lang/String;

.field private packageUrl_MD5:Ljava/lang/String;

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

.field private unzipFilePath:Ljava/lang/String;

.field private userAgreement:Ljava/lang/String;

.field private userAgreementUrl:Ljava/lang/String;

.field private userAgreementVersion:Ljava/lang/String;

.field private vhost:Ljava/lang/String;

.field private zipPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/integration/model/AppModel$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/model/AppModel$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/integration/model/AppModel;->CREATOR:Lcom/cloud/tmc/integration/model/AppModel$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->devMode:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->popupStyle:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cloud/tmc/integration/model/AppModel;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->logo:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->vhost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->appId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->deployVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->developerVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageUrl_MD5:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->desc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->developer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->zipPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->unzipFilePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->registerType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->slogan:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->expiresTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->releaseTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->fromCacheType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isForceUpdate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->packageSize:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->classificationNames:Ljava/util/List;

    const-class v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->permissions:Lcom/cloud/tmc/kernel/model/permission/PermissionModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->isDevMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->devMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->appinfoCategoryType:I

    const-class v0, Lcom/cloud/tmc/integration/model/ExtendModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/ExtendModel;

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->extend:Lcom/cloud/tmc/integration/model/ExtendModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestOpenedVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->forceUpdate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/cloud/tmc/integration/model/AppModel;->isTestVersion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUrlEncryption:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageZipPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackageUnZipFilePath:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tmc/integration/model/SubPackageInfo;->CREATOR:Lcom/cloud/tmc/integration/model/SubPackageInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackagePages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->mainPackagePages:Ljava/util/List;

    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    iput-object v1, p0, Lcom/cloud/tmc/integration/model/AppModel;->subPackageUrls:Ljava/util/HashMap;

    sget-object v0, Lcom/cloud/tmc/integration/model/ClassificationInfo;->CREATOR:Lcom/cloud/tmc/integration/model/ClassificationInfo$CREATOR;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->classification:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreement:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->userAgreementUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->linkAndButtonColor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->processingMethod:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->popupStyle:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->miniappSubtype:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateMiniappId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templatePackageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->templateDeployVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->lowestSupportTemplateVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/tmc/integration/model/AppModel;->compatiblePackageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/AppModel;->currentUseCommonResVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native describeContents()I
.end method

.method public final native getAppId()Ljava/lang/String;
.end method

.method public final native getAppinfoCategoryType()I
.end method

.method public final native getClassification()Ljava/util/List;
.end method

.method public final native getClassificationNames()Ljava/util/List;
.end method

.method public final native getCompatiblePackageUrl()Ljava/lang/String;
.end method

.method public final native getCurrentUseCommonResVersion()Ljava/lang/String;
.end method

.method public final native getDeployVersion()Ljava/lang/String;
.end method

.method public final native getDesc()Ljava/lang/String;
.end method

.method public final native getDevMode()I
.end method

.method public final native getDeveloper()Ljava/lang/String;
.end method

.method public final native getDeveloperVersion()Ljava/lang/String;
.end method

.method public final native getExpiresTime()J
.end method

.method public final native getExtend()Lcom/cloud/tmc/integration/model/ExtendModel;
.end method

.method public final native getExtendInfos()Lcom/google/gson/JsonObject;
.end method

.method public final native getForceUpdate()I
.end method

.method public final native getFromCacheType()I
.end method

.method public final native getLinkAndButtonColor()Ljava/lang/String;
.end method

.method public final native getLogo()Ljava/lang/String;
.end method

.method public final native getLowestOpenedVersion()Ljava/lang/String;
.end method

.method public final native getLowestSupportTemplateVersion()Ljava/lang/String;
.end method

.method public final native getLowestSupportVersion()Ljava/lang/String;
.end method

.method public final native getMainPackagePages()Ljava/util/List;
.end method

.method public final native getMainPackageUnZipFilePath()Ljava/lang/String;
.end method

.method public final native getMainPackageUrl()Ljava/lang/String;
.end method

.method public final native getMainPackageUrlEncryption()Ljava/lang/String;
.end method

.method public final native getMainPackageZipPath()Ljava/lang/String;
.end method

.method public final native getMainUrl()Ljava/lang/String;
.end method

.method public final native getMiniappSubtype()Ljava/lang/Integer;
.end method

.method public final native getName()Ljava/lang/String;
.end method

.method public final native getPackageSize()Ljava/lang/String;
.end method

.method public final native getPackageUrl()Ljava/lang/String;
.end method

.method public final native getPackageUrl_MD5()Ljava/lang/String;
.end method

.method public final native getPermissions()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;
.end method

.method public final native getPopupStyle()Ljava/lang/Integer;
.end method

.method public final native getPrivacyPolicyUrl()Ljava/lang/String;
.end method

.method public final native getProcessingMethod()Ljava/lang/String;
.end method

.method public final native getRegisterType()Ljava/lang/String;
.end method

.method public final native getReleaseTime()J
.end method

.method public final native getSlogan()Ljava/lang/String;
.end method

.method public final native getSubPackagePages()Ljava/util/List;
.end method

.method public final native getSubPackageUrls()Ljava/util/HashMap;
.end method

.method public final native getTemplateDeployVersion()Ljava/lang/String;
.end method

.method public final native getTemplateMiniappId()Ljava/lang/String;
.end method

.method public final native getTemplatePackageUrl()Ljava/lang/String;
.end method

.method public final native getUnzipFilePath()Ljava/lang/String;
.end method

.method public final native getUserAgreement()Ljava/lang/String;
.end method

.method public final native getUserAgreementUrl()Ljava/lang/String;
.end method

.method public final native getUserAgreementVersion()Ljava/lang/String;
.end method

.method public final native getVhost()Ljava/lang/String;
.end method

.method public final native getZipPath()Ljava/lang/String;
.end method

.method public final native isDevMode()Z
.end method

.method public final native isForceUpdate()Z
.end method

.method public final native isTestVersion()Z
.end method

.method public final native setAppId(Ljava/lang/String;)V
.end method

.method public final native setAppinfoCategoryType(I)V
.end method

.method public final native setClassification(Ljava/util/List;)V
.end method

.method public final native setClassificationNames(Ljava/util/List;)V
.end method

.method public final native setCompatiblePackageUrl(Ljava/lang/String;)V
.end method

.method public final native setCurrentUseCommonResVersion(Ljava/lang/String;)V
.end method

.method public final native setDeployVersion(Ljava/lang/String;)V
.end method

.method public final native setDesc(Ljava/lang/String;)V
.end method

.method public final native setDevMode(I)V
.end method

.method public final native setDevMode(Z)V
.end method

.method public final native setDeveloper(Ljava/lang/String;)V
.end method

.method public final native setDeveloperVersion(Ljava/lang/String;)V
.end method

.method public final native setExpiresTime(J)V
.end method

.method public final native setExtend(Lcom/cloud/tmc/integration/model/ExtendModel;)V
.end method

.method public final native setExtendInfos(Lcom/google/gson/JsonObject;)V
.end method

.method public final native setForceUpdate(I)V
.end method

.method public final native setForceUpdate(Z)V
.end method

.method public final native setFromCacheType(I)V
.end method

.method public final native setLinkAndButtonColor(Ljava/lang/String;)V
.end method

.method public final native setLogo(Ljava/lang/String;)V
.end method

.method public final native setLowestOpenedVersion(Ljava/lang/String;)V
.end method

.method public final native setLowestSupportTemplateVersion(Ljava/lang/String;)V
.end method

.method public final native setLowestSupportVersion(Ljava/lang/String;)V
.end method

.method public final native setMainPackagePages(Ljava/util/List;)V
.end method

.method public final native setMainPackageUnZipFilePath(Ljava/lang/String;)V
.end method

.method public final native setMainPackageUrl(Ljava/lang/String;)V
.end method

.method public final native setMainPackageUrlEncryption(Ljava/lang/String;)V
.end method

.method public final native setMainPackageZipPath(Ljava/lang/String;)V
.end method

.method public final native setMainUrl(Ljava/lang/String;)V
.end method

.method public final native setMiniappSubtype(Ljava/lang/Integer;)V
.end method

.method public final native setName(Ljava/lang/String;)V
.end method

.method public final native setPackageSize(Ljava/lang/String;)V
.end method

.method public final native setPackageUrl(Ljava/lang/String;)V
.end method

.method public final native setPackageUrl_MD5(Ljava/lang/String;)V
.end method

.method public final native setPermissions(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V
.end method

.method public final native setPopupStyle(Ljava/lang/Integer;)V
.end method

.method public final native setPrivacyPolicyUrl(Ljava/lang/String;)V
.end method

.method public final native setProcessingMethod(Ljava/lang/String;)V
.end method

.method public final native setRegisterType(Ljava/lang/String;)V
.end method

.method public final native setReleaseTime(J)V
.end method

.method public final native setSlogan(Ljava/lang/String;)V
.end method

.method public final native setSubPackagePages(Ljava/util/List;)V
.end method

.method public final native setSubPackageUrls(Ljava/util/HashMap;)V
.end method

.method public final native setTemplateDeployVersion(Ljava/lang/String;)V
.end method

.method public final native setTemplateMiniappId(Ljava/lang/String;)V
.end method

.method public final native setTemplatePackageUrl(Ljava/lang/String;)V
.end method

.method public final native setTestVersion(Z)V
.end method

.method public final native setUnzipFilePath(Ljava/lang/String;)V
.end method

.method public final native setUserAgreement(Ljava/lang/String;)V
.end method

.method public final native setUserAgreementUrl(Ljava/lang/String;)V
.end method

.method public final native setUserAgreementVersion(Ljava/lang/String;)V
.end method

.method public final native setVhost(Ljava/lang/String;)V
.end method

.method public final native setZipPath(Ljava/lang/String;)V
.end method

.method public native writeToParcel(Landroid/os/Parcel;I)V
.end method
