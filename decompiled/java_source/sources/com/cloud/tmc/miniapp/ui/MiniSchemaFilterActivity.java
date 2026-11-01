package com.cloud.tmc.miniapp.ui;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import com.cloud.tmc.component_api_ps.async.MiniAppIpcAsyncManager;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.Utils;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public final class MiniSchemaFilterActivity extends Activity {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_APPID = "appId";
    public static final String KEY_BACK_TO_URL = "extraMiniBackToUrl";
    public static final String KEY_CLEAR_ALL_PAGES = "extraMiniClearAllPages";
    public static final String KEY_ENTRANCE_URL = "entranceUrl";
    public static final String KEY_FIS_TYPE = "fis_type";
    public static final String KEY_H5_PATH = "h5Path";
    public static final String KEY_HYBRID_PATH = "hybridPath";
    public static final String KEY_MASTS = "massid";
    public static final String KEY_MFAH = "mfah";
    public static final String KEY_MODE = "mode";
    public static final String KEY_PAGE = "page";
    public static final String KEY_QUERY = "query";
    public static final String KEY_QUICK_MODE = "quickMode";
    public static final String KEY_SCENE_ID = "scene_id";
    private final String TAG = "MiniSchemaFilterActivity";
    private final Lazy mFlBaseLayout$delegate = LazyKt.b(new Function0<FrameLayout>() { // from class: com.cloud.tmc.miniapp.ui.MiniSchemaFilterActivity$mFlBaseLayout$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_base_layout);
        }
    });
    private boolean start;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final FrameLayout getMFlBaseLayout() {
        Object value = this.mFlBaseLayout$delegate.getValue();
        Intrinsics.g(value, "<get-mFlBaseLayout>(...)");
        return (FrameLayout) value;
    }

    private final Bundle getStartParams(Object obj) {
        if (!(obj instanceof Uri)) {
            if (obj instanceof Bundle) {
                return (Bundle) obj;
            }
            return null;
        }
        Uri uri = (Uri) obj;
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        if (queryParameterNames.isEmpty()) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (String str : queryParameterNames) {
            bundle.putString(str, uri.getQueryParameter(str));
        }
        bundle.putString("entranceUrl", uri.toString());
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$3(MiniSchemaFilterActivity this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        TmcLogger.d(this$0.TAG, "mFlBaseLayout click");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onResume$lambda$2(MiniSchemaFilterActivity this$0) {
        Intrinsics.h(this$0, "this$0");
        try {
            ByteAppManager.INSTANCE.setSchemeInitStatus(false);
            this$0.finish();
        } catch (Throwable th2) {
            Log.e(this$0.TAG, "MiniSchemaFilterActivity finish: ", th2);
            this$0.finish();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
    }

    public final boolean getStart() {
        return this.start;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        TmcLogger.d(this.TAG, "oncreat");
        super.onCreate(bundle);
        Utils.setAppIfNecessary(getApplication());
        setContentView(R.layout.activity_layout_mini_scheme);
        try {
            Window window = getWindow();
            if (window != null) {
                window.clearFlags(67108864);
            }
            if (window != null) {
                window.addFlags(Integer.MIN_VALUE);
            }
            if (window != null) {
                window.setStatusBarColor(getColor(R.color.mini_color_transparent));
            }
            getMFlBaseLayout().setOnClickListener(new View.OnClickListener() { // from class: com.cloud.tmc.miniapp.ui.f1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MiniSchemaFilterActivity.onCreate$lambda$3(this.f23735a, view);
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(this.TAG, th2);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        TmcLogger.d(this.TAG, "onDestroy");
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        TmcLogger.d(this.TAG, "onNewIntent");
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        TmcLogger.d(this.TAG, "onPause");
    }

    @Override // android.app.Activity
    public void onResume() {
        String string;
        super.onResume();
        try {
            TmcLogger.d(this.TAG, "onResume");
            try {
                ByteAppManager byteAppManager = ByteAppManager.INSTANCE;
                if (byteAppManager.getSchemeInitStatus()) {
                    TmcLogger.d(this.TAG, "launchMiniAppForId: 已拉起");
                    finish();
                    return;
                }
                byteAppManager.setSchemeInitStatus(true);
                if (this.start) {
                    TmcLogger.d(this.TAG, "launchMiniAppForId: start  已拉起");
                    byteAppManager.setSchemeInitStatus(false);
                    finish();
                    return;
                }
                this.start = true;
                Intent intent = getIntent();
                if (intent == null) {
                    return;
                }
                Bundle startParams = getStartParams(intent.getData());
                if (startParams == null) {
                    startParams = getStartParams(intent.getExtras());
                }
                String string2 = startParams != null ? startParams.getString("appId") : null;
                if (startParams == null || (string = startParams.getString("scene_id")) == null) {
                    string = TmcConstants.SHORTCUT_SCENE_ID;
                }
                String str = "palmplay://thirdlauncher.com?entryType=miniapp&_source=miniapps&appId=" + string2 + "&from=10&scene_id=" + string;
                TmcLogger.d(this.TAG, "launchMiniApp: start  psDeeplink = " + str);
                Intent intent2 = new Intent();
                intent2.setAction("android.intent.action.VIEW");
                intent2.addFlags(ASTNode.DEOP);
                intent2.setData(Uri.parse(str));
                getApplication().startActivity(intent2);
                MiniAppIpcAsyncManager.INSTANCE.runOnMain(new Runnable() { // from class: com.cloud.tmc.miniapp.ui.g1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MiniSchemaFilterActivity.onResume$lambda$2(this.f23738a);
                    }
                }, 1000L);
            } catch (Throwable th2) {
                Log.e(this.TAG, "MiniSchemaFilterActivity: ", th2);
            }
        } catch (Throwable th3) {
            Log.e(this.TAG, "MiniSchemaFilterActivity:  finish ", th3);
            finish();
        }
    }

    public final void setStart(boolean z10) {
        this.start = z10;
    }
}
