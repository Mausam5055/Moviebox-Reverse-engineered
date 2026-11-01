package com.cloud.tmc.integration.processor.intercept;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.integration.processor.IBackPressedProcessor;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0003\u0010\u0011\u0012J,\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u0007H\u0016J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\rH&J\u0010\u0010\b\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;", "", "backResult", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", "app", "Lcom/cloud/tmc/integration/structure/App;", "isIntercept", "", "intercept", "isRemove", "getInterceptName", "", "getPriority", "", "chain", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;", "Chain", "Params", "Result", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public interface IBackPressedIntercept {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Chain;", "", "params", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;", "proceed", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface Chain {
        Params params();

        Result proceed(Params params);
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class DefaultImpls {
        public static Result backResult(IBackPressedIntercept iBackPressedIntercept, App app, boolean z10, IBackPressedIntercept intercept, boolean z11) {
            IBackPressedProcessor backPressedProcessor;
            Intrinsics.h(intercept, "intercept");
            if (z11 && app != null && (backPressedProcessor = app.getBackPressedProcessor()) != null) {
                backPressedProcessor.removeInterceptors(intercept);
            }
            return new Result(z10);
        }

        public static /* synthetic */ Result backResult$default(IBackPressedIntercept iBackPressedIntercept, App app, boolean z10, IBackPressedIntercept iBackPressedIntercept2, boolean z11, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: backResult");
            }
            if ((i11 & 8) != 0) {
                z11 = true;
            }
            return iBackPressedIntercept.backResult(app, z10, iBackPressedIntercept2, z11);
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b \b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010$\u001a\u00020\tHÆ\u0003J\t\u0010%\u001a\u00020\u000bHÆ\u0003JA\u0010&\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010'\u001a\u00020\t2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u000bHÖ\u0001J\t\u0010*\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006+"}, d2 = {"Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;", "", "context", "Landroid/content/Context;", "appId", "", "app", "Lcom/cloud/tmc/integration/structure/node/AppNode;", "autoExit", "", TmcStartParams.KEY_FROM_TYPE, "", "(Landroid/content/Context;Ljava/lang/String;Lcom/cloud/tmc/integration/structure/node/AppNode;ZI)V", "getApp", "()Lcom/cloud/tmc/integration/structure/node/AppNode;", "setApp", "(Lcom/cloud/tmc/integration/structure/node/AppNode;)V", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "getAutoExit", "()Z", "setAutoExit", "(Z)V", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "getFromType", "()I", "setFromType", "(I)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class Params {
        private AppNode app;
        private String appId;
        private boolean autoExit;
        private Context context;
        private int fromType;

        public Params() {
            this(null, null, null, false, 0, 31, null);
        }

        public Params(Context context, String str, AppNode appNode, boolean z10, int i11) {
            this.context = context;
            this.appId = str;
            this.app = appNode;
            this.autoExit = z10;
            this.fromType = i11;
        }

        public /* synthetic */ Params(Context context, String str, AppNode appNode, boolean z10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? null : context, (i12 & 2) != 0 ? null : str, (i12 & 4) == 0 ? appNode : null, (i12 & 8) != 0 ? false : z10, (i12 & 16) != 0 ? 0 : i11);
        }

        public static /* synthetic */ Params copy$default(Params params, Context context, String str, AppNode appNode, boolean z10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                context = params.context;
            }
            if ((i12 & 2) != 0) {
                str = params.appId;
            }
            String str2 = str;
            if ((i12 & 4) != 0) {
                appNode = params.app;
            }
            AppNode appNode2 = appNode;
            if ((i12 & 8) != 0) {
                z10 = params.autoExit;
            }
            boolean z11 = z10;
            if ((i12 & 16) != 0) {
                i11 = params.fromType;
            }
            return params.copy(context, str2, appNode2, z11, i11);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Context getContext() {
            return this.context;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getAppId() {
            return this.appId;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final AppNode getApp() {
            return this.app;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getAutoExit() {
            return this.autoExit;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getFromType() {
            return this.fromType;
        }

        public final Params copy(Context context, String appId, AppNode app, boolean autoExit, int fromType) {
            return new Params(context, appId, app, autoExit, fromType);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Params)) {
                return false;
            }
            Params params = (Params) other;
            return Intrinsics.c(this.context, params.context) && Intrinsics.c(this.appId, params.appId) && Intrinsics.c(this.app, params.app) && this.autoExit == params.autoExit && this.fromType == params.fromType;
        }

        public final AppNode getApp() {
            return this.app;
        }

        public final String getAppId() {
            return this.appId;
        }

        public final boolean getAutoExit() {
            return this.autoExit;
        }

        public final Context getContext() {
            return this.context;
        }

        public final int getFromType() {
            return this.fromType;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v8, types: [int] */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v5 */
        /* JADX WARN: Type inference failed for: r1v7 */
        public int hashCode() {
            Context context = this.context;
            int iHashCode = (context == null ? 0 : context.hashCode()) * 31;
            String str = this.appId;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            AppNode appNode = this.app;
            int iHashCode3 = (iHashCode2 + (appNode != null ? appNode.hashCode() : 0)) * 31;
            boolean z10 = this.autoExit;
            ?? r11 = z10;
            if (z10) {
                r11 = 1;
            }
            return ((iHashCode3 + r11) * 31) + this.fromType;
        }

        public final void setApp(AppNode appNode) {
            this.app = appNode;
        }

        public final void setAppId(String str) {
            this.appId = str;
        }

        public final void setAutoExit(boolean z10) {
            this.autoExit = z10;
        }

        public final void setContext(Context context) {
            this.context = context;
        }

        public final void setFromType(int i11) {
            this.fromType = i11;
        }

        public String toString() {
            return "Params(context=" + this.context + ", appId=" + this.appId + ", app=" + this.app + ", autoExit=" + this.autoExit + ", fromType=" + this.fromType + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0002\u0010\u0005\"\u0004\b\u0006\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", "", "isIntercept", "", "(Z)V", "()Z", "setIntercept", "component1", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final /* data */ class Result {
        private boolean isIntercept;

        public Result() {
            this(false, 1, null);
        }

        public Result(boolean z10) {
            this.isIntercept = z10;
        }

        public /* synthetic */ Result(boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this((i11 & 1) != 0 ? false : z10);
        }

        public static /* synthetic */ Result copy$default(Result result, boolean z10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                z10 = result.isIntercept;
            }
            return result.copy(z10);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsIntercept() {
            return this.isIntercept;
        }

        public final Result copy(boolean isIntercept) {
            return new Result(isIntercept);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Result) && this.isIntercept == ((Result) other).isIntercept;
        }

        public int hashCode() {
            boolean z10 = this.isIntercept;
            if (z10) {
                return 1;
            }
            return z10 ? 1 : 0;
        }

        public final boolean isIntercept() {
            return this.isIntercept;
        }

        public final void setIntercept(boolean z10) {
            this.isIntercept = z10;
        }

        public String toString() {
            return "Result(isIntercept=" + this.isIntercept + ")";
        }
    }

    Result backResult(App app, boolean isIntercept, IBackPressedIntercept intercept, boolean isRemove);

    String getInterceptName();

    int getPriority();

    Result intercept(Chain chain);
}
