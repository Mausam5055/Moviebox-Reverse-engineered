package com.cloud.tmc.integration.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.miniutils.util.EmptyUtils;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 02\u00020\u00012\u00020\u00022\u00020\u0003:\u0006012345B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010)\u001a\u00020*H\u0016J\u0006\u0010+\u001a\u00020,J\u0018\u0010-\u001a\u00020.2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010/\u001a\u00020*H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR2\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0014\u0018\u0001`\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u000b\"\u0004\b\u0018\u0010\rR\u001a\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R2\u0010\u001d\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001e\u0018\u00010\u0013j\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001e\u0018\u0001`\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001a8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(¨\u00066"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "handleTabBarLoad", "", "getHandleTabBarLoad", "()Ljava/lang/String;", "setHandleTabBarLoad", "(Ljava/lang/String;)V", "iconFile", "includeFiles", "getIncludeFiles", "setIncludeFiles", TmcConstants.EXTRA_RES_LAUNCH_PARAMS, "Ljava/util/HashMap;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;", "Lkotlin/collections/HashMap;", "mfah", "getMfah", "setMfah", "pages", "", "pkgExts", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;", "preloadRule", "Lcom/cloud/tmc/integration/model/PreloadRuleSubpackage;", "subPackages", "Lcom/cloud/tmc/integration/model/Subpackage;", "tabBar", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "window", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;", "getWindow", "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;", "setWindow", "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V", "describeContents", "", "tabBarManual", "", "writeToParcel", "", "flags", "CREATOR", "PagesBean", "PkgExtBean", "TabBarBean", "ThemeBean", "WindowBean", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MiniAppConfigModel extends BaseBean implements Serializable, Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private String handleTabBarLoad;

    @JvmField
    public String iconFile;
    private String includeFiles;

    @JvmField
    public HashMap<String, PagesBean> launchParams;
    private String mfah;

    @JvmField
    public List<String> pages;

    @JvmField
    public List<PkgExtBean> pkgExts;

    @JvmField
    public HashMap<String, PreloadRuleSubpackage> preloadRule;

    @JvmField
    public List<Subpackage> subPackages;

    @JvmField
    public TabBarBean tabBar;
    private WindowBean window;

    /* JADX INFO: renamed from: com.cloud.tmc.integration.model.MiniAppConfigModel$CREATOR, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/MiniAppConfigModel;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<MiniAppConfigModel> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MiniAppConfigModel createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new MiniAppConfigModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MiniAppConfigModel[] newArray(int size) {
            return new MiniAppConfigModel[size];
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00132\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0013B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u000fH\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "window", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;", "getWindow", "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;", "setWindow", "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;)V", "describeContents", "", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class PagesBean extends BaseBean implements Serializable, Parcelable {

        /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private WindowBean window;

        /* JADX INFO: renamed from: com.cloud.tmc.integration.model.MiniAppConfigModel$PagesBean$CREATOR, reason: from kotlin metadata */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion implements Parcelable.Creator<PagesBean> {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PagesBean createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new PagesBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PagesBean[] newArray(int size) {
                return new PagesBean[size];
            }
        }

        public PagesBean() {
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public PagesBean(Parcel parcel) {
            this();
            Intrinsics.h(parcel, "parcel");
            this.window = (WindowBean) parcel.readParcelable(WindowBean.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final WindowBean getWindow() {
            return this.window;
        }

        public final void setWindow(WindowBean windowBean) {
            this.window = windowBean;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.h(parcel, "parcel");
            parcel.writeParcelable(this.window, flags);
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \"2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\"B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u001eH\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006#"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "dark", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;", "getDark", "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;", "setDark", "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;)V", "light", "getLight", "setLight", PushConstants.PROVIDER_FIELD_PKG, "", "getPkg", "()Ljava/lang/String;", "setPkg", "(Ljava/lang/String;)V", "tarBar", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "getTarBar", "()Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "setTarBar", "(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;)V", "describeContents", "", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class PkgExtBean extends BaseBean implements Serializable, Parcelable {

        /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private ThemeBean dark;
        private ThemeBean light;
        private String pkg;
        private TabBarBean tarBar;

        /* JADX INFO: renamed from: com.cloud.tmc.integration.model.MiniAppConfigModel$PkgExtBean$CREATOR, reason: from kotlin metadata */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PkgExtBean;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion implements Parcelable.Creator<PkgExtBean> {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PkgExtBean createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new PkgExtBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PkgExtBean[] newArray(int size) {
                return new PkgExtBean[size];
            }
        }

        public PkgExtBean() {
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public PkgExtBean(Parcel parcel) {
            this();
            Intrinsics.h(parcel, "parcel");
            this.pkg = parcel.readString();
            this.light = (ThemeBean) parcel.readParcelable(ThemeBean.class.getClassLoader());
            this.dark = (ThemeBean) parcel.readParcelable(ThemeBean.class.getClassLoader());
            this.tarBar = (TabBarBean) parcel.readParcelable(TabBarBean.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final ThemeBean getDark() {
            return this.dark;
        }

        public final ThemeBean getLight() {
            return this.light;
        }

        public final String getPkg() {
            return this.pkg;
        }

        public final TabBarBean getTarBar() {
            return this.tarBar;
        }

        public final void setDark(ThemeBean themeBean) {
            this.dark = themeBean;
        }

        public final void setLight(ThemeBean themeBean) {
            this.light = themeBean;
        }

        public final void setPkg(String str) {
            this.pkg = str;
        }

        public final void setTarBar(TabBarBean tabBarBean) {
            this.tarBar = tabBarBean;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.h(parcel, "parcel");
            parcel.writeString(this.pkg);
            parcel.writeParcelable(this.light, flags);
            parcel.writeParcelable(this.dark, flags);
            parcel.writeParcelable(this.tarBar, flags);
        }
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u0000 02\u00020\u00012\u00020\u00022\u00020\u0003:\u000201B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010$\u001a\u00020%H\u0016J\u0013\u0010&\u001a\u00020\u00152\b\u0010'\u001a\u0004\u0018\u00010(H\u0096\u0002J\b\u0010)\u001a\u00020%H\u0016J\u0006\u0010*\u001a\u00020\u0015J\u0006\u0010+\u001a\u00020\u0015J\u0006\u0010,\u001a\u00020\u0015J\u0018\u0010-\u001a\u00020.2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010/\u001a\u00020%H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001c8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u000b\"\u0004\b \u0010\rR\u001c\u0010!\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000b\"\u0004\b#\u0010\r¨\u00062"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "backgroundColor", "", "getBackgroundColor", "()Ljava/lang/String;", "setBackgroundColor", "(Ljava/lang/String;)V", "borderStyle", "getBorderStyle", "setBorderStyle", TtmlNode.ATTR_TTS_COLOR, "getColor", "setColor", "custom", "", "getCustom", "()Ljava/lang/Boolean;", "setCustom", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "list", "", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;", RequestParameters.POSITION, "getPosition", "setPosition", "selectedColor", "getSelectedColor", "setSelectedColor", "describeContents", "", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "tabBarBorderStyleIsWhite", "tabBarCustom", "tabBarPositionIsTop", "writeToParcel", "", "flags", "CREATOR", "ListBean", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class TabBarBean extends BaseBean implements Serializable, Parcelable {

        /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String backgroundColor;
        private String borderStyle;
        private String color;
        private Boolean custom;

        @JvmField
        public List<ListBean> list;
        private String position;
        private String selectedColor;

        /* JADX INFO: renamed from: com.cloud.tmc.integration.model.MiniAppConfigModel$TabBarBean$CREATOR, reason: from kotlin metadata */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion implements Parcelable.Creator<TabBarBean> {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TabBarBean createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new TabBarBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TabBarBean[] newArray(int size) {
                return new TabBarBean[size];
            }
        }

        @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00182\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0018B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\b\u0010\u0014\u001a\u00020\tH\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u000eH\u0016R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "iconPath", "", FrameworkConstants.GLOBAL_DATA_KEY_PAGE_PATH, "selectedIconPath", MimeTypes.BASE_TYPE_TEXT, "describeContents", "", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class ListBean extends BaseBean implements Serializable, Parcelable {

            /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);

            @JvmField
            public String iconPath;

            @JvmField
            public String pagePath;

            @JvmField
            public String selectedIconPath;

            @JvmField
            public String text;

            /* JADX INFO: renamed from: com.cloud.tmc.integration.model.MiniAppConfigModel$TabBarBean$ListBean$CREATOR, reason: from kotlin metadata */
            @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
            public static final class Companion implements Parcelable.Creator<ListBean> {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public ListBean createFromParcel(Parcel parcel) {
                    Intrinsics.h(parcel, "parcel");
                    return new ListBean(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public ListBean[] newArray(int size) {
                    return new ListBean[size];
                }
            }

            public ListBean() {
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public ListBean(Parcel parcel) {
                this();
                Intrinsics.h(parcel, "parcel");
                this.pagePath = parcel.readString();
                this.text = parcel.readString();
                this.iconPath = parcel.readString();
                this.selectedIconPath = parcel.readString();
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (other == null || !Intrinsics.c(ListBean.class, other.getClass())) {
                    return false;
                }
                ListBean listBean = (ListBean) other;
                return Intrinsics.c(this.pagePath, listBean.pagePath) && Intrinsics.c(this.text, listBean.text) && Intrinsics.c(this.iconPath, listBean.iconPath) && Intrinsics.c(this.selectedIconPath, listBean.selectedIconPath);
            }

            public int hashCode() {
                return Objects.hash(this.pagePath, this.text, this.iconPath, this.selectedIconPath);
            }

            public String toString() {
                return "ListBean(pagePath=" + this.pagePath + ", text=" + this.text + ", iconPath=" + this.iconPath + ", selectedIconPath=" + this.selectedIconPath + ")";
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int flags) {
                Intrinsics.h(parcel, "parcel");
                parcel.writeString(this.pagePath);
                parcel.writeString(this.text);
                parcel.writeString(this.iconPath);
                parcel.writeString(this.selectedIconPath);
            }
        }

        public TabBarBean() {
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public TabBarBean(Parcel parcel) {
            this();
            Intrinsics.h(parcel, "parcel");
            this.color = parcel.readString();
            this.selectedColor = parcel.readString();
            this.backgroundColor = parcel.readString();
            this.borderStyle = parcel.readString();
            this.list = parcel.createTypedArrayList(ListBean.INSTANCE);
            this.position = parcel.readString();
            Object value = parcel.readValue(Boolean.TYPE.getClassLoader());
            this.custom = value instanceof Boolean ? (Boolean) value : null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (other == null || !Intrinsics.c(TabBarBean.class, other.getClass())) {
                return false;
            }
            TabBarBean tabBarBean = (TabBarBean) other;
            return Intrinsics.c(this.color, tabBarBean.color) && Intrinsics.c(this.selectedColor, tabBarBean.selectedColor) && Intrinsics.c(this.backgroundColor, tabBarBean.backgroundColor) && Intrinsics.c(this.borderStyle, tabBarBean.borderStyle) && Intrinsics.c(this.position, tabBarBean.position) && Intrinsics.c(this.custom, tabBarBean.custom) && Intrinsics.c(this.list, tabBarBean.list);
        }

        public final String getBackgroundColor() {
            return this.backgroundColor;
        }

        public final String getBorderStyle() {
            return this.borderStyle;
        }

        public final String getColor() {
            return this.color;
        }

        public final Boolean getCustom() {
            return this.custom;
        }

        public final String getPosition() {
            return this.position;
        }

        public final String getSelectedColor() {
            return this.selectedColor;
        }

        public int hashCode() {
            String str = this.color;
            String str2 = this.selectedColor;
            String str3 = this.backgroundColor;
            String str4 = this.borderStyle;
            String str5 = this.position;
            Boolean bool = this.custom;
            List<ListBean> list = this.list;
            return Objects.hash(str, str2, str3, str4, str5, bool, list != null ? list.toString() : null);
        }

        public final void setBackgroundColor(String str) {
            this.backgroundColor = str;
        }

        public final void setBorderStyle(String str) {
            this.borderStyle = str;
        }

        public final void setColor(String str) {
            this.color = str;
        }

        public final void setCustom(Boolean bool) {
            this.custom = bool;
        }

        public final void setPosition(String str) {
            this.position = str;
        }

        public final void setSelectedColor(String str) {
            this.selectedColor = str;
        }

        public final boolean tabBarBorderStyleIsWhite() {
            return Intrinsics.c("white", this.borderStyle);
        }

        public final boolean tabBarCustom() {
            return Intrinsics.c(Boolean.TRUE, this.custom);
        }

        public final boolean tabBarPositionIsTop() {
            return Intrinsics.c(IntegrationConstants.TAB_BAR_POSITION_TOP, this.position);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.h(parcel, "parcel");
            parcel.writeString(this.color);
            parcel.writeString(this.selectedColor);
            parcel.writeString(this.backgroundColor);
            parcel.writeString(this.borderStyle);
            parcel.writeTypedList(this.list);
            parcel.writeString(this.position);
            parcel.writeValue(this.custom);
        }
    }

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 32\u00020\u00012\u00020\u00022\u00020\u0003:\u00013B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u0002012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00102\u001a\u00020/H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR \u0010\u000e\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR \u0010\u0014\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\rR \u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\rR:\u0010\u001a\u001a\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bj\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001c\u0018\u0001`\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R \u0010\"\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u000b\"\u0004\b$\u0010\rR \u0010%\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u000b\"\u0004\b'\u0010\rR \u0010(\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u000b\"\u0004\b*\u0010\rR\u001c\u0010+\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010\u000b\"\u0004\b-\u0010\r¨\u00064"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "assist", "", "getAssist", "()Ljava/lang/String;", "setAssist", "(Ljava/lang/String;)V", "bg01", "getBg01", "setBg01", "brand", "getBrand", "setBrand", "disableButton", "getDisableButton", "setDisableButton", "labelBg", "getLabelBg", "setLabelBg", TmcConstants.EXTRA_RES_LAUNCH_PARAMS, "Ljava/util/HashMap;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$PagesBean;", "Lkotlin/collections/HashMap;", "getLaunchParams", "()Ljava/util/HashMap;", "setLaunchParams", "(Ljava/util/HashMap;)V", "mainButton0", "getMainButton0", "setMainButton0", "mainButton100", "getMainButton100", "setMainButton100", "textOnButton", "getTextOnButton", "setTextOnButton", "theme", "getTheme", "setTheme", "describeContents", "", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public static final class ThemeBean extends BaseBean implements Serializable, Parcelable {

        /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String assist;

        @SerializedName("bg_01")
        private String bg01;
        private String brand;

        @SerializedName("disable_button")
        private String disableButton;

        @SerializedName("label_bg")
        private String labelBg;
        private HashMap<String, PagesBean> launchParams;

        @SerializedName("main_button_0")
        private String mainButton0;

        @SerializedName("main_button_100")
        private String mainButton100;

        @SerializedName("text_on_button")
        private String textOnButton;
        private String theme;

        /* JADX INFO: renamed from: com.cloud.tmc.integration.model.MiniAppConfigModel$ThemeBean$CREATOR, reason: from kotlin metadata */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/MiniAppConfigModel$ThemeBean;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion implements Parcelable.Creator<ThemeBean> {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ThemeBean createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new ThemeBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ThemeBean[] newArray(int size) {
                return new ThemeBean[size];
            }
        }

        public ThemeBean() {
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public ThemeBean(Parcel parcel) {
            HashMap<String, PagesBean> map;
            this();
            Intrinsics.h(parcel, "parcel");
            this.theme = parcel.readString();
            this.brand = parcel.readString();
            this.labelBg = parcel.readString();
            this.bg01 = parcel.readString();
            this.mainButton0 = parcel.readString();
            this.mainButton100 = parcel.readString();
            this.disableButton = parcel.readString();
            this.textOnButton = parcel.readString();
            this.assist = parcel.readString();
            HashMap hashMap = parcel.readHashMap(PagesBean.class.getClassLoader());
            if (hashMap != null) {
                map = new HashMap<>();
                for (Object obj : hashMap.keySet()) {
                    if (hashMap.get(obj) instanceof PagesBean) {
                        String string = obj.toString();
                        Object obj2 = hashMap.get(obj);
                        if (obj2 == null) {
                            throw new NullPointerException("null cannot be cast to non-null type com.cloud.tmc.integration.model.MiniAppConfigModel.PagesBean");
                        }
                        map.put(string, (PagesBean) obj2);
                    }
                }
            } else {
                map = null;
            }
            this.launchParams = map;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final String getAssist() {
            return this.assist;
        }

        public final String getBg01() {
            return this.bg01;
        }

        public final String getBrand() {
            return this.brand;
        }

        public final String getDisableButton() {
            return this.disableButton;
        }

        public final String getLabelBg() {
            return this.labelBg;
        }

        public final HashMap<String, PagesBean> getLaunchParams() {
            return this.launchParams;
        }

        public final String getMainButton0() {
            return this.mainButton0;
        }

        public final String getMainButton100() {
            return this.mainButton100;
        }

        public final String getTextOnButton() {
            return this.textOnButton;
        }

        public final String getTheme() {
            return this.theme;
        }

        public final void setAssist(String str) {
            this.assist = str;
        }

        public final void setBg01(String str) {
            this.bg01 = str;
        }

        public final void setBrand(String str) {
            this.brand = str;
        }

        public final void setDisableButton(String str) {
            this.disableButton = str;
        }

        public final void setLabelBg(String str) {
            this.labelBg = str;
        }

        public final void setLaunchParams(HashMap<String, PagesBean> map) {
            this.launchParams = map;
        }

        public final void setMainButton0(String str) {
            this.mainButton0 = str;
        }

        public final void setMainButton100(String str) {
            this.mainButton100 = str;
        }

        public final void setTextOnButton(String str) {
            this.textOnButton = str;
        }

        public final void setTheme(String str) {
            this.theme = str;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.h(parcel, "parcel");
            parcel.writeString(this.theme);
            parcel.writeString(this.brand);
            parcel.writeString(this.labelBg);
            parcel.writeString(this.bg01);
            parcel.writeString(this.mainButton0);
            parcel.writeString(this.mainButton100);
            parcel.writeString(this.disableButton);
            parcel.writeString(this.textOnButton);
            parcel.writeString(this.assist);
            parcel.writeMap(this.launchParams);
        }
    }

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b3\n\u0002\u0010\b\n\u0002\b+\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 }2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001}B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0005¢\u0006\u0002\u0010\u0007J\b\u0010s\u001a\u00020OH\u0016J\b\u0010t\u001a\u0004\u0018\u00010\tJ\b\u0010u\u001a\u0004\u0018\u00010\tJ\u0006\u0010v\u001a\u00020\u001bJ\u0006\u0010w\u001a\u00020\u001bJ\u0006\u0010x\u001a\u00020\u001bJ\u0006\u0010y\u001a\u00020\u001bJ\u0018\u0010z\u001a\u00020{2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010|\u001a\u00020OH\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000b\"\u0004\b\u0016\u0010\rR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u000b\"\u0004\b\u0019\u0010\rR\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001e\u0010!\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b\"\u0010\u001d\"\u0004\b#\u0010\u001fR\u001e\u0010$\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b%\u0010\u001d\"\u0004\b&\u0010\u001fR\u001e\u0010'\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b(\u0010\u001d\"\u0004\b)\u0010\u001fR\u001e\u0010*\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b+\u0010\u001d\"\u0004\b,\u0010\u001fR\u001e\u0010-\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b.\u0010\u001d\"\u0004\b/\u0010\u001fR\u001c\u00100\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u000b\"\u0004\b2\u0010\rR\u001e\u00103\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\b4\u0010\u001d\"\u0004\b5\u0010\u001fR\u001c\u00106\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u000b\"\u0004\b8\u0010\rR\u001c\u00109\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u000b\"\u0004\b;\u0010\rR\u001c\u0010<\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u000b\"\u0004\b>\u0010\rR\u001c\u0010?\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010\u000b\"\u0004\bA\u0010\rR\u001c\u0010B\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bC\u0010\u000b\"\u0004\bD\u0010\rR\u001c\u0010E\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bF\u0010\u000b\"\u0004\bG\u0010\rR\u001c\u0010H\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010\u000b\"\u0004\bJ\u0010\rR\u001c\u0010K\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010\u000b\"\u0004\bM\u0010\rR\u001e\u0010N\u001a\u0004\u0018\u00010OX\u0086\u000e¢\u0006\u0010\n\u0002\u0010T\u001a\u0004\bP\u0010Q\"\u0004\bR\u0010SR\u001c\u0010U\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bV\u0010\u000b\"\u0004\bW\u0010\rR\u001c\u0010X\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bY\u0010\u000b\"\u0004\bZ\u0010\rR\u001c\u0010[\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\\\u0010\u000b\"\u0004\b]\u0010\rR\u001c\u0010^\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b_\u0010\u000b\"\u0004\b`\u0010\rR\u001c\u0010a\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bb\u0010\u000b\"\u0004\bc\u0010\rR\u001c\u0010d\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\be\u0010\u000b\"\u0004\bf\u0010\rR\u001e\u0010g\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\bh\u0010\u001d\"\u0004\bi\u0010\u001fR\u001e\u0010j\u001a\u0004\u0018\u00010OX\u0086\u000e¢\u0006\u0010\n\u0002\u0010T\u001a\u0004\bk\u0010Q\"\u0004\bl\u0010SR\u001c\u0010m\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bn\u0010\u000b\"\u0004\bo\u0010\rR\u001e\u0010p\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010 \u001a\u0004\bq\u0010\u001d\"\u0004\br\u0010\u001f¨\u0006~"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Ljava/io/Serializable;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "()V", "contentBackgroundColor", "", "getContentBackgroundColor", "()Ljava/lang/String;", "setContentBackgroundColor", "(Ljava/lang/String;)V", "darkModeContentBackgroundColor", "getDarkModeContentBackgroundColor", "setDarkModeContentBackgroundColor", "darkModeNavigationBarBackgroundColor", "getDarkModeNavigationBarBackgroundColor", "setDarkModeNavigationBarBackgroundColor", "darkModeNavigationBarIconStyle", "getDarkModeNavigationBarIconStyle", "setDarkModeNavigationBarIconStyle", "darkModeNavigationBarTextStyle", "getDarkModeNavigationBarTextStyle", "setDarkModeNavigationBarTextStyle", "enableNavigationBarLoading", "", "getEnableNavigationBarLoading", "()Ljava/lang/Boolean;", "setEnableNavigationBarLoading", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "enablePageLoading", "getEnablePageLoading", "setEnablePageLoading", "enablePullDownRefresh", "getEnablePullDownRefresh", "setEnablePullDownRefresh", "enablePullUpRefresh", "getEnablePullUpRefresh", "setEnablePullUpRefresh", "enableTabBarAdjustPan", "getEnableTabBarAdjustPan", "setEnableTabBarAdjustPan", "enableTransparentStatusBar", "getEnableTransparentStatusBar", "setEnableTransparentStatusBar", "handleWebviewPreload", "getHandleWebviewPreload", "setHandleWebviewPreload", "limitTextZoom", "getLimitTextZoom", "setLimitTextZoom", "navigationBarBackgroundColor", "getNavigationBarBackgroundColor", "setNavigationBarBackgroundColor", "navigationBarHomeAction", "getNavigationBarHomeAction", "setNavigationBarHomeAction", "navigationBarIconStyle", "getNavigationBarIconStyle", "setNavigationBarIconStyle", "navigationBarTextStyle", "getNavigationBarTextStyle", "setNavigationBarTextStyle", "navigationBarTitleText", "getNavigationBarTitleText", "setNavigationBarTitleText", "navigationStyle", "getNavigationStyle", "setNavigationStyle", "refreshFooterAccentColor", "getRefreshFooterAccentColor", "setRefreshFooterAccentColor", "refreshFooterBackgroundColor", "getRefreshFooterBackgroundColor", "setRefreshFooterBackgroundColor", "refreshFooterDelayed", "", "getRefreshFooterDelayed", "()Ljava/lang/Integer;", "setRefreshFooterDelayed", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "refreshHeaderAccentColor", "getRefreshHeaderAccentColor", "setRefreshHeaderAccentColor", "refreshHeaderBackgroundColor", "getRefreshHeaderBackgroundColor", "setRefreshHeaderBackgroundColor", "refreshHeaderCustomLoading", "getRefreshHeaderCustomLoading", "setRefreshHeaderCustomLoading", "refreshHeaderCustomLoadingGif", "getRefreshHeaderCustomLoadingGif", "setRefreshHeaderCustomLoadingGif", "refreshHeaderCustomSuccess", "getRefreshHeaderCustomSuccess", "setRefreshHeaderCustomSuccess", "refreshHeaderCustomSuccessGif", "getRefreshHeaderCustomSuccessGif", "setRefreshHeaderCustomSuccessGif", "refreshHeaderCustomTextEnable", "getRefreshHeaderCustomTextEnable", "setRefreshHeaderCustomTextEnable", "refreshHeaderDelayed", "getRefreshHeaderDelayed", "setRefreshHeaderDelayed", "refreshHeaderStyle", "getRefreshHeaderStyle", "setRefreshHeaderStyle", "refreshHeaderTranslationContent", "getRefreshHeaderTranslationContent", "setRefreshHeaderTranslationContent", "describeContents", "getContentBgColor", "getNavigationBgColor", "navigationBarIconStyleIsWhite", "navigationBarTextStyleIsWhite", "navigationStyleIsCustom", "navigationStyleIsHide", "writeToParcel", "", "flags", "CREATOR", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class WindowBean extends BaseBean implements Serializable, Parcelable {

        /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private String contentBackgroundColor;
        private String darkModeContentBackgroundColor;
        private String darkModeNavigationBarBackgroundColor;
        private String darkModeNavigationBarIconStyle;
        private String darkModeNavigationBarTextStyle;
        private Boolean enableNavigationBarLoading;
        private Boolean enablePageLoading;
        private Boolean enablePullDownRefresh;
        private Boolean enablePullUpRefresh;
        private Boolean enableTabBarAdjustPan;
        private Boolean enableTransparentStatusBar;
        private String handleWebviewPreload;
        private Boolean limitTextZoom;
        private String navigationBarBackgroundColor;
        private String navigationBarHomeAction;
        private String navigationBarIconStyle;
        private String navigationBarTextStyle;
        private String navigationBarTitleText;
        private String navigationStyle;
        private String refreshFooterAccentColor;
        private String refreshFooterBackgroundColor;
        private Integer refreshFooterDelayed;
        private String refreshHeaderAccentColor;
        private String refreshHeaderBackgroundColor;
        private String refreshHeaderCustomLoading;
        private String refreshHeaderCustomLoadingGif;
        private String refreshHeaderCustomSuccess;
        private String refreshHeaderCustomSuccessGif;
        private Boolean refreshHeaderCustomTextEnable;
        private Integer refreshHeaderDelayed;
        private String refreshHeaderStyle;
        private Boolean refreshHeaderTranslationContent;

        /* JADX INFO: renamed from: com.cloud.tmc.integration.model.MiniAppConfigModel$WindowBean$CREATOR, reason: from kotlin metadata */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/integration/model/MiniAppConfigModel$WindowBean;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion implements Parcelable.Creator<WindowBean> {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WindowBean createFromParcel(Parcel parcel) {
                Intrinsics.h(parcel, "parcel");
                return new WindowBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public WindowBean[] newArray(int size) {
                return new WindowBean[size];
            }
        }

        public WindowBean() {
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public WindowBean(Parcel parcel) {
            this();
            Intrinsics.h(parcel, "parcel");
            Class cls = Boolean.TYPE;
            Object value = parcel.readValue(cls.getClassLoader());
            this.enablePullDownRefresh = value instanceof Boolean ? (Boolean) value : null;
            Object value2 = parcel.readValue(cls.getClassLoader());
            this.enablePullUpRefresh = value2 instanceof Boolean ? (Boolean) value2 : null;
            Object value3 = parcel.readValue(cls.getClassLoader());
            this.enableTransparentStatusBar = value3 instanceof Boolean ? (Boolean) value3 : null;
            Object value4 = parcel.readValue(cls.getClassLoader());
            this.enableNavigationBarLoading = value4 instanceof Boolean ? (Boolean) value4 : null;
            this.navigationBarTitleText = parcel.readString();
            this.navigationStyle = parcel.readString();
            this.navigationBarBackgroundColor = parcel.readString();
            this.navigationBarTextStyle = parcel.readString();
            this.navigationBarIconStyle = parcel.readString();
            this.navigationBarHomeAction = parcel.readString();
            this.refreshHeaderStyle = parcel.readString();
            Object value5 = parcel.readValue(cls.getClassLoader());
            this.refreshHeaderCustomTextEnable = value5 instanceof Boolean ? (Boolean) value5 : null;
            this.refreshHeaderCustomLoading = parcel.readString();
            this.refreshHeaderCustomLoadingGif = parcel.readString();
            this.refreshHeaderCustomSuccess = parcel.readString();
            this.refreshHeaderCustomSuccessGif = parcel.readString();
            Object value6 = parcel.readValue(cls.getClassLoader());
            this.refreshHeaderTranslationContent = value6 instanceof Boolean ? (Boolean) value6 : null;
            this.refreshHeaderAccentColor = parcel.readString();
            this.refreshHeaderBackgroundColor = parcel.readString();
            Class cls2 = Integer.TYPE;
            Object value7 = parcel.readValue(cls2.getClassLoader());
            this.refreshHeaderDelayed = value7 instanceof Integer ? (Integer) value7 : null;
            this.refreshFooterAccentColor = parcel.readString();
            this.refreshFooterBackgroundColor = parcel.readString();
            Object value8 = parcel.readValue(cls2.getClassLoader());
            this.refreshFooterDelayed = value8 instanceof Integer ? (Integer) value8 : null;
            this.contentBackgroundColor = parcel.readString();
            this.handleWebviewPreload = parcel.readString();
            Object value9 = parcel.readValue(cls.getClassLoader());
            this.enablePageLoading = value9 instanceof Boolean ? (Boolean) value9 : null;
            Object value10 = parcel.readValue(cls.getClassLoader());
            this.enableTabBarAdjustPan = value10 instanceof Boolean ? (Boolean) value10 : null;
            this.darkModeNavigationBarBackgroundColor = parcel.readString();
            this.darkModeNavigationBarTextStyle = parcel.readString();
            this.darkModeNavigationBarIconStyle = parcel.readString();
            this.darkModeContentBackgroundColor = parcel.readString();
            Object value11 = parcel.readValue(cls.getClassLoader());
            this.limitTextZoom = value11 instanceof Boolean ? (Boolean) value11 : null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public final String getContentBackgroundColor() {
            return this.contentBackgroundColor;
        }

        public final String getContentBgColor() {
            try {
                return (!SystemUtils.darkThemeIsEnabled(((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext()) || EmptyUtils.textIsEmpty(this.darkModeContentBackgroundColor)) ? this.contentBackgroundColor : this.darkModeContentBackgroundColor;
            } catch (Throwable th2) {
                TmcLogger.e("", th2);
                return this.contentBackgroundColor;
            }
        }

        public final String getDarkModeContentBackgroundColor() {
            return this.darkModeContentBackgroundColor;
        }

        public final String getDarkModeNavigationBarBackgroundColor() {
            return this.darkModeNavigationBarBackgroundColor;
        }

        public final String getDarkModeNavigationBarIconStyle() {
            return this.darkModeNavigationBarIconStyle;
        }

        public final String getDarkModeNavigationBarTextStyle() {
            return this.darkModeNavigationBarTextStyle;
        }

        public final Boolean getEnableNavigationBarLoading() {
            return this.enableNavigationBarLoading;
        }

        public final Boolean getEnablePageLoading() {
            return this.enablePageLoading;
        }

        public final Boolean getEnablePullDownRefresh() {
            return this.enablePullDownRefresh;
        }

        public final Boolean getEnablePullUpRefresh() {
            return this.enablePullUpRefresh;
        }

        public final Boolean getEnableTabBarAdjustPan() {
            return this.enableTabBarAdjustPan;
        }

        public final Boolean getEnableTransparentStatusBar() {
            return this.enableTransparentStatusBar;
        }

        public final String getHandleWebviewPreload() {
            return this.handleWebviewPreload;
        }

        public final Boolean getLimitTextZoom() {
            return this.limitTextZoom;
        }

        public final String getNavigationBarBackgroundColor() {
            return this.navigationBarBackgroundColor;
        }

        public final String getNavigationBarHomeAction() {
            return this.navigationBarHomeAction;
        }

        public final String getNavigationBarIconStyle() {
            return this.navigationBarIconStyle;
        }

        public final String getNavigationBarTextStyle() {
            return this.navigationBarTextStyle;
        }

        public final String getNavigationBarTitleText() {
            return this.navigationBarTitleText;
        }

        public final String getNavigationBgColor() {
            try {
                return (!SystemUtils.darkThemeIsEnabled(((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext()) || EmptyUtils.textIsEmpty(this.darkModeNavigationBarBackgroundColor)) ? this.navigationBarBackgroundColor : this.darkModeNavigationBarBackgroundColor;
            } catch (Throwable th2) {
                TmcLogger.e("", th2);
                return this.navigationBarBackgroundColor;
            }
        }

        public final String getNavigationStyle() {
            return this.navigationStyle;
        }

        public final String getRefreshFooterAccentColor() {
            return this.refreshFooterAccentColor;
        }

        public final String getRefreshFooterBackgroundColor() {
            return this.refreshFooterBackgroundColor;
        }

        public final Integer getRefreshFooterDelayed() {
            return this.refreshFooterDelayed;
        }

        public final String getRefreshHeaderAccentColor() {
            return this.refreshHeaderAccentColor;
        }

        public final String getRefreshHeaderBackgroundColor() {
            return this.refreshHeaderBackgroundColor;
        }

        public final String getRefreshHeaderCustomLoading() {
            return this.refreshHeaderCustomLoading;
        }

        public final String getRefreshHeaderCustomLoadingGif() {
            return this.refreshHeaderCustomLoadingGif;
        }

        public final String getRefreshHeaderCustomSuccess() {
            return this.refreshHeaderCustomSuccess;
        }

        public final String getRefreshHeaderCustomSuccessGif() {
            return this.refreshHeaderCustomSuccessGif;
        }

        public final Boolean getRefreshHeaderCustomTextEnable() {
            return this.refreshHeaderCustomTextEnable;
        }

        public final Integer getRefreshHeaderDelayed() {
            return this.refreshHeaderDelayed;
        }

        public final String getRefreshHeaderStyle() {
            return this.refreshHeaderStyle;
        }

        public final Boolean getRefreshHeaderTranslationContent() {
            return this.refreshHeaderTranslationContent;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        public final boolean navigationBarIconStyleIsWhite() {
            Object objC = "white";
            try {
                objC = (!SystemUtils.darkThemeIsEnabled(((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext()) || EmptyUtils.textIsEmpty(this.darkModeNavigationBarIconStyle)) ? Intrinsics.c("white", this.navigationBarIconStyle) : Intrinsics.c("white", this.darkModeNavigationBarIconStyle);
                return objC;
            } catch (Throwable th2) {
                TmcLogger.e("", th2);
                return Intrinsics.c(objC, this.navigationBarIconStyle);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        public final boolean navigationBarTextStyleIsWhite() {
            Object objC = "white";
            try {
                objC = (!SystemUtils.darkThemeIsEnabled(((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext()) || EmptyUtils.textIsEmpty(this.darkModeNavigationBarTextStyle)) ? Intrinsics.c("white", this.navigationBarTextStyle) : Intrinsics.c("white", this.darkModeNavigationBarTextStyle);
                return objC;
            } catch (Throwable th2) {
                TmcLogger.e("", th2);
                return Intrinsics.c(objC, this.navigationBarTextStyle);
            }
        }

        public final boolean navigationStyleIsCustom() {
            return Intrinsics.c("custom", this.navigationStyle);
        }

        public final boolean navigationStyleIsHide() {
            return Intrinsics.c(IntegrationConstants.NAVIGATION_STYLE_HIDE, this.navigationStyle);
        }

        public final void setContentBackgroundColor(String str) {
            this.contentBackgroundColor = str;
        }

        public final void setDarkModeContentBackgroundColor(String str) {
            this.darkModeContentBackgroundColor = str;
        }

        public final void setDarkModeNavigationBarBackgroundColor(String str) {
            this.darkModeNavigationBarBackgroundColor = str;
        }

        public final void setDarkModeNavigationBarIconStyle(String str) {
            this.darkModeNavigationBarIconStyle = str;
        }

        public final void setDarkModeNavigationBarTextStyle(String str) {
            this.darkModeNavigationBarTextStyle = str;
        }

        public final void setEnableNavigationBarLoading(Boolean bool) {
            this.enableNavigationBarLoading = bool;
        }

        public final void setEnablePageLoading(Boolean bool) {
            this.enablePageLoading = bool;
        }

        public final void setEnablePullDownRefresh(Boolean bool) {
            this.enablePullDownRefresh = bool;
        }

        public final void setEnablePullUpRefresh(Boolean bool) {
            this.enablePullUpRefresh = bool;
        }

        public final void setEnableTabBarAdjustPan(Boolean bool) {
            this.enableTabBarAdjustPan = bool;
        }

        public final void setEnableTransparentStatusBar(Boolean bool) {
            this.enableTransparentStatusBar = bool;
        }

        public final void setHandleWebviewPreload(String str) {
            this.handleWebviewPreload = str;
        }

        public final void setLimitTextZoom(Boolean bool) {
            this.limitTextZoom = bool;
        }

        public final void setNavigationBarBackgroundColor(String str) {
            this.navigationBarBackgroundColor = str;
        }

        public final void setNavigationBarHomeAction(String str) {
            this.navigationBarHomeAction = str;
        }

        public final void setNavigationBarIconStyle(String str) {
            this.navigationBarIconStyle = str;
        }

        public final void setNavigationBarTextStyle(String str) {
            this.navigationBarTextStyle = str;
        }

        public final void setNavigationBarTitleText(String str) {
            this.navigationBarTitleText = str;
        }

        public final void setNavigationStyle(String str) {
            this.navigationStyle = str;
        }

        public final void setRefreshFooterAccentColor(String str) {
            this.refreshFooterAccentColor = str;
        }

        public final void setRefreshFooterBackgroundColor(String str) {
            this.refreshFooterBackgroundColor = str;
        }

        public final void setRefreshFooterDelayed(Integer num) {
            this.refreshFooterDelayed = num;
        }

        public final void setRefreshHeaderAccentColor(String str) {
            this.refreshHeaderAccentColor = str;
        }

        public final void setRefreshHeaderBackgroundColor(String str) {
            this.refreshHeaderBackgroundColor = str;
        }

        public final void setRefreshHeaderCustomLoading(String str) {
            this.refreshHeaderCustomLoading = str;
        }

        public final void setRefreshHeaderCustomLoadingGif(String str) {
            this.refreshHeaderCustomLoadingGif = str;
        }

        public final void setRefreshHeaderCustomSuccess(String str) {
            this.refreshHeaderCustomSuccess = str;
        }

        public final void setRefreshHeaderCustomSuccessGif(String str) {
            this.refreshHeaderCustomSuccessGif = str;
        }

        public final void setRefreshHeaderCustomTextEnable(Boolean bool) {
            this.refreshHeaderCustomTextEnable = bool;
        }

        public final void setRefreshHeaderDelayed(Integer num) {
            this.refreshHeaderDelayed = num;
        }

        public final void setRefreshHeaderStyle(String str) {
            this.refreshHeaderStyle = str;
        }

        public final void setRefreshHeaderTranslationContent(Boolean bool) {
            this.refreshHeaderTranslationContent = bool;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int flags) {
            Intrinsics.h(parcel, "parcel");
            parcel.writeValue(this.enablePullDownRefresh);
            parcel.writeValue(this.enablePullUpRefresh);
            parcel.writeValue(this.enableTransparentStatusBar);
            parcel.writeValue(this.enableNavigationBarLoading);
            parcel.writeString(this.navigationBarTitleText);
            parcel.writeString(this.navigationStyle);
            parcel.writeString(this.navigationBarBackgroundColor);
            parcel.writeString(this.navigationBarTextStyle);
            parcel.writeString(this.navigationBarIconStyle);
            parcel.writeString(this.navigationBarHomeAction);
            parcel.writeString(this.refreshHeaderStyle);
            parcel.writeValue(this.refreshHeaderCustomTextEnable);
            parcel.writeString(this.refreshHeaderCustomLoading);
            parcel.writeString(this.refreshHeaderCustomLoadingGif);
            parcel.writeString(this.refreshHeaderCustomSuccess);
            parcel.writeString(this.refreshHeaderCustomSuccessGif);
            parcel.writeValue(this.refreshHeaderTranslationContent);
            parcel.writeString(this.refreshHeaderAccentColor);
            parcel.writeString(this.refreshHeaderBackgroundColor);
            parcel.writeValue(this.refreshHeaderDelayed);
            parcel.writeString(this.refreshFooterAccentColor);
            parcel.writeString(this.refreshFooterBackgroundColor);
            parcel.writeValue(this.refreshFooterDelayed);
            parcel.writeString(this.contentBackgroundColor);
            parcel.writeString(this.handleWebviewPreload);
            parcel.writeValue(this.enablePageLoading);
            parcel.writeValue(this.enableTabBarAdjustPan);
            parcel.writeString(this.darkModeNavigationBarBackgroundColor);
            parcel.writeString(this.darkModeNavigationBarTextStyle);
            parcel.writeString(this.darkModeNavigationBarIconStyle);
            parcel.writeString(this.darkModeContentBackgroundColor);
            parcel.writeValue(this.limitTextZoom);
        }
    }

    public MiniAppConfigModel() {
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MiniAppConfigModel(Parcel parcel) {
        HashMap<String, PreloadRuleSubpackage> map;
        this();
        Intrinsics.h(parcel, "parcel");
        this.window = (WindowBean) parcel.readParcelable(WindowBean.class.getClassLoader());
        this.tabBar = (TabBarBean) parcel.readParcelable(TabBarBean.class.getClassLoader());
        this.includeFiles = parcel.readString();
        this.pages = parcel.createStringArrayList();
        this.subPackages = parcel.createTypedArrayList(Subpackage.INSTANCE);
        HashMap hashMap = parcel.readHashMap(PreloadRuleSubpackage.class.getClassLoader());
        HashMap<String, PagesBean> map2 = null;
        if (hashMap != null) {
            map = new HashMap<>();
            for (Object obj : hashMap.keySet()) {
                if (hashMap.get(obj) instanceof PreloadRuleSubpackage) {
                    String string = obj.toString();
                    Object obj2 = hashMap.get(obj);
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.cloud.tmc.integration.model.PreloadRuleSubpackage");
                    }
                    map.put(string, (PreloadRuleSubpackage) obj2);
                }
            }
        } else {
            map = null;
        }
        this.preloadRule = map;
        HashMap hashMap2 = parcel.readHashMap(PagesBean.class.getClassLoader());
        if (hashMap2 != null) {
            map2 = new HashMap<>();
            for (Object obj3 : hashMap2.keySet()) {
                if (hashMap2.get(obj3) instanceof PagesBean) {
                    String string2 = obj3.toString();
                    Object obj4 = hashMap2.get(obj3);
                    if (obj4 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type com.cloud.tmc.integration.model.MiniAppConfigModel.PagesBean");
                    }
                    map2.put(string2, (PagesBean) obj4);
                }
            }
        }
        this.launchParams = map2;
        this.mfah = parcel.readString();
        this.iconFile = parcel.readString();
        this.pkgExts = parcel.createTypedArrayList(PkgExtBean.INSTANCE);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getHandleTabBarLoad() {
        return this.handleTabBarLoad;
    }

    public final String getIncludeFiles() {
        return this.includeFiles;
    }

    public final String getMfah() {
        return this.mfah;
    }

    public final WindowBean getWindow() {
        return this.window;
    }

    public final void setHandleTabBarLoad(String str) {
        this.handleTabBarLoad = str;
    }

    public final void setIncludeFiles(String str) {
        this.includeFiles = str;
    }

    public final void setMfah(String str) {
        this.mfah = str;
    }

    public final void setWindow(WindowBean windowBean) {
        this.window = windowBean;
    }

    public final boolean tabBarManual() {
        return Intrinsics.c("manual", this.handleTabBarLoad);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeParcelable(this.window, flags);
        parcel.writeParcelable(this.tabBar, flags);
        parcel.writeString(this.includeFiles);
        parcel.writeStringList(this.pages);
        parcel.writeTypedList(this.subPackages);
        parcel.writeMap(this.preloadRule);
        parcel.writeMap(this.launchParams);
        parcel.writeString(this.mfah);
        parcel.writeString(this.iconFile);
        parcel.writeTypedList(this.pkgExts);
    }
}
