package com.transsion.push;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.app.NotificationCompat;
import androidx.core.app.t;
import androidx.media3.common.util.g0;
import androidx.p009lifecycle.v;
import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.api.PermanentPushMessage;
import com.transsion.mpush.core.config.PermanentConfig;
import com.transsion.mpush.core.config.PushConfig;
import com.transsion.mpush.core.config.PushMsgSource;
import com.transsion.mpush.core.net.SdkPullMsgResp;
import com.transsion.mpush.core.renderer.s;
import com.transsion.mpush.core.utils.PushPreference;
import com.transsion.push.feature.activate.ActivatePushFeature;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0013\u0010\u0003J\u0010\u0010\u0015\u001a\u00020\u0014H\u0082@¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\bJ\u0019\u0010$\u001a\u00020\u00042\b\u0010#\u001a\u0004\u0018\u00010\"H\u0014¢\u0006\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsion/push/PushTestActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "", "initView", "", "d0", "()Ljava/lang/String;", "x0", "u0", "w0", "", "grouped", "t0", "(Z)V", "c0", "o0", "()Z", "v0", "", "s0", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lcom/transsion/mpush/api/LocalPushMessage;", "p0", "()Ljava/util/List;", "Lcom/transsion/mpush/core/net/SdkPullMsgResp;", "q0", "()Lcom/transsion/mpush/core/net/SdkPullMsgResp;", "path", "r0", "(Ljava/lang/String;)Ljava/lang/String;", "e0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "a", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class PushTestActivity extends AppCompatActivity {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicInteger f50787b = new AtomicInteger(200000);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final AtomicInteger f50788c = new AtomicInteger(0);

    private final void c0() {
        NotificationManager notificationManager;
        if (Build.VERSION.SDK_INT >= 26 && (notificationManager = (NotificationManager) getSystemService(NotificationManager.class)) != null && notificationManager.getNotificationChannel("push_test_independent_channel") == null) {
            g0.a();
            NotificationChannel notificationChannelA = m.f.a("push_test_independent_channel", "Push Test Independent", 4);
            notificationChannelA.setDescription("Push independent test channel");
            notificationChannelA.setShowBadge(true);
            notificationManager.createNotificationChannel(notificationChannelA);
        }
    }

    private final String d0() {
        EditText editText = (EditText) findViewById(com.transsion.lib.push.R$id.edTitle);
        Editable text = editText != null ? editText.getText() : null;
        return (text == null || text.length() == 0) ? "Notification Title Test ------- Notification Title Test ------- Notification Title Test" : text.toString();
    }

    private final String e0() {
        return "push/notification.json";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(PushTestActivity pushTestActivity, View view) {
        pushTestActivity.v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(PushTestActivity pushTestActivity, View view) {
        pushTestActivity.w0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(PushTestActivity pushTestActivity, View view) {
        pushTestActivity.t0(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(PushTestActivity pushTestActivity, View view) {
        pushTestActivity.t0(true);
    }

    private final void initView() {
        final AppCompatButton appCompatButton = (AppCompatButton) findViewById(com.transsion.lib.push.R$id.simulate_schedule_push);
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.show_permanent_notification)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.f0(this.f50846a, view);
            }
        });
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.show_notification)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.g0(this.f50847a, view);
            }
        });
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.show_independent_notification_no_group)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.h0(this.f50866a, view);
            }
        });
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.show_independent_notification_group)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.i0(this.f50867a, view);
            }
        });
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.pull_local_push)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.j0(this.f50868a, appCompatButton, view);
            }
        });
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.pull_local_push_mock)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.k0(this.f50870a, appCompatButton, view);
            }
        });
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.simulate_schedule_push)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.l0(this.f50872a, view);
            }
        });
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.show_local_list)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.m0(this.f50873a, view);
            }
        });
        ((AppCompatButton) findViewById(com.transsion.lib.push.R$id.btn_test_activate_push)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.push.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PushTestActivity.n0(this.f50874a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(PushTestActivity pushTestActivity, AppCompatButton appCompatButton, View view) {
        kotlinx.coroutines.k.d(v.a(pushTestActivity), null, null, new PushTestActivity$initView$5$1(appCompatButton, pushTestActivity, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(PushTestActivity pushTestActivity, AppCompatButton appCompatButton, View view) {
        kotlinx.coroutines.k.d(v.a(pushTestActivity), null, null, new PushTestActivity$initView$6$1(appCompatButton, pushTestActivity, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(PushTestActivity pushTestActivity, View view) {
        pushTestActivity.x0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(PushTestActivity pushTestActivity, View view) {
        pushTestActivity.u0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(PushTestActivity pushTestActivity, View view) {
        Toast.makeText(pushTestActivity, "触发激活广告推送", 0).show();
        ActivatePushFeature activatePushFeature = new ActivatePushFeature();
        activatePushFeature.init(pushTestActivity);
        activatePushFeature.onTrigger(4);
    }

    private final boolean o0() {
        return Build.VERSION.SDK_INT < 33 || androidx.core.content.b.checkSelfPermission(this, "android.permission.POST_NOTIFICATIONS") == 0;
    }

    private final List p0() {
        SdkPullMsgResp sdkPullMsgRespQ0 = q0();
        List<LocalPushMessage> items = sdkPullMsgRespQ0 != null ? sdkPullMsgRespQ0.getItems() : null;
        return items == null ? CollectionsKt.l() : items;
    }

    private final SdkPullMsgResp q0() {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            String strR0 = r0(e0());
            if (strR0 == null) {
                return null;
            }
            objM454constructorimpl = Result.m454constructorimpl((SdkPullMsgResp) com.blankj.utilcode.util.o.d(strR0, SdkPullMsgResp.class));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (SdkPullMsgResp) (Result.m460isFailureimpl(objM454constructorimpl) ? null : objM454constructorimpl);
    }

    private final String r0(String path) {
        Object objM454constructorimpl;
        Object objM454constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            InputStream inputStreamOpen = getAssets().open(path);
            Intrinsics.g(inputStreamOpen, "open(...)");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, Charsets.UTF_8), 8192);
            try {
                String strE = TextStreamsKt.e(bufferedReader);
                CloseableKt.a(bufferedReader, null);
                objM454constructorimpl = Result.m454constructorimpl(strE);
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(bufferedReader, th2);
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th4));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = null;
        }
        String str = (String) objM454constructorimpl;
        if (str != null) {
            return str;
        }
        try {
            InputStream inputStreamOpen2 = getAssets().open("push/1/notification.json");
            Intrinsics.g(inputStreamOpen2, "open(...)");
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStreamOpen2, Charsets.UTF_8), 8192);
            try {
                String strE2 = TextStreamsKt.e(bufferedReader2);
                CloseableKt.a(bufferedReader2, null);
                objM454constructorimpl2 = Result.m454constructorimpl(strE2);
            } catch (Throwable th5) {
                try {
                    throw th5;
                } catch (Throwable th6) {
                    CloseableKt.a(bufferedReader2, th5);
                    throw th6;
                }
            }
        } catch (Throwable th7) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl2 = Result.m454constructorimpl(ResultKt.a(th7));
        }
        return (String) (Result.m460isFailureimpl(objM454constructorimpl2) ? null : objM454constructorimpl2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object s0(Continuation continuation) throws Throwable {
        PushTestActivity$seedLocalPushFromPreset$1 pushTestActivity$seedLocalPushFromPreset$1;
        SdkPullMsgResp sdkPullMsgResp;
        long j11;
        List list;
        if (continuation instanceof PushTestActivity$seedLocalPushFromPreset$1) {
            pushTestActivity$seedLocalPushFromPreset$1 = (PushTestActivity$seedLocalPushFromPreset$1) continuation;
            int i11 = pushTestActivity$seedLocalPushFromPreset$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                pushTestActivity$seedLocalPushFromPreset$1.label = i11 - Integer.MIN_VALUE;
            } else {
                pushTestActivity$seedLocalPushFromPreset$1 = new PushTestActivity$seedLocalPushFromPreset$1(this, continuation);
            }
        } else {
            pushTestActivity$seedLocalPushFromPreset$1 = new PushTestActivity$seedLocalPushFromPreset$1(this, continuation);
        }
        Object obj = pushTestActivity$seedLocalPushFromPreset$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = pushTestActivity$seedLocalPushFromPreset$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            SdkPullMsgResp sdkPullMsgRespQ0 = q0();
            int i13 = 0;
            if (sdkPullMsgRespQ0 == null) {
                return Boxing.d(0);
            }
            List<LocalPushMessage> items = sdkPullMsgRespQ0.getItems();
            if (items == null) {
                items = CollectionsKt.l();
            }
            if (items.isEmpty()) {
                return Boxing.d(0);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            List<LocalPushMessage> list2 = items;
            ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
            Iterator<T> it = list2.iterator();
            while (true) {
                String strQ = null;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                int i14 = i13 + 1;
                if (i13 < 0) {
                    CollectionsKt.u();
                }
                LocalPushMessage localPushMessage = (LocalPushMessage) next;
                String messageId = localPushMessage.getMessageId();
                if (messageId == null) {
                    messageId = jCurrentTimeMillis + "_" + i13;
                }
                String source = localPushMessage.getSource();
                if (source == null) {
                    source = PushMsgSource.SOURCE_PUSH;
                }
                String str = source;
                String type = localPushMessage.getType();
                if (type == null) {
                    type = "1";
                }
                LocalPushMessage localPushMessageCopy = localPushMessage.copy((229375 & 1) != 0 ? localPushMessage.id : 0, (229375 & 2) != 0 ? localPushMessage.messageId : messageId, (229375 & 4) != 0 ? localPushMessage.title : null, (229375 & 8) != 0 ? localPushMessage.desc : null, (229375 & 16) != 0 ? localPushMessage.deeplink : null, (229375 & 32) != 0 ? localPushMessage.imageList : null, (229375 & 64) != 0 ? localPushMessage.pushTime : null, (229375 & 128) != 0 ? localPushMessage.source : str, (229375 & 256) != 0 ? localPushMessage.style : null, (229375 & 512) != 0 ? localPushMessage.type : type, (229375 & 1024) != 0 ? localPushMessage.receiveTime : jCurrentTimeMillis + ((long) i13), (229375 & 2048) != 0 ? localPushMessage.msgStatus : 0, (229375 & 4096) != 0 ? localPushMessage.showTime : 0L, (229375 & 8192) != 0 ? localPushMessage.forceShow : false, (229375 & 16384) != 0 ? localPushMessage.hasScreenOn : false, (229375 & 32768) != 0 ? localPushMessage.extraMap : null, (229375 & 65536) != 0 ? localPushMessage.builtIn : true, (229375 & 131072) != 0 ? localPushMessage.permanentMsgStatus : 0);
                String deeplink = localPushMessageCopy.getDeeplink();
                if (deeplink != null) {
                    strQ = StringsKt.Q(deeplink, "%MSGID%", messageId, false, 4, null);
                }
                localPushMessageCopy.setDeeplink(strQ);
                arrayList.add(localPushMessageCopy);
                i13 = i14;
            }
            i0 i0VarB = y0.b();
            PushTestActivity$seedLocalPushFromPreset$2 pushTestActivity$seedLocalPushFromPreset$2 = new PushTestActivity$seedLocalPushFromPreset$2(arrayList, null);
            pushTestActivity$seedLocalPushFromPreset$1.L$0 = sdkPullMsgRespQ0;
            pushTestActivity$seedLocalPushFromPreset$1.L$1 = arrayList;
            pushTestActivity$seedLocalPushFromPreset$1.J$0 = jCurrentTimeMillis;
            pushTestActivity$seedLocalPushFromPreset$1.label = 1;
            if (kotlinx.coroutines.i.g(i0VarB, pushTestActivity$seedLocalPushFromPreset$2, pushTestActivity$seedLocalPushFromPreset$1) == objF) {
                return objF;
            }
            sdkPullMsgResp = sdkPullMsgRespQ0;
            j11 = jCurrentTimeMillis;
            list = arrayList;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j11 = pushTestActivity$seedLocalPushFromPreset$1.J$0;
            list = (List) pushTestActivity$seedLocalPushFromPreset$1.L$1;
            sdkPullMsgResp = (SdkPullMsgResp) pushTestActivity$seedLocalPushFromPreset$1.L$0;
            ResultKt.b(obj);
        }
        PushConfig config = sdkPullMsgResp.getConfig();
        if (config != null) {
            PushPreference.f47608a.o(this, config);
        }
        PushPreference.f47608a.x(this, j11);
        return Boxing.d(list.size());
    }

    private final void t0(boolean grouped) {
        if (!o0()) {
            Toast.makeText(this, getString(com.transsion.lib.push.R$string.push_test_no_notification_permission), 0).show();
            return;
        }
        c0();
        String str = grouped ? "RAW-GROUP" : "RAW-NO-GROUP";
        int i11 = 0;
        while (i11 < 4) {
            int iIncrementAndGet = f50788c.incrementAndGet();
            int iIncrementAndGet2 = f50787b.incrementAndGet();
            i11++;
            String str2 = "pkg=" + getPackageName() + ", seq=" + iIncrementAndGet + ", idx=" + i11 + "/4, grouped=" + grouped;
            NotificationCompat.m mVarI = new NotificationCompat.m(this, "push_test_independent_channel").J(com.transsion.lib.push.R$drawable.push_small_logo).l(true).G(1).q(str + " " + d0() + " #" + iIncrementAndGet).p(str2).L(new NotificationCompat.k().q(str2)).P(System.currentTimeMillis()).I(true);
            Intrinsics.g(mVarI, "setShowWhen(...)");
            if (grouped) {
                mVarI.y("push_test_independent_group_key").z(false);
            }
            t.d(this).f(iIncrementAndGet2, mVarI.c());
        }
        Toast.makeText(this, getString(grouped ? com.transsion.lib.push.R$string.push_test_raw_group_sent : com.transsion.lib.push.R$string.push_test_raw_no_group_sent), 0).show();
    }

    private final void u0() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new PushTestActivity$showLocalPushList$1(this, null), 3, null);
    }

    private final void v0() {
        List listP0 = p0();
        if (listP0.isEmpty()) {
            Toast.makeText(this, getString(com.transsion.lib.push.R$string.push_test_pull_parse_failed), 0).show();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        List listK0 = CollectionsKt.K0(listP0, 10);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(listK0, 10));
        int i11 = 0;
        for (Object obj : listK0) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            LocalPushMessage localPushMessage = (LocalPushMessage) obj;
            String messageId = localPushMessage.getMessageId();
            if (messageId == null) {
                messageId = jCurrentTimeMillis + "_" + i11;
            }
            String deeplink = localPushMessage.getDeeplink();
            arrayList.add(new PermanentPushMessage(0, deeplink != null ? StringsKt.Q(deeplink, "%MSGID%", messageId, false, 4, null) : null, messageId, (String) CollectionsKt.k0(localPushMessage.getImageArray()), localPushMessage.getTitle(), 1, null));
            i11 = i12;
        }
        new com.transsion.mpush.core.renderer.v().J(this, arrayList, new PermanentConfig(true, null, 0, d0(), 4, null));
        Toast.makeText(this, "show permanent size=" + arrayList.size(), 0).show();
    }

    private final void w0() {
        LocalPushMessage localPushMessage = (LocalPushMessage) CollectionsKt.k0(p0());
        if (localPushMessage == null) {
            Toast.makeText(this, getString(com.transsion.lib.push.R$string.push_test_pull_parse_failed), 0).show();
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        String strValueOf = String.valueOf(jCurrentTimeMillis);
        String strD0 = d0();
        String source = localPushMessage.getSource();
        if (source == null) {
            source = PushMsgSource.SOURCE_PUSH;
        }
        String str = source;
        String type = localPushMessage.getType();
        if (type == null) {
            type = "1";
        }
        LocalPushMessage localPushMessageCopy = localPushMessage.copy((229375 & 1) != 0 ? localPushMessage.id : 0, (229375 & 2) != 0 ? localPushMessage.messageId : strValueOf, (229375 & 4) != 0 ? localPushMessage.title : strD0, (229375 & 8) != 0 ? localPushMessage.desc : null, (229375 & 16) != 0 ? localPushMessage.deeplink : null, (229375 & 32) != 0 ? localPushMessage.imageList : null, (229375 & 64) != 0 ? localPushMessage.pushTime : null, (229375 & 128) != 0 ? localPushMessage.source : str, (229375 & 256) != 0 ? localPushMessage.style : null, (229375 & 512) != 0 ? localPushMessage.type : type, (229375 & 1024) != 0 ? localPushMessage.receiveTime : jCurrentTimeMillis, (229375 & 2048) != 0 ? localPushMessage.msgStatus : 0, (229375 & 4096) != 0 ? localPushMessage.showTime : 0L, (229375 & 8192) != 0 ? localPushMessage.forceShow : false, (229375 & 16384) != 0 ? localPushMessage.hasScreenOn : false, (229375 & 32768) != 0 ? localPushMessage.extraMap : null, (229375 & 65536) != 0 ? localPushMessage.builtIn : true, (229375 & 131072) != 0 ? localPushMessage.permanentMsgStatus : 0);
        String deeplink = localPushMessageCopy.getDeeplink();
        localPushMessageCopy.setDeeplink(deeplink != null ? StringsKt.Q(deeplink, "%MSGID%", strValueOf, false, 4, null) : null);
        new s().show(this, localPushMessageCopy);
        Toast.makeText(this, "show standard msgId=" + strValueOf, 0).show();
    }

    private final void x0() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new PushTestActivity$simulateSchedulePush$1(this, null), 3, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(com.transsion.lib.push.R$layout.activity_push_test);
        initView();
    }
}
