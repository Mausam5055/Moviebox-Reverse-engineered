package com.cloud.tmc.integration.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.kernel.model.permission.PermissionModel;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b+\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 ¥\u00012\u00020\u00012\u00020\u00022\u00020\u0003:\u0002¥\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\t\u0010 \u0001\u001a\u00020\u000fH\u0016J\t\u0010¡\u0001\u001a\u00020\tH\u0016J\u001b\u0010¢\u0001\u001a\u00030£\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0007\u0010¤\u0001\u001a\u00020\u000fH\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001aR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000b\"\u0004\b \u0010\rR\u001c\u0010!\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000b\"\u0004\b#\u0010\rR\u001c\u0010$\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u000b\"\u0004\b&\u0010\rR\u001c\u0010'\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u000b\"\u0004\b)\u0010\rR\u001c\u0010*\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u000b\"\u0004\b,\u0010\rR\u001a\u0010-\u001a\u00020.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001c\u00103\u001a\u0004\u0018\u000104X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u00109\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u0011\"\u0004\b;\u0010\u0013R\u001a\u0010<\u001a\u00020=X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010>\"\u0004\b?\u0010@R\u001c\u0010A\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010\u000b\"\u0004\bC\u0010\rR\u001c\u0010D\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bE\u0010\u000b\"\u0004\bF\u0010\rR\u001c\u0010G\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bH\u0010\u000b\"\u0004\bI\u0010\rR\u001c\u0010J\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010\u000b\"\u0004\bL\u0010\rR\u001c\u0010M\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bN\u0010\u000b\"\u0004\bO\u0010\rR\"\u0010P\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010\u0018\"\u0004\bR\u0010\u001aR\u001c\u0010S\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010\u000b\"\u0004\bU\u0010\rR\u001c\u0010V\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010\u000b\"\u0004\bX\u0010\rR\u001e\u0010Y\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010^\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R\u001c\u0010_\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b`\u0010\u000b\"\u0004\ba\u0010\rR\u001c\u0010b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bc\u0010\u000b\"\u0004\bd\u0010\rR\u001c\u0010e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bf\u0010\u000b\"\u0004\bg\u0010\rR\u001c\u0010h\u001a\u0004\u0018\u00010iX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\u001e\u0010n\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010^\u001a\u0004\bo\u0010[\"\u0004\bp\u0010]R\u001c\u0010q\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\br\u0010\u000b\"\u0004\bs\u0010\rR\u001c\u0010t\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bu\u0010\u000b\"\u0004\bv\u0010\rR\u001c\u0010w\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bx\u0010\u000b\"\u0004\by\u0010\rR\u001a\u0010z\u001a\u00020.X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b{\u00100\"\u0004\b|\u00102R\u001c\u0010}\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b~\u0010\u000b\"\u0004\b\u007f\u0010\rR&\u0010\u0080\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0082\u0001\u0010\u0018\"\u0005\b\u0083\u0001\u0010\u001aRA\u0010\u0084\u0001\u001a$\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010\u0085\u0001j\u0011\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u0001`\u0086\u0001X\u0086\u000e¢\u0006\u0012\n\u0000\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008c\u0001\u0010\u000b\"\u0005\b\u008d\u0001\u0010\rR\u001f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u008f\u0001\u0010\u000b\"\u0005\b\u0090\u0001\u0010\rR\u001f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0092\u0001\u0010\u000b\"\u0005\b\u0093\u0001\u0010\rR\u001f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0095\u0001\u0010\u000b\"\u0005\b\u0096\u0001\u0010\rR\u001f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u0098\u0001\u0010\u000b\"\u0005\b\u0099\u0001\u0010\rR\u001f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009b\u0001\u0010\u000b\"\u0005\b\u009c\u0001\u0010\rR\u001f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u0010\n\u0000\u001a\u0005\b\u009e\u0001\u0010\u000b\"\u0005\b\u009f\u0001\u0010\r¨\u0006¦\u0001"}, d2 = {"Lcom/cloud/tmc/integration/model/AppInfoModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "appId", "", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "appinfoCategoryType", "", "getAppinfoCategoryType", "()I", "setAppinfoCategoryType", "(I)V", "classification", "", "Lcom/cloud/tmc/integration/model/ClassificationInfo;", "getClassification", "()Ljava/util/List;", "setClassification", "(Ljava/util/List;)V", "classificationNames", "getClassificationNames", "setClassificationNames", "compatiblePackageUrl", "getCompatiblePackageUrl", "setCompatiblePackageUrl", "deployVersion", "getDeployVersion", "setDeployVersion", CampaignEx.JSON_KEY_DESC, "getDesc", "setDesc", "developer", "getDeveloper", "setDeveloper", "developerVersion", "getDeveloperVersion", "setDeveloperVersion", "expiresTime", "", "getExpiresTime", "()J", "setExpiresTime", "(J)V", "extend", "Lcom/cloud/tmc/integration/model/ExtendModel;", "getExtend", "()Lcom/cloud/tmc/integration/model/ExtendModel;", "setExtend", "(Lcom/cloud/tmc/integration/model/ExtendModel;)V", "forceUpdate", "getForceUpdate", "setForceUpdate", "isTestVersion", "", "()Z", "setTestVersion", "(Z)V", "linkAndButtonColor", "getLinkAndButtonColor", "setLinkAndButtonColor", "logo", "getLogo", "setLogo", "lowestOpenedVersion", "getLowestOpenedVersion", "setLowestOpenedVersion", "lowestSupportTemplateVersion", "getLowestSupportTemplateVersion", "setLowestSupportTemplateVersion", "lowestSupportVersion", "getLowestSupportVersion", "setLowestSupportVersion", "mainPackagePages", "getMainPackagePages", "setMainPackagePages", "mainPackageUrl", "getMainPackageUrl", "setMainPackageUrl", "mainUrl", "getMainUrl", "setMainUrl", "miniappSubtype", "getMiniappSubtype", "()Ljava/lang/Integer;", "setMiniappSubtype", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "name", "getName", "setName", LauncherMiniAppConfigHelper.KEY_UPDATE_PACKAGE_SIZE, "getPackageSize", "setPackageSize", "packageUrl", "getPackageUrl", "setPackageUrl", "permissions", "Lcom/cloud/tmc/kernel/model/permission/PermissionModel;", "getPermissions", "()Lcom/cloud/tmc/kernel/model/permission/PermissionModel;", "setPermissions", "(Lcom/cloud/tmc/kernel/model/permission/PermissionModel;)V", "popupStyle", "getPopupStyle", "setPopupStyle", "privacyPolicyUrl", "getPrivacyPolicyUrl", "setPrivacyPolicyUrl", "processingMethod", "getProcessingMethod", "setProcessingMethod", "registerType", "getRegisterType", "setRegisterType", "releaseTime", "getReleaseTime", "setReleaseTime", "slogan", "getSlogan", "setSlogan", "subPackagePages", "Lcom/cloud/tmc/integration/model/SubPackageInfo;", "getSubPackagePages", "setSubPackagePages", "subPackageUrls", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "getSubPackageUrls", "()Ljava/util/HashMap;", "setSubPackageUrls", "(Ljava/util/HashMap;)V", "templateDeployVersion", "getTemplateDeployVersion", "setTemplateDeployVersion", "templateMiniappId", "getTemplateMiniappId", "setTemplateMiniappId", "templatePackageUrl", "getTemplatePackageUrl", "setTemplatePackageUrl", "userAgreement", "getUserAgreement", "setUserAgreement", "userAgreementUrl", "getUserAgreementUrl", "setUserAgreementUrl", "userAgreementVersion", "getUserAgreementVersion", "setUserAgreementVersion", "vhost", "getVhost", "setVhost", "describeContents", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AppInfoModel extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String appId;
    private int appinfoCategoryType;
    private List<ClassificationInfo> classification;
    private List<String> classificationNames;
    private String compatiblePackageUrl;
    private String deployVersion;
    private String desc;
    private String developer;
    private String developerVersion;
    private long expiresTime;
    private ExtendModel extend;
    private int forceUpdate;
    private boolean isTestVersion;
    private String linkAndButtonColor;
    private String logo;
    private String lowestOpenedVersion;
    private String lowestSupportTemplateVersion;
    private String lowestSupportVersion;
    private List<String> mainPackagePages;
    private String mainPackageUrl;
    private String mainUrl;
    private Integer miniappSubtype;
    private String name;
    private String packageSize;
    private String packageUrl;
    private PermissionModel permissions;
    private Integer popupStyle;
    private String privacyPolicyUrl;
    private String processingMethod;
    private String registerType;
    private long releaseTime;
    private String slogan;
    private List<SubPackageInfo> subPackagePages;
    private HashMap<String, String> subPackageUrls;
    private String templateDeployVersion;
    private String templateMiniappId;
    private String templatePackageUrl;
    private String userAgreement;
    private String userAgreementUrl;
    private String userAgreementVersion;
    private String vhost;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.model.AppInfoModel$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/AppInfoModel$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/AppInfoModel;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/AppInfoModel;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<AppInfoModel> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppInfoModel createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new AppInfoModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppInfoModel[] newArray(int size) {
            return new AppInfoModel[size];
        }
    }

    public AppInfoModel() {
        this.popupStyle = 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AppInfoModel(Parcel parcel) {
        HashMap<String, String> map;
        this();
        Intrinsics.h(parcel, "parcel");
        this.appId = parcel.readString();
        this.deployVersion = parcel.readString();
        this.desc = parcel.readString();
        this.slogan = parcel.readString();
        this.developerVersion = parcel.readString();
        this.logo = parcel.readString();
        this.mainUrl = parcel.readString();
        this.name = parcel.readString();
        this.packageUrl = parcel.readString();
        this.vhost = parcel.readString();
        this.developer = parcel.readString();
        this.permissions = (PermissionModel) parcel.readParcelable(PermissionModel.class.getClassLoader());
        this.expiresTime = parcel.readLong();
        this.releaseTime = parcel.readLong();
        this.lowestSupportVersion = parcel.readString();
        this.packageSize = parcel.readString();
        this.classificationNames = parcel.createStringArrayList();
        this.registerType = parcel.readString();
        this.appinfoCategoryType = parcel.readInt();
        this.extend = (ExtendModel) parcel.readParcelable(ExtendModel.class.getClassLoader());
        this.lowestOpenedVersion = parcel.readString();
        this.forceUpdate = parcel.readInt();
        this.isTestVersion = parcel.readByte() != 0;
        this.mainPackageUrl = parcel.readString();
        HashMap hashMap = parcel.readHashMap(HashMap.class.getClassLoader());
        if (hashMap != null) {
            map = new HashMap<>();
            for (Object obj : hashMap.keySet()) {
                if (hashMap.get(obj) instanceof String) {
                    String string = obj.toString();
                    Object obj2 = hashMap.get(obj);
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                    }
                    map.put(string, (String) obj2);
                }
            }
        } else {
            map = null;
        }
        this.subPackageUrls = map;
        this.subPackagePages = parcel.createTypedArrayList(SubPackageInfo.INSTANCE);
        this.mainPackagePages = parcel.createStringArrayList();
        this.classification = parcel.createTypedArrayList(ClassificationInfo.INSTANCE);
        this.userAgreement = parcel.readString();
        this.userAgreementVersion = parcel.readString();
        this.userAgreementUrl = parcel.readString();
        this.privacyPolicyUrl = parcel.readString();
        this.linkAndButtonColor = parcel.readString();
        this.processingMethod = parcel.readString();
        this.popupStyle = Integer.valueOf(parcel.readInt());
        this.miniappSubtype = Integer.valueOf(parcel.readInt());
        this.templateMiniappId = parcel.readString();
        this.templatePackageUrl = parcel.readString();
        this.templateDeployVersion = parcel.readString();
        this.lowestSupportTemplateVersion = parcel.readString();
        this.compatiblePackageUrl = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getAppId() {
        return this.appId;
    }

    public final int getAppinfoCategoryType() {
        return this.appinfoCategoryType;
    }

    public final List<ClassificationInfo> getClassification() {
        return this.classification;
    }

    public final List<String> getClassificationNames() {
        return this.classificationNames;
    }

    public final String getCompatiblePackageUrl() {
        return this.compatiblePackageUrl;
    }

    public final String getDeployVersion() {
        return this.deployVersion;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getDeveloper() {
        return this.developer;
    }

    public final String getDeveloperVersion() {
        return this.developerVersion;
    }

    public final long getExpiresTime() {
        return this.expiresTime;
    }

    public final ExtendModel getExtend() {
        return this.extend;
    }

    public final int getForceUpdate() {
        return this.forceUpdate;
    }

    public final String getLinkAndButtonColor() {
        return this.linkAndButtonColor;
    }

    public final String getLogo() {
        return this.logo;
    }

    public final String getLowestOpenedVersion() {
        return this.lowestOpenedVersion;
    }

    public final String getLowestSupportTemplateVersion() {
        return this.lowestSupportTemplateVersion;
    }

    public final String getLowestSupportVersion() {
        return this.lowestSupportVersion;
    }

    public final List<String> getMainPackagePages() {
        return this.mainPackagePages;
    }

    public final String getMainPackageUrl() {
        return this.mainPackageUrl;
    }

    public final String getMainUrl() {
        return this.mainUrl;
    }

    public final Integer getMiniappSubtype() {
        return this.miniappSubtype;
    }

    public final String getName() {
        return this.name;
    }

    public final String getPackageSize() {
        return this.packageSize;
    }

    public final String getPackageUrl() {
        return this.packageUrl;
    }

    public final PermissionModel getPermissions() {
        return this.permissions;
    }

    public final Integer getPopupStyle() {
        return this.popupStyle;
    }

    public final String getPrivacyPolicyUrl() {
        return this.privacyPolicyUrl;
    }

    public final String getProcessingMethod() {
        return this.processingMethod;
    }

    public final String getRegisterType() {
        return this.registerType;
    }

    public final long getReleaseTime() {
        return this.releaseTime;
    }

    public final String getSlogan() {
        return this.slogan;
    }

    public final List<SubPackageInfo> getSubPackagePages() {
        return this.subPackagePages;
    }

    public final HashMap<String, String> getSubPackageUrls() {
        return this.subPackageUrls;
    }

    public final String getTemplateDeployVersion() {
        return this.templateDeployVersion;
    }

    public final String getTemplateMiniappId() {
        return this.templateMiniappId;
    }

    public final String getTemplatePackageUrl() {
        return this.templatePackageUrl;
    }

    public final String getUserAgreement() {
        return this.userAgreement;
    }

    public final String getUserAgreementUrl() {
        return this.userAgreementUrl;
    }

    public final String getUserAgreementVersion() {
        return this.userAgreementVersion;
    }

    public final String getVhost() {
        return this.vhost;
    }

    /* JADX INFO: renamed from: isTestVersion, reason: from getter */
    public final boolean getIsTestVersion() {
        return this.isTestVersion;
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    public final void setAppinfoCategoryType(int i11) {
        this.appinfoCategoryType = i11;
    }

    public final void setClassification(List<ClassificationInfo> list) {
        this.classification = list;
    }

    public final void setClassificationNames(List<String> list) {
        this.classificationNames = list;
    }

    public final void setCompatiblePackageUrl(String str) {
        this.compatiblePackageUrl = str;
    }

    public final void setDeployVersion(String str) {
        this.deployVersion = str;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setDeveloper(String str) {
        this.developer = str;
    }

    public final void setDeveloperVersion(String str) {
        this.developerVersion = str;
    }

    public final void setExpiresTime(long j11) {
        this.expiresTime = j11;
    }

    public final void setExtend(ExtendModel extendModel) {
        this.extend = extendModel;
    }

    public final void setForceUpdate(int i11) {
        this.forceUpdate = i11;
    }

    public final void setLinkAndButtonColor(String str) {
        this.linkAndButtonColor = str;
    }

    public final void setLogo(String str) {
        this.logo = str;
    }

    public final void setLowestOpenedVersion(String str) {
        this.lowestOpenedVersion = str;
    }

    public final void setLowestSupportTemplateVersion(String str) {
        this.lowestSupportTemplateVersion = str;
    }

    public final void setLowestSupportVersion(String str) {
        this.lowestSupportVersion = str;
    }

    public final void setMainPackagePages(List<String> list) {
        this.mainPackagePages = list;
    }

    public final void setMainPackageUrl(String str) {
        this.mainPackageUrl = str;
    }

    public final void setMainUrl(String str) {
        this.mainUrl = str;
    }

    public final void setMiniappSubtype(Integer num) {
        this.miniappSubtype = num;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setPackageSize(String str) {
        this.packageSize = str;
    }

    public final void setPackageUrl(String str) {
        this.packageUrl = str;
    }

    public final void setPermissions(PermissionModel permissionModel) {
        this.permissions = permissionModel;
    }

    public final void setPopupStyle(Integer num) {
        this.popupStyle = num;
    }

    public final void setPrivacyPolicyUrl(String str) {
        this.privacyPolicyUrl = str;
    }

    public final void setProcessingMethod(String str) {
        this.processingMethod = str;
    }

    public final void setRegisterType(String str) {
        this.registerType = str;
    }

    public final void setReleaseTime(long j11) {
        this.releaseTime = j11;
    }

    public final void setSlogan(String str) {
        this.slogan = str;
    }

    public final void setSubPackagePages(List<SubPackageInfo> list) {
        this.subPackagePages = list;
    }

    public final void setSubPackageUrls(HashMap<String, String> map) {
        this.subPackageUrls = map;
    }

    public final void setTemplateDeployVersion(String str) {
        this.templateDeployVersion = str;
    }

    public final void setTemplateMiniappId(String str) {
        this.templateMiniappId = str;
    }

    public final void setTemplatePackageUrl(String str) {
        this.templatePackageUrl = str;
    }

    public final void setTestVersion(boolean z10) {
        this.isTestVersion = z10;
    }

    public final void setUserAgreement(String str) {
        this.userAgreement = str;
    }

    public final void setUserAgreementUrl(String str) {
        this.userAgreementUrl = str;
    }

    public final void setUserAgreementVersion(String str) {
        this.userAgreementVersion = str;
    }

    public final void setVhost(String str) {
        this.vhost = str;
    }

    public String toString() {
        return "AppInfoModel(appId=" + this.appId + ", deployVersion=" + this.deployVersion + ", desc=" + this.desc + ", slogan=" + this.slogan + ", developerVersion=" + this.developerVersion + ", logo=" + this.logo + ", mainUrl=" + this.mainUrl + ", name=" + this.name + ", packageUrl=" + this.packageUrl + ", vhost=" + this.vhost + ", developer=" + this.developer + ", permissions=" + this.permissions + ", expiresTime=" + this.expiresTime + ", releaseTime=" + this.releaseTime + ", lowestSupportVersion=" + this.lowestSupportVersion + ", lowestOpenedVersion=" + this.lowestOpenedVersion + ", forceUpdate=" + this.forceUpdate + ", packageSize=" + this.packageSize + ", classificationNames=" + this.classificationNames + ", registerType=" + this.registerType + ", appinfoCategoryType=" + this.appinfoCategoryType + ", extend=" + this.extend + ", mainPackageUrl=" + this.mainPackageUrl + ", userAgreement=" + this.userAgreement + ", privacyPolicyUrl=" + this.privacyPolicyUrl + ", linkAndButtonColor=" + this.linkAndButtonColor + ", processingMethod=" + this.processingMethod + ",popupStyle=" + this.popupStyle + ",miniappSubtype=" + this.miniappSubtype + ",templateMiniappId=" + this.templateMiniappId + ",templatePackageUrl=" + this.templatePackageUrl + ",templateDeployVersion=" + this.templateDeployVersion + ",lowestSupportTemplateVersion=" + this.lowestSupportTemplateVersion + ",compatiblePackageUrl=" + this.compatiblePackageUrl;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.appId);
        parcel.writeString(this.deployVersion);
        parcel.writeString(this.desc);
        parcel.writeString(this.slogan);
        parcel.writeString(this.developerVersion);
        parcel.writeString(this.logo);
        parcel.writeString(this.mainUrl);
        parcel.writeString(this.name);
        parcel.writeString(this.packageUrl);
        parcel.writeString(this.vhost);
        parcel.writeString(this.developer);
        parcel.writeParcelable(this.permissions, flags);
        parcel.writeLong(this.expiresTime);
        parcel.writeLong(this.releaseTime);
        parcel.writeString(this.lowestSupportVersion);
        parcel.writeString(this.packageSize);
        parcel.writeStringList(this.classificationNames);
        parcel.writeString(this.registerType);
        parcel.writeInt(this.appinfoCategoryType);
        parcel.writeParcelable(this.extend, flags);
        parcel.writeString(this.lowestOpenedVersion);
        parcel.writeInt(this.forceUpdate);
        parcel.writeByte(this.isTestVersion ? (byte) 1 : (byte) 0);
        parcel.writeString(this.mainPackageUrl);
        parcel.writeMap(this.subPackageUrls);
        parcel.writeTypedList(this.subPackagePages);
        parcel.writeStringList(this.mainPackagePages);
        parcel.writeTypedList(this.classification);
        parcel.writeString(this.userAgreement);
        parcel.writeString(this.userAgreementVersion);
        parcel.writeString(this.userAgreementUrl);
        parcel.writeString(this.privacyPolicyUrl);
        parcel.writeString(this.linkAndButtonColor);
        parcel.writeString(this.processingMethod);
        Integer num = this.popupStyle;
        parcel.writeInt(num != null ? num.intValue() : 0);
        Integer num2 = this.miniappSubtype;
        parcel.writeInt(num2 != null ? num2.intValue() : 0);
        parcel.writeString(this.templateMiniappId);
        parcel.writeString(this.templatePackageUrl);
        parcel.writeString(this.templateDeployVersion);
        parcel.writeString(this.lowestSupportTemplateVersion);
        parcel.writeString(this.compatiblePackageUrl);
    }
}
