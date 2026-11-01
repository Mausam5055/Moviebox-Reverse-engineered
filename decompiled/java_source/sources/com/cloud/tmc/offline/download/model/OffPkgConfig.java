package com.cloud.tmc.offline.download.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b9\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\b\u0018\u0000 a2\u00020\u00012\u00020\u0002:\u0001aB\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B¥\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012,\b\u0002\u0010\u0013\u001a&\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014j\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u0001`\u0015\u0012,\b\u0002\u0010\u0016\u001a&\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014j\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u0001`\u0015\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e¢\u0006\u0002\u0010 J\u000b\u0010D\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0007HÆ\u0003J-\u0010G\u001a&\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014j\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u0001`\u0015HÆ\u0003J-\u0010H\u001a&\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014j\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u0001`\u0015HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u0011\u0010M\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eHÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010T\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010U\u001a\u00020\u0010HÆ\u0003J©\u0002\u0010V\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072,\b\u0002\u0010\u0013\u001a&\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014j\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u0001`\u00152,\b\u0002\u0010\u0016\u001a&\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014j\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u0001`\u00152\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0010\b\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eHÆ\u0001J\b\u0010W\u001a\u00020\u0010H\u0016J\u0013\u0010X\u001a\u00020Y2\b\u0010Z\u001a\u0004\u0018\u00010[HÖ\u0003J\t\u0010\\\u001a\u00020\u0010HÖ\u0001J\t\u0010]\u001a\u00020\u0007HÖ\u0001J\u0018\u0010^\u001a\u00020_2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010`\u001a\u00020\u0010H\u0016R\"\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b)\u0010&R>\u0010\u0016\u001a&\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014j\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u0001`\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010&\"\u0004\b3\u00104R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010&\"\u0004\b6\u00104R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b7\u0010&R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b8\u0010&R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b9\u0010&R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b:\u0010&R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b;\u0010&R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b<\u0010&R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R5\u0010\u0013\u001a&\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014j\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u0001`\u0015¢\u0006\b\n\u0000\u001a\u0004\b?\u0010+R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010&\"\u0004\bA\u00104R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010&\"\u0004\bC\u00104¨\u0006b"}, d2 = {"Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "downloadModel", "", "app", "group", TmcConstants.KEY_LANGUAGE, "name", "nation", NetworkBridge.KEY_NETWORK_TYPE, "pkgUrl", TrackingKey.PRIORITY, "", "version", NativeComponentConstants.KEY_COMPONENT_TYPE, "resMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "extInfo", "extraConfig", "pkgEncrypted", TmcConstants.EXTRA_APPINFO, "Lcom/cloud/tmc/integration/model/AppInfoModel;", "extParams", "Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;", "allowDeliveryDimension", "", "Lcom/cloud/tmc/offline/download/model/DeliveryDimensionData;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/integration/model/AppInfoModel;Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;Ljava/util/List;)V", "getAllowDeliveryDimension", "()Ljava/util/List;", "setAllowDeliveryDimension", "(Ljava/util/List;)V", "getApp", "()Ljava/lang/String;", "getAppInfo", "()Lcom/cloud/tmc/integration/model/AppInfoModel;", "getDownloadModel", "getExtInfo", "()Ljava/util/HashMap;", "setExtInfo", "(Ljava/util/HashMap;)V", "getExtParams", "()Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;", "setExtParams", "(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;)V", "getExtraConfig", "setExtraConfig", "(Ljava/lang/String;)V", "getGroup", "setGroup", "getLanguage", "getName", "getNation", "getNetworkType", "getPkgEncrypted", "getPkgUrl", "getPriority", "()I", "getResMap", "getType", "setType", "getVersion", "setVersion", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final /* data */ class OffPkgConfig extends BaseBean implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private List<DeliveryDimensionData> allowDeliveryDimension;
    private final String app;
    private final AppInfoModel appInfo;
    private final String downloadModel;
    private HashMap<String, String> extInfo;
    private OffPkgConfigExtParams extParams;
    private String extraConfig;
    private String group;
    private final String language;
    private final String name;
    private final String nation;
    private final String networkType;
    private final String pkgEncrypted;
    private final String pkgUrl;
    private final int priority;
    private final HashMap<String, String> resMap;
    private String type;
    private String version;

    /* JADX INFO: renamed from: com.cloud.tmc.offline.download.model.OffPkgConfig$CREATOR, reason: from kotlin metadata */
    @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/offline/download/model/OffPkgConfig$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<OffPkgConfig> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OffPkgConfig createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new OffPkgConfig(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OffPkgConfig[] newArray(int size) {
            return new OffPkgConfig[size];
        }
    }

    public OffPkgConfig() {
        this(null, null, null, null, null, null, null, null, 0, null, null, null, null, null, null, null, null, null, 262143, null);
    }

    public OffPkgConfig(Parcel parcel) {
        String str;
        HashMap map;
        HashMap map2;
        Intrinsics.h(parcel, "parcel");
        String string = parcel.readString();
        String string2 = parcel.readString();
        String string3 = parcel.readString();
        String string4 = parcel.readString();
        String string5 = parcel.readString();
        String string6 = parcel.readString();
        String string7 = parcel.readString();
        String string8 = parcel.readString();
        int i11 = parcel.readInt();
        String string9 = parcel.readString();
        String string10 = parcel.readString();
        HashMap hashMap = parcel.readHashMap(HashMap.class.getClassLoader());
        if (hashMap != null) {
            map = new HashMap();
            for (Object obj : hashMap.keySet()) {
                String str2 = string10;
                Object obj2 = hashMap.get(obj);
                if (obj2 != null ? obj2 instanceof String : true) {
                    map.put(obj.toString(), (String) hashMap.get(obj));
                }
                string10 = str2;
            }
            str = string10;
        } else {
            str = string10;
            map = null;
        }
        HashMap hashMap2 = parcel.readHashMap(HashMap.class.getClassLoader());
        if (hashMap2 != null) {
            HashMap map3 = new HashMap();
            Iterator it = hashMap2.keySet().iterator();
            while (it.hasNext()) {
                Object next = it.next();
                Iterator it2 = it;
                Object obj3 = hashMap2.get(next);
                if (obj3 != null ? obj3 instanceof String : true) {
                    map3.put(next.toString(), (String) hashMap2.get(next));
                }
                it = it2;
            }
            map2 = map3;
        } else {
            map2 = null;
        }
        this(string, string2, string3, string4, string5, string6, string7, string8, i11, string9, str, map, map2, parcel.readString(), parcel.readString(), (AppInfoModel) parcel.readParcelable(AppModel.class.getClassLoader()), (OffPkgConfigExtParams) parcel.readParcelable(OffPkgConfigExtParams.class.getClassLoader()), parcel.createTypedArrayList(DeliveryDimensionData.INSTANCE));
    }

    public OffPkgConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i11, String str9, String str10, HashMap<String, String> map, HashMap<String, String> map2, String str11, String str12, AppInfoModel appInfoModel, OffPkgConfigExtParams offPkgConfigExtParams, List<DeliveryDimensionData> list) {
        this.downloadModel = str;
        this.app = str2;
        this.group = str3;
        this.language = str4;
        this.name = str5;
        this.nation = str6;
        this.networkType = str7;
        this.pkgUrl = str8;
        this.priority = i11;
        this.version = str9;
        this.type = str10;
        this.resMap = map;
        this.extInfo = map2;
        this.extraConfig = str11;
        this.pkgEncrypted = str12;
        this.appInfo = appInfoModel;
        this.extParams = offPkgConfigExtParams;
        this.allowDeliveryDimension = list;
    }

    public /* synthetic */ OffPkgConfig(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i11, String str9, String str10, HashMap map, HashMap map2, String str11, String str12, AppInfoModel appInfoModel, OffPkgConfigExtParams offPkgConfigExtParams, List list, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) != 0 ? null : str4, (i12 & 16) != 0 ? null : str5, (i12 & 32) != 0 ? null : str6, (i12 & 64) != 0 ? null : str7, (i12 & 128) != 0 ? null : str8, (i12 & 256) != 0 ? 5 : i11, (i12 & 512) != 0 ? null : str9, (i12 & 1024) != 0 ? null : str10, (i12 & 2048) != 0 ? null : map, (i12 & 4096) != 0 ? null : map2, (i12 & 8192) != 0 ? null : str11, (i12 & 16384) != 0 ? null : str12, (i12 & 32768) != 0 ? null : appInfoModel, (i12 & 65536) != 0 ? null : offPkgConfigExtParams, (i12 & 131072) != 0 ? null : list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDownloadModel() {
        return this.downloadModel;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final HashMap<String, String> component12() {
        return this.resMap;
    }

    public final HashMap<String, String> component13() {
        return this.extInfo;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getExtraConfig() {
        return this.extraConfig;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getPkgEncrypted() {
        return this.pkgEncrypted;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final AppInfoModel getAppInfo() {
        return this.appInfo;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final OffPkgConfigExtParams getExtParams() {
        return this.extParams;
    }

    public final List<DeliveryDimensionData> component18() {
        return this.allowDeliveryDimension;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getApp() {
        return this.app;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getGroup() {
        return this.group;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getNation() {
        return this.nation;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getNetworkType() {
        return this.networkType;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getPkgUrl() {
        return this.pkgUrl;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getPriority() {
        return this.priority;
    }

    public final OffPkgConfig copy(String downloadModel, String app, String group, String language, String name, String nation, String networkType, String pkgUrl, int priority, String version, String type, HashMap<String, String> resMap, HashMap<String, String> extInfo, String extraConfig, String pkgEncrypted, AppInfoModel appInfo, OffPkgConfigExtParams extParams, List<DeliveryDimensionData> allowDeliveryDimension) {
        return new OffPkgConfig(downloadModel, app, group, language, name, nation, networkType, pkgUrl, priority, version, type, resMap, extInfo, extraConfig, pkgEncrypted, appInfo, extParams, allowDeliveryDimension);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OffPkgConfig)) {
            return false;
        }
        OffPkgConfig offPkgConfig = (OffPkgConfig) other;
        return Intrinsics.c(this.downloadModel, offPkgConfig.downloadModel) && Intrinsics.c(this.app, offPkgConfig.app) && Intrinsics.c(this.group, offPkgConfig.group) && Intrinsics.c(this.language, offPkgConfig.language) && Intrinsics.c(this.name, offPkgConfig.name) && Intrinsics.c(this.nation, offPkgConfig.nation) && Intrinsics.c(this.networkType, offPkgConfig.networkType) && Intrinsics.c(this.pkgUrl, offPkgConfig.pkgUrl) && this.priority == offPkgConfig.priority && Intrinsics.c(this.version, offPkgConfig.version) && Intrinsics.c(this.type, offPkgConfig.type) && Intrinsics.c(this.resMap, offPkgConfig.resMap) && Intrinsics.c(this.extInfo, offPkgConfig.extInfo) && Intrinsics.c(this.extraConfig, offPkgConfig.extraConfig) && Intrinsics.c(this.pkgEncrypted, offPkgConfig.pkgEncrypted) && Intrinsics.c(this.appInfo, offPkgConfig.appInfo) && Intrinsics.c(this.extParams, offPkgConfig.extParams) && Intrinsics.c(this.allowDeliveryDimension, offPkgConfig.allowDeliveryDimension);
    }

    public final List<DeliveryDimensionData> getAllowDeliveryDimension() {
        return this.allowDeliveryDimension;
    }

    public final String getApp() {
        return this.app;
    }

    public final AppInfoModel getAppInfo() {
        return this.appInfo;
    }

    public final String getDownloadModel() {
        return this.downloadModel;
    }

    public final HashMap<String, String> getExtInfo() {
        return this.extInfo;
    }

    public final OffPkgConfigExtParams getExtParams() {
        return this.extParams;
    }

    public final String getExtraConfig() {
        return this.extraConfig;
    }

    public final String getGroup() {
        return this.group;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getName() {
        return this.name;
    }

    public final String getNation() {
        return this.nation;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getPkgEncrypted() {
        return this.pkgEncrypted;
    }

    public final String getPkgUrl() {
        return this.pkgUrl;
    }

    public final int getPriority() {
        return this.priority;
    }

    public final HashMap<String, String> getResMap() {
        return this.resMap;
    }

    public final String getType() {
        return this.type;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.downloadModel;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.app;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.group;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.language;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.name;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.nation;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.networkType;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.pkgUrl;
        int iHashCode8 = (((iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31) + this.priority) * 31;
        String str9 = this.version;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.type;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        HashMap<String, String> map = this.resMap;
        int iHashCode11 = (iHashCode10 + (map == null ? 0 : map.hashCode())) * 31;
        HashMap<String, String> map2 = this.extInfo;
        int iHashCode12 = (iHashCode11 + (map2 == null ? 0 : map2.hashCode())) * 31;
        String str11 = this.extraConfig;
        int iHashCode13 = (iHashCode12 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.pkgEncrypted;
        int iHashCode14 = (iHashCode13 + (str12 == null ? 0 : str12.hashCode())) * 31;
        AppInfoModel appInfoModel = this.appInfo;
        int iHashCode15 = (iHashCode14 + (appInfoModel == null ? 0 : appInfoModel.hashCode())) * 31;
        OffPkgConfigExtParams offPkgConfigExtParams = this.extParams;
        int iHashCode16 = (iHashCode15 + (offPkgConfigExtParams == null ? 0 : offPkgConfigExtParams.hashCode())) * 31;
        List<DeliveryDimensionData> list = this.allowDeliveryDimension;
        return iHashCode16 + (list != null ? list.hashCode() : 0);
    }

    public final void setAllowDeliveryDimension(List<DeliveryDimensionData> list) {
        this.allowDeliveryDimension = list;
    }

    public final void setExtInfo(HashMap<String, String> map) {
        this.extInfo = map;
    }

    public final void setExtParams(OffPkgConfigExtParams offPkgConfigExtParams) {
        this.extParams = offPkgConfigExtParams;
    }

    public final void setExtraConfig(String str) {
        this.extraConfig = str;
    }

    public final void setGroup(String str) {
        this.group = str;
    }

    public final void setType(String str) {
        this.type = str;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "OffPkgConfig(downloadModel=" + this.downloadModel + ", app=" + this.app + ", group=" + this.group + ", language=" + this.language + ", name=" + this.name + ", nation=" + this.nation + ", networkType=" + this.networkType + ", pkgUrl=" + this.pkgUrl + ", priority=" + this.priority + ", version=" + this.version + ", type=" + this.type + ", resMap=" + this.resMap + ", extInfo=" + this.extInfo + ", extraConfig=" + this.extraConfig + ", pkgEncrypted=" + this.pkgEncrypted + ", appInfo=" + this.appInfo + ", extParams=" + this.extParams + ", allowDeliveryDimension=" + this.allowDeliveryDimension + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.downloadModel);
        parcel.writeString(this.app);
        parcel.writeString(this.group);
        parcel.writeString(this.language);
        parcel.writeString(this.name);
        parcel.writeString(this.nation);
        parcel.writeString(this.networkType);
        parcel.writeString(this.pkgUrl);
        parcel.writeInt(this.priority);
        parcel.writeString(this.version);
        parcel.writeString(this.type);
        parcel.writeMap(this.resMap);
        parcel.writeMap(this.extInfo);
        parcel.writeString(this.extraConfig);
        parcel.writeString(this.pkgEncrypted);
        parcel.writeParcelable(this.appInfo, flags);
        parcel.writeParcelable(this.extParams, flags);
        parcel.writeTypedList(this.allowDeliveryDimension);
    }
}
