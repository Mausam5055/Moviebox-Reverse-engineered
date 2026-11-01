package com.hisavana.mintegral.check;

import android.content.Context;
import android.text.TextUtils;
import com.hisavana.common.bean.AppStartInfo;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import com.mbridge.msdk.out.SDKInitStatusListener;
import com.mbridge.msdk.system.MBridgeSDKImpl;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class MBridgeSDKManager {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static MBridgeSDKInitializeState f33306e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile String f33307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile String f33308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile MBridgeSDKInitializeListener f33309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MBridgeSDK f33310d;

    private static final class ClassHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final MBridgeSDKManager f33311a = new MBridgeSDKManager();
    }

    private static class DefaultSDKInitStatusListener implements SDKInitStatusListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f33312a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f33313b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private MBridgeSDKInitializeListener f33314c;

        public DefaultSDKInitStatusListener(String str, String str2, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
            this.f33312a = str;
            this.f33313b = str2;
            this.f33314c = mBridgeSDKInitializeListener;
        }

        @Override // com.mbridge.msdk.out.SDKInitStatusListener
        public void onInitFail(String str) {
            MBridgeSDKInitializeState unused = MBridgeSDKManager.f33306e = MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_FAILURE;
            MBridgeSDKInitializeListener mBridgeSDKInitializeListener = this.f33314c;
            if (mBridgeSDKInitializeListener != null) {
                mBridgeSDKInitializeListener.onInitializeFailure("sdk initialize failed： an exception occurs");
            }
        }

        @Override // com.mbridge.msdk.out.SDKInitStatusListener
        public void onInitSuccess() {
            MBridgeSDKInitializeState unused = MBridgeSDKManager.f33306e = MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_SUCCESS;
            MBridgeSDKInitializeListener mBridgeSDKInitializeListener = this.f33314c;
            if (mBridgeSDKInitializeListener != null) {
                mBridgeSDKInitializeListener.onInitializeSuccess(this.f33312a, this.f33313b);
            }
        }
    }

    public interface MBridgeSDKInitializeListener {
        void onInitializeFailure(String str);

        void onInitializeSuccess(String str, String str2);
    }

    public enum MBridgeSDKInitializeState {
        SDK_STATE_UN_INITIALIZE,
        SDK_STATE_INITIALIZING,
        SDK_STATE_INITIALIZE_SUCCESS,
        SDK_STATE_INITIALIZE_FAILURE
    }

    private MBridgeSDKManager() {
        f33306e = MBridgeSDKInitializeState.SDK_STATE_UN_INITIALIZE;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void b(Context context, boolean z10, Map map, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
        try {
            MBridgeConstans.DEBUG = z10;
            MBridgeSDKImpl mBridgeSDK = MBridgeSDKFactory.getMBridgeSDK();
            this.f33310d = mBridgeSDK;
            Map<String, String> mBConfigurationMap = mBridgeSDK.getMBConfigurationMap(this.f33308b, this.f33307a, "");
            if (map != null && !map.isEmpty()) {
                mBConfigurationMap.putAll(map);
            }
            this.f33310d.setConsentStatus(context, AppStartInfo.userConsent ? 1 : 0);
            this.f33310d.init(mBConfigurationMap, context, new DefaultSDKInitStatusListener(this.f33307a, this.f33308b, this.f33309c));
            this.f33310d.setCoppaStatus(context, AppStartInfo.ageRestrictedUser);
        } catch (Exception e11) {
            f33306e = MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_FAILURE;
            if (this.f33309c != null) {
                mBridgeSDKInitializeListener.onInitializeFailure(e11.getMessage());
            }
        }
    }

    private boolean c(Context context, String str, String str2) {
        boolean z10;
        String str3;
        boolean z11 = false;
        if (context == null) {
            str3 = "context must not null";
            z10 = false;
        } else {
            z10 = true;
            str3 = "";
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            z11 = z10;
        } else if (TextUtils.isEmpty(str3)) {
            str3 = "appKey or appID must not null";
        } else {
            str3 = str3 + " & appKey or appID must not null";
        }
        if (!z11 && !TextUtils.isEmpty(str3) && this.f33309c != null) {
            f33306e = MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_FAILURE;
            this.f33309c.onInitializeFailure(str3);
        }
        return z11;
    }

    public static MBridgeSDKManager getInstance() {
        return ClassHolder.f33311a;
    }

    public String getAppID() {
        return this.f33308b;
    }

    public String getAppKey() {
        return this.f33307a;
    }

    public MBridgeSDKInitializeState getCurrentState() {
        return f33306e;
    }

    public MBridgeSDK getMBridgeSDK() {
        return this.f33310d;
    }

    public synchronized void initialize(Context context, String str, String str2) {
        initialize(context, str, str2, false, null, null);
    }

    public synchronized void initialize(Context context, String str, String str2, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
        initialize(context, str, str2, false, null, mBridgeSDKInitializeListener);
    }

    public synchronized void initialize(Context context, String str, String str2, boolean z10) {
        initialize(context, str, str2, z10, null, null);
    }

    public synchronized void initialize(Context context, String str, String str2, boolean z10, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
        initialize(context, str, str2, z10, null, mBridgeSDKInitializeListener);
    }

    public synchronized void initialize(Context context, String str, String str2, boolean z10, Map<String, String> map) {
        initialize(context, str, str2, z10, map, null);
    }

    public synchronized void initialize(Context context, String str, String str2, boolean z10, Map<String, String> map, MBridgeSDKInitializeListener mBridgeSDKInitializeListener) {
        MBridgeSDKInitializeState mBridgeSDKInitializeState = f33306e;
        MBridgeSDKInitializeState mBridgeSDKInitializeState2 = MBridgeSDKInitializeState.SDK_STATE_INITIALIZING;
        if (mBridgeSDKInitializeState == mBridgeSDKInitializeState2) {
            if (mBridgeSDKInitializeListener != null) {
                mBridgeSDKInitializeListener.onInitializeFailure("sdk is initializing");
            }
            return;
        }
        this.f33309c = mBridgeSDKInitializeListener;
        if (c(context, str, str2)) {
            if (f33306e == MBridgeSDKInitializeState.SDK_STATE_INITIALIZE_SUCCESS && TextUtils.equals(this.f33308b, str2) && TextUtils.equals(this.f33307a, str)) {
                if (this.f33309c != null) {
                    this.f33309c.onInitializeSuccess(this.f33307a, this.f33308b);
                }
            } else {
                f33306e = mBridgeSDKInitializeState2;
                this.f33307a = str;
                this.f33308b = str2;
                b(context, z10, map, this.f33309c);
            }
        }
    }
}
