package com.transsion.baselib.utils;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.UtilsTransActivity;
import com.transsion.baselib.utils.ActivityPermissionUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class ActivityPermissionUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ActivityPermissionUtil f43373a = new ActivityPermissionUtil();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Function0 f43374b;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ1\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/transsion/baselib/utils/ActivityPermissionUtil$PermissionTransActivityImpl;", "Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;", "<init>", "()V", "Lcom/blankj/utilcode/util/UtilsTransActivity;", "activity", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreated", "(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V", "", "requestCode", "resultCode", "Landroid/content/Intent;", "data", "onActivityResult", "(Lcom/blankj/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V", "onDestroy", "(Lcom/blankj/utilcode/util/UtilsTransActivity;)V", "Companion", "a", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class PermissionTransActivityImpl extends UtilsTransActivity.TransActivityDelegate {
        private static final String ACTION = "extra_action";
        private static final String ACTION_2 = "extra_action2";
        private static final String REQUEST_CODE = "extra_request_code";

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final Lazy<PermissionTransActivityImpl> instance$delegate = LazyKt.b(new Function0() { // from class: ak.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ActivityPermissionUtil.PermissionTransActivityImpl.instance_delegate$lambda$0();
            }
        });

        /* JADX INFO: renamed from: com.transsion.baselib.utils.ActivityPermissionUtil$PermissionTransActivityImpl$a, reason: from kotlin metadata */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void d(String str, String str2, int i11, Intent intent) {
                intent.putExtra(PermissionTransActivityImpl.ACTION, str);
                intent.putExtra(PermissionTransActivityImpl.ACTION_2, str2);
                intent.putExtra(PermissionTransActivityImpl.REQUEST_CODE, i11);
            }

            public final PermissionTransActivityImpl b() {
                return (PermissionTransActivityImpl) PermissionTransActivityImpl.instance$delegate.getValue();
            }

            public final void c(final String action, final String str, final int i11) {
                Intrinsics.h(action, "action");
                UtilsTransActivity.T(new Utils.b() { // from class: ak.c
                    @Override // com.blankj.utilcode.util.Utils.b
                    public final void accept(Object obj) {
                        ActivityPermissionUtil.PermissionTransActivityImpl.Companion.d(action, str, i11, (Intent) obj);
                    }
                }, b());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final PermissionTransActivityImpl instance_delegate$lambda$0() {
            return new PermissionTransActivityImpl();
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onActivityResult(UtilsTransActivity activity, int requestCode, int resultCode, Intent data) {
            Intrinsics.h(activity, "activity");
            activity.finish();
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onCreated(UtilsTransActivity activity, Bundle savedInstanceState) {
            Intrinsics.h(activity, "activity");
            activity.getWindow().addFlags(262160);
            String stringExtra = activity.getIntent().getStringExtra(ACTION);
            String stringExtra2 = activity.getIntent().getStringExtra(ACTION_2);
            int intExtra = activity.getIntent().getIntExtra(REQUEST_CODE, 10000);
            if (stringExtra == null || stringExtra.length() == 0) {
                activity.finish();
                return;
            }
            if (activity.isFinishing() || activity.isDestroyed()) {
                return;
            }
            try {
                activity.startActivityForResult(new Intent(stringExtra, Uri.parse("package:" + activity.getPackageName())), intExtra);
            } catch (Throwable unused) {
                if (stringExtra2 == null || stringExtra2.length() == 0) {
                    activity.finish();
                    return;
                }
                try {
                    activity.startActivityForResult(new Intent(stringExtra2, Uri.parse("package:" + activity.getPackageName())), intExtra);
                } catch (Throwable unused2) {
                    activity.finish();
                }
            }
        }

        @Override // com.blankj.utilcode.util.UtilsTransActivity.TransActivityDelegate
        public void onDestroy(UtilsTransActivity activity) {
            Intrinsics.h(activity, "activity");
            Function0 function0 = ActivityPermissionUtil.f43374b;
            if (function0 != null) {
                function0.invoke();
            }
        }
    }

    private ActivityPermissionUtil() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e(Function0 function0) {
        function0.invoke();
        f43374b = null;
        return Unit.f67061a;
    }

    public final void c(String action, int i11, Function0 callback) {
        Intrinsics.h(action, "action");
        Intrinsics.h(callback, "callback");
        d(action, null, i11, callback);
    }

    public final void d(String action, String str, int i11, final Function0 callback) {
        Intrinsics.h(action, "action");
        Intrinsics.h(callback, "callback");
        f43374b = new Function0() { // from class: ak.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ActivityPermissionUtil.e(callback);
            }
        };
        PermissionTransActivityImpl.INSTANCE.c(action, str, i11);
    }
}
