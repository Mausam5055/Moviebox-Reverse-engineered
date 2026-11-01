package com.transsion.mpush.core.activity;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.mpush.api.IPushRouteHandler;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.api.PermanentPushMessage;
import com.transsion.mpush.core.features.PermanentPushFeature;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import lg.a;
import ln.b;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0012\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0012\u0010\bJ\u000f\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0013\u0010\u0003J\u001f\u0010\u0018\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/transsion/mpush/core/activity/SdkPushClickActivity;", "Landroid/app/Activity;", "<init>", "()V", "Landroid/content/Intent;", "intent", "", "c", "(Landroid/content/Intent;)V", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/Object;)Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onNewIntent", "onDestroy", "Landroid/content/Context;", "context", "", "notificationId", "a", "(Landroid/content/Context;I)V", "Lkotlinx/coroutines/n0;", "Lkotlinx/coroutines/n0;", "activityScope", "MBPush_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SdkPushClickActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final n0 activityScope = o0.a(l2.b(null, 1, null).plus(y0.b()));

    private final String b(Object value) {
        if (value instanceof String) {
            return (String) value;
        }
        if ((value instanceof CharSequence) || (value instanceof Number) || (value instanceof Boolean) || (value instanceof Character)) {
            return value.toString();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0222  */
    /* JADX WARN: Code duplicated, block: B:61:0x0233  */
    /* JADX WARN: Code duplicated, block: B:69:0x0255  */
    /* JADX WARN: Code duplicated, block: B:71:0x0261  */
    /* JADX WARN: Code duplicated, block: B:74:0x02b2 A[Catch: Exception -> 0x02c8, TryCatch #2 {Exception -> 0x02c8, blocks: (B:72:0x027f, B:74:0x02b2, B:80:0x02ce, B:83:0x02d5, B:84:0x02fd, B:86:0x0303, B:87:0x0319, B:88:0x031d), top: B:96:0x027f }] */
    /* JADX WARN: Code duplicated, block: B:78:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:86:0x0303 A[Catch: Exception -> 0x02c8, LOOP:1: B:84:0x02fd->B:86:0x0303, LOOP_END, TryCatch #2 {Exception -> 0x02c8, blocks: (B:72:0x027f, B:74:0x02b2, B:80:0x02ce, B:83:0x02d5, B:84:0x02fd, B:86:0x0303, B:87:0x0319, B:88:0x031d), top: B:96:0x027f }] */
    /* JADX WARN: Instruction removed from duplicated block: B:71:0x0261, please report this as an issue */
    private final void c(Intent intent) {
        Object objM454constructorimpl;
        String str;
        String str2;
        LinkedHashMap linkedHashMap;
        String str3;
        int intExtra;
        a.C0828a c0828a;
        String str4;
        IPushRouteHandler iPushRouteHandlerH;
        LinkedHashMap linkedHashMap2;
        Intent intent2;
        String stringExtra;
        PermanentPushFeature permanentPushFeature;
        LinkedHashMap linkedHashMap3;
        Object objM454constructorimpl2;
        String strB;
        String stringExtra2 = intent.getStringExtra("msg_id");
        if (stringExtra2 == null) {
            return;
        }
        String stringExtra3 = intent.getStringExtra("msg_uri");
        boolean booleanExtra = intent.getBooleanExtra("is_permanent", false);
        String str5 = booleanExtra ? "常驻消息" : "本地消息";
        a.C0828a.l(a.f68839a, "M_PUSH_SDK", "【点击处理】收到通知点击事件，消息ID：" + stringExtra2 + "，消息类型：" + str5 + "，跳转链接：" + stringExtra3, false, 4, null);
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(intent.getExtras());
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        Bundle bundle = (Bundle) objM454constructorimpl;
        if (bundle != null) {
            Set<String> setKeySet = bundle.keySet();
            Intrinsics.g(setKeySet, "keySet(...)");
            for (String str6 : setKeySet) {
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    objM454constructorimpl2 = Result.m454constructorimpl(bundle.get(str6));
                } catch (Throwable th3) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th3));
                }
                if (Result.m460isFailureimpl(objM454constructorimpl2)) {
                    objM454constructorimpl2 = null;
                }
                if (objM454constructorimpl2 != null && (strB = b(objM454constructorimpl2)) != null) {
                    linkedHashMap4.put(str6, strB);
                }
            }
        }
        try {
            try {
                a.C0828a c0828a2 = a.f68839a;
                a.C0828a.r(c0828a2, "M_PUSH_SDK", new String[]{"【点击处理】开始上报点击埋点，消息ID：" + stringExtra2}, false, 4, null);
                boolean booleanExtra2 = intent.getBooleanExtra("is_permanent", false);
                String stringExtra4 = intent.getStringExtra("channel_id");
                String stringExtra5 = intent.getStringExtra("msg_source");
                try {
                    if (!booleanExtra2) {
                        linkedHashMap3 = linkedHashMap4;
                        LocalPushMessage localPushMessage = (LocalPushMessage) intent.getParcelableExtra("push_message");
                        if (localPushMessage != null) {
                            b.f68987a.g(this, localPushMessage, stringExtra4, stringExtra5);
                            a.C0828a.r(c0828a2, "M_PUSH_SDK", new String[]{"【点击处理】本地消息点击埋点已上报，消息ID：" + stringExtra2}, false, 4, null);
                        } else {
                            a.C0828a.l(c0828a2, "M_PUSH_SDK", "【点击处理】PushMessage对象丢失，使用降级处理，消息ID：" + stringExtra2, false, 4, null);
                            linkedHashMap = linkedHashMap3;
                            str = stringExtra3;
                            str2 = stringExtra2;
                            try {
                                b.f68987a.g(this, new LocalPushMessage(0, stringExtra2, null, null, stringExtra3, null, null, stringExtra5, intent.getStringExtra("msg_style"), intent.getStringExtra("msg_type"), 0L, 0, 0L, false, false, null, false, 0, 261229, null), stringExtra4, stringExtra5);
                            } catch (Exception e11) {
                                e = e11;
                                a.C0828a.l(a.f68839a, "M_PUSH_SDK", "【点击处理】埋点上报异常，消息ID：" + str2 + "，异常：" + e, false, 4, null);
                                e.printStackTrace();
                            }
                        }
                        if (str2.length() > 0) {
                            k.d(this.activityScope, null, null, new SdkPushClickActivity$handleIntent$3(str2, this, null), 3, null);
                        }
                        if (booleanExtra) {
                            str3 = str2;
                            stringExtra = intent.getStringExtra("permanent_id");
                            if (stringExtra != null && stringExtra.length() != 0 && (permanentPushFeature = (PermanentPushFeature) ln.a.f68978a.e(PermanentPushFeature.class)) != null) {
                                permanentPushFeature.j(stringExtra);
                            }
                        } else {
                            str3 = str2;
                            intExtra = intent.getIntExtra("notification_id", 0);
                            if (intExtra != 0) {
                                a.C0828a.f(a.f68839a, "M_PUSH_SDK", "SdkPushClickActivity: clearing notification id=" + intExtra, false, 4, null);
                                a(this, intExtra);
                            }
                        }
                        c0828a = a.f68839a;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("【点击处理】开始路由跳转，消息ID：");
                        sb2.append(str3);
                        sb2.append("，链接：");
                        str4 = str;
                        sb2.append(str4);
                        a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{sb2.toString()}, false, 4, null);
                        iPushRouteHandlerH = ln.a.f68978a.h();
                        if (iPushRouteHandlerH != null) {
                            a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【点击处理】使用自定义路由处理器"}, false, 4, null);
                            iPushRouteHandlerH.onHandleRoute(this, str4, linkedHashMap);
                            return;
                        }
                        linkedHashMap2 = linkedHashMap;
                        if (str4 != null && str4.length() != 0) {
                            a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【点击处理】使用默认Intent路由"}, false, 4, null);
                            intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str4));
                            intent2.addFlags(ASTNode.DEOP);
                            for (Map.Entry entry : linkedHashMap2.entrySet()) {
                                intent2.putExtra((String) entry.getKey(), (String) entry.getValue());
                            }
                            startActivity(intent2);
                            return;
                        }
                        a.C0828a.f(c0828a, "M_PUSH_SDK", "【点击处理】跳转链接为空，跳过路由", false, 4, null);
                        return;
                    }
                    try {
                        linkedHashMap3 = linkedHashMap4;
                        b.f68987a.h(this, new PermanentPushMessage(0, stringExtra3, stringExtra2, null, null, 1, null), stringExtra4, stringExtra5);
                        a.C0828a.r(c0828a2, "M_PUSH_SDK", new String[]{"【点击处理】常驻消息点击埋点已上报，消息ID：" + stringExtra2}, false, 4, null);
                    } catch (Exception e12) {
                        e = e12;
                        str = stringExtra3;
                        str2 = stringExtra2;
                        linkedHashMap = linkedHashMap4;
                        a.C0828a.l(a.f68839a, "M_PUSH_SDK", "【点击处理】埋点上报异常，消息ID：" + str2 + "，异常：" + e, false, 4, null);
                        e.printStackTrace();
                    }
                    str = stringExtra3;
                    str2 = stringExtra2;
                    linkedHashMap = linkedHashMap3;
                } catch (Exception e13) {
                    e = e13;
                }
            } catch (Exception e14) {
                e = e14;
                str = stringExtra3;
                str2 = stringExtra2;
                linkedHashMap = linkedHashMap4;
            }
            c0828a = a.f68839a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("【点击处理】开始路由跳转，消息ID：");
            sb3.append(str3);
            sb3.append("，链接：");
            str4 = str;
            sb3.append(str4);
            a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{sb3.toString()}, false, 4, null);
            iPushRouteHandlerH = ln.a.f68978a.h();
            if (iPushRouteHandlerH != null) {
                a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【点击处理】使用自定义路由处理器"}, false, 4, null);
                iPushRouteHandlerH.onHandleRoute(this, str4, linkedHashMap);
                return;
            }
            linkedHashMap2 = linkedHashMap;
            if (str4 != null) {
                a.C0828a.r(c0828a, "M_PUSH_SDK", new String[]{"【点击处理】使用默认Intent路由"}, false, 4, null);
                intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str4));
                intent2.addFlags(ASTNode.DEOP);
                while (r2.hasNext()) {
                    intent2.putExtra((String) entry.getKey(), (String) entry.getValue());
                }
                startActivity(intent2);
                return;
            }
            a.C0828a.f(c0828a, "M_PUSH_SDK", "【点击处理】跳转链接为空，跳过路由", false, 4, null);
            return;
        } catch (Exception e15) {
            a.C0828a.l(a.f68839a, "M_PUSH_SDK", "【点击处理】路由跳转异常，消息ID：" + str3 + "，异常：" + e15, false, 4, null);
            e15.printStackTrace();
            return;
        }
        if (str2.length() > 0) {
            k.d(this.activityScope, null, null, new SdkPushClickActivity$handleIntent$3(str2, this, null), 3, null);
        }
        if (booleanExtra) {
            str3 = str2;
            stringExtra = intent.getStringExtra("permanent_id");
            if (stringExtra != null) {
                permanentPushFeature.j(stringExtra);
            }
        } else {
            str3 = str2;
            intExtra = intent.getIntExtra("notification_id", 0);
            if (intExtra != 0) {
                a.C0828a.f(a.f68839a, "M_PUSH_SDK", "SdkPushClickActivity: clearing notification id=" + intExtra, false, 4, null);
                a(this, intExtra);
            }
        }
    }

    public final void a(Context context, int notificationId) {
        if (context == null) {
            return;
        }
        Object systemService = context.getSystemService("notification");
        NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
        if (notificationManager == null) {
            return;
        }
        try {
            notificationManager.cancel(notificationId);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        Intrinsics.g(intent, "getIntent(...)");
        c(intent);
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        o0.d(this.activityScope, null, 1, null);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            c(intent);
        }
        finish();
    }
}
