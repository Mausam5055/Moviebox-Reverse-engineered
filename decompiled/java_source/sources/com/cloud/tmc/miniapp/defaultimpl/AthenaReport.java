package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.ad.IAdManagerProxy;
import com.cloud.tmc.ad.athena.PostConstant;
import com.cloud.tmc.ad.utils.GPSTracker;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.athena.Constants;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.UniqueIdBean;
import com.cloud.tmc.integration.net.BaseResponse;
import com.cloud.tmc.integration.net.TmcResponseCallback;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.VirtualAppManager;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.DeviceUtil;
import com.cloud.tmc.integration.utils.MiniRequestUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointConstants;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.proxy.worker.IWorkerFactory;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.launcherlib.LauncherFrameworkConstants;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.utils.OooOOO;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.model.ZipFileInfo;
import com.cloud.tmc.render.proxy.SessionUtilProxy;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class AthenaReport implements ReportProxy {
    public static final OooO00o Companion = new OooO00o();
    public static AtomicBoolean OooO0OO = new AtomicBoolean(false);
    public static AtomicBoolean OooO0Oo = new AtomicBoolean(false);
    public static AtomicBoolean OooO0o0 = new AtomicBoolean(false);
    public final ConcurrentHashMap<String, UniqueIdBean> OooO00o = new ConcurrentHashMap<>();
    public final ConcurrentHashMap<String, LazyGetPkgInfoBean> OooO0O0 = new ConcurrentHashMap<>();

    public static final class LazyGetPkgInfoBean extends BaseBean {
        private String info;
        private AtomicBoolean requesting;

        /* JADX WARN: Multi-variable type inference failed */
        public LazyGetPkgInfoBean() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public LazyGetPkgInfoBean(AtomicBoolean requesting, String info) {
            Intrinsics.h(requesting, "requesting");
            Intrinsics.h(info, "info");
            this.requesting = requesting;
            this.info = info;
        }

        public /* synthetic */ LazyGetPkgInfoBean(AtomicBoolean atomicBoolean, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? new AtomicBoolean(false) : atomicBoolean, (i11 & 2) != 0 ? "" : str);
        }

        public static /* synthetic */ LazyGetPkgInfoBean copy$default(LazyGetPkgInfoBean lazyGetPkgInfoBean, AtomicBoolean atomicBoolean, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                atomicBoolean = lazyGetPkgInfoBean.requesting;
            }
            if ((i11 & 2) != 0) {
                str = lazyGetPkgInfoBean.info;
            }
            return lazyGetPkgInfoBean.copy(atomicBoolean, str);
        }

        public final AtomicBoolean component1() {
            return this.requesting;
        }

        public final String component2() {
            return this.info;
        }

        public final LazyGetPkgInfoBean copy(AtomicBoolean requesting, String info) {
            Intrinsics.h(requesting, "requesting");
            Intrinsics.h(info, "info");
            return new LazyGetPkgInfoBean(requesting, info);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LazyGetPkgInfoBean)) {
                return false;
            }
            LazyGetPkgInfoBean lazyGetPkgInfoBean = (LazyGetPkgInfoBean) obj;
            return Intrinsics.c(this.requesting, lazyGetPkgInfoBean.requesting) && Intrinsics.c(this.info, lazyGetPkgInfoBean.info);
        }

        public final String getInfo() {
            return this.info;
        }

        public final AtomicBoolean getRequesting() {
            return this.requesting;
        }

        public int hashCode() {
            return this.info.hashCode() + (this.requesting.hashCode() * 31);
        }

        public final void setInfo(String str) {
            Intrinsics.h(str, "<set-?>");
            this.info = str;
        }

        public final void setRequesting(AtomicBoolean atomicBoolean) {
            Intrinsics.h(atomicBoolean, "<set-?>");
            this.requesting = atomicBoolean;
        }

        public String toString() {
            return "LazyGetPkgInfoBean(requesting=" + this.requesting + ", info=" + this.info + ")";
        }
    }

    public static final class OooO00o {
    }

    public static final class UniqueIdBean extends BaseBean {
        private AtomicBoolean requesting;
        private String uniqueId;

        /* JADX WARN: Multi-variable type inference failed */
        public UniqueIdBean() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public UniqueIdBean(AtomicBoolean requesting, String uniqueId) {
            Intrinsics.h(requesting, "requesting");
            Intrinsics.h(uniqueId, "uniqueId");
            this.requesting = requesting;
            this.uniqueId = uniqueId;
        }

        public /* synthetic */ UniqueIdBean(AtomicBoolean atomicBoolean, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? new AtomicBoolean(false) : atomicBoolean, (i11 & 2) != 0 ? "" : str);
        }

        public static /* synthetic */ UniqueIdBean copy$default(UniqueIdBean uniqueIdBean, AtomicBoolean atomicBoolean, String str, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                atomicBoolean = uniqueIdBean.requesting;
            }
            if ((i11 & 2) != 0) {
                str = uniqueIdBean.uniqueId;
            }
            return uniqueIdBean.copy(atomicBoolean, str);
        }

        public final AtomicBoolean component1() {
            return this.requesting;
        }

        public final String component2() {
            return this.uniqueId;
        }

        public final UniqueIdBean copy(AtomicBoolean requesting, String uniqueId) {
            Intrinsics.h(requesting, "requesting");
            Intrinsics.h(uniqueId, "uniqueId");
            return new UniqueIdBean(requesting, uniqueId);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UniqueIdBean)) {
                return false;
            }
            UniqueIdBean uniqueIdBean = (UniqueIdBean) obj;
            return Intrinsics.c(this.requesting, uniqueIdBean.requesting) && Intrinsics.c(this.uniqueId, uniqueIdBean.uniqueId);
        }

        public final AtomicBoolean getRequesting() {
            return this.requesting;
        }

        public final String getUniqueId() {
            return this.uniqueId;
        }

        public int hashCode() {
            return this.uniqueId.hashCode() + (this.requesting.hashCode() * 31);
        }

        public final void setRequesting(AtomicBoolean atomicBoolean) {
            Intrinsics.h(atomicBoolean, "<set-?>");
            this.requesting = atomicBoolean;
        }

        public final void setUniqueId(String str) {
            Intrinsics.h(str, "<set-?>");
            this.uniqueId = str;
        }

        public String toString() {
            return "UniqueIdBean(requesting=" + this.requesting + ", uniqueId=" + this.uniqueId + ")";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void OooO00o(AthenaReport this$0, App app, Ref.ObjectRef lazyGetPkgInfoBean) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(lazyGetPkgInfoBean, "$lazyGetPkgInfoBean");
        this$0.OooO00o(app, (LazyGetPkgInfoBean) lazyGetPkgInfoBean.element);
    }

    public final String OooO00o(String str) {
        String strSubstring;
        try {
            TmcLogger.d("AthenaReport", "realPagePath:" + str);
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            int iO0 = StringsKt.o0(str, UrlUtils.QUESTION_MARK, 0, false, 6, null);
            if (iO0 > 0) {
                strSubstring = str.substring(0, iO0);
                Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            } else {
                strSubstring = str;
            }
            if (TextUtils.isEmpty(strSubstring)) {
                return str;
            }
            if (!StringsKt.c0(strSubstring, "http", false, 2, null)) {
                return strSubstring;
            }
            Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_ATHENA_REPORT_PATHS, MiniAppConfigHelper.DEFAULT_ATHENA_REPORT_PATHS), new TypeToken<Map<String, ? extends String>>() { // from class: com.cloud.tmc.miniapp.defaultimpl.AthenaReport$getMatchPagePath$pathMap$1
            }.getType());
            Intrinsics.g(objFromJson, "fromJson(paths, object :…ring, String>>() {}.type)");
            for (Map.Entry entry : ((Map) objFromJson).entrySet()) {
                if (StringsKt.c0(strSubstring, (CharSequence) entry.getKey(), false, 2, null)) {
                    return (String) entry.getValue();
                }
            }
            return strSubstring;
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2, types: [T, com.cloud.tmc.miniapp.defaultimpl.AthenaReport$LazyGetPkgInfoBean, java.lang.Object] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final void OooO00o(final App app) {
        try {
            AtomicBoolean atomicBoolean = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            if (AppPrepareUtils.INSTANCE.isShellType(app != null ? app.getAppModel() : null)) {
                String appId = app != null ? app.getAppId() : null;
                if (appId == null) {
                    return;
                }
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                ?? r11 = this.OooO0O0.get(appId);
                objectRef.element = r11;
                if (r11 == 0) {
                    ?? lazyGetPkgInfoBean = new LazyGetPkgInfoBean(atomicBoolean, objArr2 == true ? 1 : 0, 3, objArr == true ? 1 : 0);
                    objectRef.element = lazyGetPkgInfoBean;
                    this.OooO0O0.put(appId, (LazyGetPkgInfoBean) lazyGetPkgInfoBean);
                }
                if (TextUtils.isEmpty(((LazyGetPkgInfoBean) objectRef.element).getInfo()) && !((LazyGetPkgInfoBean) objectRef.element).getRequesting().get()) {
                    ((LazyGetPkgInfoBean) objectRef.element).getRequesting().set(true);
                    if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
                        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.miniapp.defaultimpl.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                AthenaReport.OooO00o(this.f23517a, app, objectRef);
                            }
                        });
                    } else {
                        OooO00o(app, (LazyGetPkgInfoBean) objectRef.element);
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("AthenaReport", "getOfflinePackageInfo", th2);
        }
    }

    public final void OooO00o(App app, LazyGetPkgInfoBean lazyGetPkgInfoBean) {
        String appId;
        AtomicBoolean requesting;
        if (app != null) {
            try {
                appId = app.getAppId();
            } catch (Throwable unused) {
                return;
            }
        } else {
            appId = null;
        }
        List<ZipFileInfo> offlinePackageDownloadInfo = OfflineManager.getOfflinePackageDownloadInfo(appId);
        if (offlinePackageDownloadInfo == null) {
            if (lazyGetPkgInfoBean == null || (requesting = lazyGetPkgInfoBean.getRequesting()) == null) {
                return;
            }
            requesting.set(false);
            return;
        }
        boolean booleanValue = app != null ? app.getBooleanValue(TmcConstants.KEY_DISABLE_OFFLINE_PROCESSOR) : false;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(offlinePackageDownloadInfo, 10));
        Iterator<T> it = offlinePackageDownloadInfo.iterator();
        while (it.hasNext()) {
            arrayList.add(MapsKt.j(TuplesKt.a("key", ((ZipFileInfo) it.next()).getUrl()), TuplesKt.a("useStatus", Boolean.valueOf(!booleanValue))));
        }
        if (lazyGetPkgInfoBean != null) {
            lazyGetPkgInfoBean.setInfo(TmcGsonUtilsKt.toJson(arrayList));
            lazyGetPkgInfoBean.getRequesting().set(false);
            TmcLogger.d("seven", "info:" + lazyGetPkgInfoBean.getInfo());
        }
    }

    @Override // com.cloud.tmc.integration.proxy.ReportProxy
    public /* bridge */ /* synthetic */ Triple checkReportIntercept(String str, Boolean bool) {
        return checkReportIntercept(str, bool.booleanValue());
    }

    public Triple<Boolean, Boolean, Boolean> checkReportIntercept(String str, boolean z10) {
        com.cloud.tmc.miniapp.utils.athena.strategy.OooO00o OooO00o2 = com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o.OooO00o(str, z10);
        return new Triple<>(Boolean.valueOf(OooO00o2 != null ? OooO00o2.OooO00o : false), Boolean.valueOf(OooO00o2 != null ? OooO00o2.OooO0O0 : false), Boolean.valueOf(OooO00o2 != null ? OooO00o2.OooO0OO : false));
    }

    @Override // com.cloud.tmc.integration.proxy.ReportProxy
    public void forceAthenaReport(String appId, String tag, int i11, Bundle bundle) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(tag, "tag");
        Intrinsics.h(bundle, "bundle");
        try {
            com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o.OooO0O0(tag, i11, getAthenaCommonBundle(appId, bundle, tag));
        } catch (Throwable th2) {
            TmcLogger.e("AthenaReport", "forceAthenaReport", th2);
        }
    }

    public final Bundle getAthenaCommonBundle(String str, Bundle bundle, String str2) {
        final App app;
        String appId;
        AppModel appModel;
        AppModel appModel2;
        AppModel appModel3;
        String string;
        String string2;
        String uniqueId;
        AtomicBoolean requesting;
        Context context;
        Bundle bundle2 = new Bundle();
        bundle2.putString("miniapp_id", str);
        App appFindApp = TextUtils.isEmpty(str) ? null : ((AppManager) TmcProxy.get(AppManager.class)).findApp(str);
        if (appFindApp != null) {
            app = appFindApp;
        } else if (TextUtils.isEmpty(str)) {
            app = null;
        } else {
            appFindApp = ((VirtualAppManager) TmcProxy.get(VirtualAppManager.class)).findApp(str);
            app = appFindApp;
        }
        if (app != null) {
            DeviceUtil deviceUtil = DeviceUtil.INSTANCE;
            AppContext appContext = app.getAppContext();
            deviceUtil.getMemoryInfo(appContext != null ? appContext.getContext() : null, bundle2);
            AppModel appModel4 = app.getAppModel();
            bundle2.putString("miniapp_categorType", String.valueOf(appModel4 != null ? Integer.valueOf(appModel4.getAppinfoCategoryType()) : null));
            bundle2.putString("miniapp_version", app.getAppVersion());
            if (bundle == null || !bundle.containsKey(PointConstants.POINT_PAGE_PATH)) {
                Page activePage = app.getActivePage();
                bundle2.putString(PointConstants.POINT_PAGE_PATH, activePage != null ? activePage.getPagePath() : null);
                if (bundle == null || !bundle.containsKey(ChainPoint.PAGE_CATEGOR_TYPE)) {
                    String str3 = ChainPoint.PAGE_CATEGOR_TYPE;
                    Page activePage2 = app.getActivePage();
                    String pagePath = activePage2 != null ? activePage2.getPagePath() : null;
                    if (pagePath == null) {
                        pagePath = "";
                    }
                    bundle2.putString(str3, String.valueOf(app.getPageType(pagePath)));
                }
            } else if (bundle == null || !bundle.containsKey(ChainPoint.PAGE_CATEGOR_TYPE)) {
                bundle2.putString(ChainPoint.PAGE_CATEGOR_TYPE, String.valueOf(app.getPageType(bundle.getString(PointConstants.POINT_PAGE_PATH, ""))));
            }
            if (bundle == null || !bundle.containsKey(FrameworkConstants.GLOBAL_DATA_KEY_SCENE)) {
                Bundle sceneParams = app.getSceneParams();
                if (sceneParams == null || (string = sceneParams.getString("scene_id")) == null) {
                    string = "100000";
                }
                bundle2.putString(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, string);
            }
            if (bundle == null || !bundle.containsKey(TmcConstants.KEY_APP_START_SESSION_ID)) {
                Bundle sceneParams2 = app.getSceneParams();
                bundle2.putString(TmcConstants.KEY_APP_START_SESSION_ID, sceneParams2 != null ? sceneParams2.getString("massid") : null);
            }
            if (bundle == null || !bundle.containsKey("fis_type")) {
                Bundle sceneParams3 = app.getSceneParams();
                if (sceneParams3 == null || (string2 = sceneParams3.getString("fis_type")) == null) {
                    string2 = "0";
                }
                bundle2.putString("fis_type", string2);
            }
            if (bundle == null || !bundle.containsKey("uniqueid")) {
                UniqueIdBean uniqueIdBean = this.OooO00o.get(app.getAppId());
                if (uniqueIdBean == null || (uniqueId = uniqueIdBean.getUniqueId()) == null || TextUtils.isEmpty(uniqueId)) {
                    UniqueIdBean uniqueIdBean2 = this.OooO00o.get(app.getAppId());
                    if (uniqueIdBean2 == null || (requesting = uniqueIdBean2.getRequesting()) == null || !requesting.get()) {
                        String gAId = DeviceUtil.getGAId();
                        if (TextUtils.isEmpty(gAId)) {
                            TmcLogger.e("AthenaReport", "埋点getUniqueId fail: gaid is empty");
                        } else {
                            ConcurrentHashMap<String, UniqueIdBean> concurrentHashMap = this.OooO00o;
                            String appId2 = app.getAppId();
                            Intrinsics.g(appId2, "app.appId");
                            concurrentHashMap.put(appId2, new UniqueIdBean(new AtomicBoolean(true), ""));
                            String appId3 = app.getAppId();
                            Intrinsics.g(appId3, "app.appId");
                            MiniRequestUtils.getUniqueId(gAId, appId3, new TmcResponseCallback<com.cloud.tmc.integration.model.UniqueIdBean>() { // from class: com.cloud.tmc.miniapp.defaultimpl.AthenaReport$getUniqueId$2
                                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                                public Type getType() {
                                    Type type = new TypeToken<BaseResponse<? extends UniqueIdBean>>() { // from class: com.cloud.tmc.miniapp.defaultimpl.AthenaReport$getUniqueId$2$getType$1
                                    }.getType();
                                    Intrinsics.g(type, "object :\n               …niqueIdBean?>?>() {}.type");
                                    return type;
                                }

                                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                                public void onFail(BaseResponse<? extends Object> fail, Map<String, String> map) {
                                    AtomicBoolean requesting2;
                                    Intrinsics.h(fail, "fail");
                                    AthenaReport.UniqueIdBean uniqueIdBean3 = (AthenaReport.UniqueIdBean) this.OooO00o.OooO00o.get(app.getAppId());
                                    if (uniqueIdBean3 == null || (requesting2 = uniqueIdBean3.getRequesting()) == null) {
                                        return;
                                    }
                                    requesting2.set(false);
                                }

                                @Override // com.cloud.tmc.integration.net.TmcResponseCallback
                                public void onSuccess(BaseResponse<? extends UniqueIdBean> bean, Map<String, String> map) {
                                    String uniqueId2;
                                    AtomicBoolean requesting2;
                                    Intrinsics.h(bean, "bean");
                                    UniqueIdBean data = bean.getData();
                                    TmcLogger.e("AthenaReport", "埋点getUniqueId success: " + (data != null ? data.getUniqueId() : null));
                                    AthenaReport.UniqueIdBean uniqueIdBean3 = (AthenaReport.UniqueIdBean) this.OooO00o.OooO00o.get(app.getAppId());
                                    if (uniqueIdBean3 != null && (requesting2 = uniqueIdBean3.getRequesting()) != null) {
                                        requesting2.set(false);
                                    }
                                    UniqueIdBean data2 = bean.getData();
                                    if (data2 == null || (uniqueId2 = data2.getUniqueId()) == null) {
                                        return;
                                    }
                                    AthenaReport.UniqueIdBean uniqueIdBean4 = (AthenaReport.UniqueIdBean) this.OooO00o.OooO00o.get(app.getAppId());
                                    if (uniqueIdBean4 == null) {
                                        return;
                                    }
                                    uniqueIdBean4.setUniqueId(uniqueId2);
                                }
                            });
                        }
                    }
                    uniqueId = "";
                }
                bundle2.putString("uniqueid", uniqueId);
            }
            bundle2.putString("improveTags", ((PerformanceImprovesProxy) TmcProxy.get(PerformanceImprovesProxy.class)).getPerformanceImproves(app.getAppId()));
            if (bundle == null || !bundle.containsKey(IntegrationConstants.IS_FOREGROUND)) {
                AppContext appContext2 = app.getAppContext();
                Context context2 = appContext2 != null ? appContext2.getContext() : null;
                BaseActivity baseActivity = context2 instanceof BaseActivity ? (BaseActivity) context2 : null;
                bundle2.putString(IntegrationConstants.IS_FOREGROUND, String.valueOf(baseActivity != null ? Boolean.valueOf(baseActivity.getMStarted()) : null));
            }
            try {
                AppContext appContext3 = app.getAppContext();
                if (appContext3 != null && (context = appContext3.getContext()) != null) {
                    AppModel appModel5 = app.getAppModel();
                    Intrinsics.g(appModel5, "app.appModel");
                    bundle2.putInt(ChainPoint.COMMON_PARAM_PACKAGE_SOURCE, OooOOO.OooO00o(context, appModel5) ? 1 : 2);
                }
            } catch (Throwable th2) {
                TmcLogger.e("AthenaReport", "", th2);
            }
        }
        bundle2.putString("sessionId", String.valueOf(((SessionUtilProxy) TmcProxy.get(SessionUtilProxy.class)).getId(str)));
        IWorkerFactory iWorkerFactory = (IWorkerFactory) TmcProxy.get(IWorkerFactory.class);
        bundle2.putInt("worker_type", iWorkerFactory != null ? iWorkerFactory.workerType() : -100);
        bundle2.putString("sdk_version", ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getSDKVersion());
        bundle2.putString("framework_version", ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion());
        bundle2.putString(CampaignEx.JSON_KEY_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
        Boolean tctpStatus = ByteAppManager.INSTANCE.getTctpStatus();
        bundle2.putString("TCTP", String.valueOf(tctpStatus != null ? tctpStatus.booleanValue() : AppDynamicBuildConfig.getTCTP()));
        bundle2.putString("NetworkIsConnected", String.valueOf(NetworkUtils.getNetworkStatus() == 1));
        bundle2.putString("NetworkType", String.valueOf(NetworkUtils.getMNetWorkType()));
        bundle2.putInt("screen_width", PostConstant.getScreenWidth());
        bundle2.putInt("screen_height", PostConstant.getScreenHeight());
        bundle2.putInt("networkStatus", NetworkUtils.getNetworkStatus());
        bundle2.putString("miniapp_gaid", String.valueOf(DeviceUtil.getGAId()));
        if (app != null) {
            try {
                appId = app.getAppId();
            } catch (Throwable th3) {
                TmcLogger.e("AthenaReport", "getOfflinePackageInfo", th3);
            }
        } else {
            appId = null;
        }
        if (appId != null) {
            OooO00o(app);
            LazyGetPkgInfoBean lazyGetPkgInfoBean = this.OooO0O0.get(appId);
            bundle2.putString("offlinePkgList", String.valueOf(lazyGetPkgInfoBean != null ? lazyGetPkgInfoBean.getInfo() : null));
        }
        DeviceUtil.INSTANCE.getCupInfo(bundle2);
        bundle2.putAll(bundle);
        String realPagePath = bundle2.getString(PointConstants.POINT_PAGE_PATH, "");
        bundle2.putString("real_page_path", realPagePath);
        Intrinsics.g(realPagePath, "realPagePath");
        String strOooO00o = OooO00o(realPagePath);
        TmcLogger.d("AthenaReport", "reportPagePath:" + strOooO00o);
        bundle2.putString(PointConstants.POINT_PAGE_PATH, strOooO00o);
        TraceLog.i("reportData", bundle2 + " =====> " + str2);
        if (AppUtils.INSTANCE.checkUesCommonresApp((app == null || (appModel3 = app.getAppModel()) == null) ? null : appModel3.getMiniappSubtype())) {
            bundle2.putString("mini_template_id", (app == null || (appModel2 = app.getAppModel()) == null) ? null : appModel2.getTemplateMiniappId());
            bundle2.putString("mini_template_ver", (app == null || (appModel = app.getAppModel()) == null) ? null : appModel.getCurrentUseCommonResVersion());
        }
        return bundle2;
    }

    public final Bundle getBundle(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            bundle.putString("session_id", PostConstant.getSessionId());
            bundle.putString("sdk_version", ((IAdManagerProxy) TmcProxy.get(IAdManagerProxy.class)).getAdSdkFrameworkVersion());
            bundle.putLong("sdk_version_int", ((IAdManagerProxy) TmcProxy.get(IAdManagerProxy.class)).getAdSdkFrameworkVersionInt());
            bundle.putString("user_agent", PostConstant.getUserAgent());
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, PostConstant.getType());
            bundle.putString("make", PostConstant.getMake());
            bundle.putString("ostype", "Android");
            bundle.putInt("screen_width", PostConstant.getScreenWidth());
            bundle.putInt("screen_height", PostConstant.getScreenHeight());
            bundle.putInt("screen_density", PostConstant.getScreenDensity());
            DeviceUtil deviceUtil = DeviceUtil.INSTANCE;
            bundle.putString("base_station", deviceUtil.getGsmCellLocation());
            bundle.putDouble("latitude", GPSTracker.getLatitude());
            bundle.putDouble("longitude", GPSTracker.getLongitude());
            bundle.putLong("coordtime", GPSTracker.getCoordTime());
            bundle.putString("oneid", "");
            bundle.putInt("turn_off_per_ads", deviceUtil.getGaidStatus());
        } catch (Throwable th2) {
            TmcLogger.e("AthenaReport", "getBundle fail: " + th2);
        }
        return bundle;
    }

    @Override // com.cloud.tmc.integration.proxy.ReportProxy
    public String getVaid() {
        try {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(ByteAppManager.getSApplication(), LauncherFrameworkConstants.LAUNCHER_GLOBAL_KEYS, TmcConstants.ATHENA_VAID);
            return string == null ? "0000-0000-0000-0000" : string;
        } catch (Exception unused) {
            return "0000-0000-0000-0000";
        }
    }

    @Override // com.cloud.tmc.integration.proxy.ReportProxy
    public void mfahCacheDataReport(String str) {
        Unit unit;
        if (str != null) {
            try {
                com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o.OooO00o(str);
                unit = Unit.f67061a;
            } catch (Throwable th2) {
                TmcLogger.e("AthenaReport", th2);
                return;
            }
        } else {
            unit = null;
        }
        if (unit == null) {
            TmcLogger.d("AthenaReport", "mfahCacheDataReport: appId is null");
        }
    }

    @Override // com.cloud.tmc.integration.proxy.ReportProxy
    public void report(String str, String str2, Bundle bundle) {
        report(str, str2, bundle, Integer.valueOf(Constants.MINI_APPID));
    }

    @Override // com.cloud.tmc.integration.proxy.ReportProxy
    public void report(String str, String str2, Bundle bundle, Integer num) {
        int iIntValue;
        if (str2 != null) {
            try {
                Bundle athenaCommonBundle = getAthenaCommonBundle(str, bundle, str2);
                if (num == null || (iIntValue = num.intValue()) == 0) {
                    iIntValue = Constants.MINI_APPID;
                }
                com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o.OooO00o(str2, iIntValue, athenaCommonBundle, str);
            } catch (Throwable th2) {
                TmcLogger.e("AthenaReport", "report: ", th2);
            }
        }
    }

    @Override // com.cloud.tmc.integration.proxy.ReportProxy
    public void reportAd(String str, String str2, Bundle bundle) {
        if (str2 != null) {
            try {
                Bundle bundle2 = new Bundle();
                App appFindApp = null;
                App appFindApp2 = TextUtils.isEmpty(str) ? null : ((AppManager) TmcProxy.get(AppManager.class)).findApp(str);
                if (appFindApp2 != null) {
                    appFindApp = appFindApp2;
                } else if (!TextUtils.isEmpty(str)) {
                    appFindApp = ((VirtualAppManager) TmcProxy.get(VirtualAppManager.class)).findApp(str);
                }
                if (appFindApp != null) {
                    String appId = appFindApp.getAppId();
                    if (appId == null) {
                        appId = "";
                    }
                    bundle2.putString("mini_program_id", appId);
                }
                bundle2.putString("host_package_name", String.valueOf(ByteAppManager.getSApplication().getPackageName()));
                bundle2.putAll(bundle);
                Bundle bundle3 = getBundle(bundle2);
                TraceLog.i("reportBussinessData", bundle3 + " =====> " + str2);
                com.cloud.tmc.miniapp.utils.athena.OooO0OO.OooO00o.OooO00o(str2, Constants.AD_APPID, bundle3, str);
            } catch (Throwable th2) {
                TmcLogger.e("AthenaReport", "reportAd: ", th2);
            }
        }
    }
}
