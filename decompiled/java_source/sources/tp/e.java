package tp;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import cf.f;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.tn.lib.widget.R$color;
import com.transsion.lib.push.R$mipmap;
import com.transsion.lib.push.R$string;
import com.transsion.push.helper.i;
import com.transsion.push.utils.t;
import com.transsion.pushapi.NoticePermissionFrom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f76335a = new e();

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f76336a;

        static {
            int[] iArr = new int[NoticePermissionFrom.values().length];
            try {
                iArr[NoticePermissionFrom.APP_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NoticePermissionFrom.DOWNLOAD_RES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NoticePermissionFrom.PLAY_MUSIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f76336a = iArr;
        }
    }

    private e() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(NoticePermissionFrom noticePermissionFrom, f scope, List deniedList, boolean z10, boolean z11) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(deniedList, "deniedList");
        if (!z10) {
            lg.a.C0828a.f(lg.a.f68839a, "NoticePer", "请求权限之后，无需弹窗", false, 4, null);
            return;
        }
        if (z11) {
            lg.a.C0828a.f(lg.a.f68839a, "NoticePer", noticePermissionFrom + " 请求权限，需要跳到设置页，先展示提示弹窗", false, 4, null);
            scope.c(deniedList, new bf.a(null, f76335a.i(noticePermissionFrom), Utils.a().getString(R$string.permission_notice_turn_on), Integer.valueOf(R$mipmap.ic_notification_permission_tips), Integer.valueOf(R$color.white_20), 1, null));
            return;
        }
        if (noticePermissionFrom == NoticePermissionFrom.APP_START) {
            lg.a.C0828a.f(lg.a.f68839a, "NoticePer", "app 启动 直接请求权限", false, 4, null);
            scope.b(deniedList);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "NoticePer", noticePermissionFrom + " 请求权限前，提示弹窗", false, 4, null);
        scope.e(deniedList, new bf.a(null, f76335a.i(noticePermissionFrom), Utils.a().getString(R$string.permission_notice_turn_on), Integer.valueOf(R$mipmap.ic_notification_permission_tips), Integer.valueOf(R$color.white_20), 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(boolean z10, List grantedList, List deniedList) {
        Intrinsics.h(grantedList, "grantedList");
        Intrinsics.h(deniedList, "deniedList");
        lg.a.C0828a.f(lg.a.f68839a, "NoticePer", "通知权限 请求权限结果:" + z10, false, 4, null);
    }

    private final boolean j(NoticePermissionFrom noticePermissionFrom) {
        int i11 = a.f76336a[noticePermissionFrom.ordinal()];
        if (i11 == 1) {
            return k();
        }
        if (i11 != 2) {
            return true;
        }
        t tVar = t.f50944a;
        boolean z10 = tVar.b().getBoolean("key_notification_permission_download", true);
        tVar.b().putBoolean("key_notification_permission_download", false);
        return z10;
    }

    private final boolean k() {
        t tVar = t.f50944a;
        long j11 = tVar.b().getLong("key_notification_permission_app_start_count", 0L);
        long j12 = tVar.b().getLong("key_notification_permission_app_start_last_time", 0L);
        Integer numB = i.f50864a.b();
        int iF = numB != null ? RangesKt.f(numB.intValue(), 1) : 48;
        if (!l() || System.currentTimeMillis() - j12 < TimeConstants.HOUR * iF) {
            lg.a.C0828a.f(lg.a.f68839a, "NoticePer", "app启动，小于" + iF + "小时，不请求 count:" + j11, false, 4, null);
            return false;
        }
        lg.a.f68839a.c("NoticePer", "app启动 超过" + iF + "小时，再次请求  count:" + j11, true);
        tVar.b().putLong("key_notification_permission_app_start_last_time", System.currentTimeMillis());
        tVar.b().putLong("key_notification_permission_app_start_count", j11 + 1);
        n();
        return true;
    }

    private final boolean l() {
        List listU0;
        try {
            Result.Companion companion = Result.INSTANCE;
            long jCurrentTimeMillis = System.currentTimeMillis();
            String string = t.f50944a.b().getString("key_notice_permission_app_start_limit_time", "");
            String str = string == null ? "" : string;
            if (str.length() == 0) {
                listU0 = new ArrayList();
            } else {
                List listR0 = StringsKt.R0(str, new char[]{','}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList();
                Iterator it = listR0.iterator();
                while (it.hasNext()) {
                    Long lX = StringsKt.x((String) it.next());
                    if (lX != null) {
                        arrayList.add(lX);
                    }
                }
                listU0 = CollectionsKt.U0(arrayList);
            }
            final long j11 = jCurrentTimeMillis - 604800000;
            CollectionsKt.I(listU0, new Function1() { // from class: tp.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(e.m(j11, ((Long) obj).longValue()));
                }
            });
            return listU0.size() < 2;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m(long j11, long j12) {
        return j12 < j11;
    }

    private final void n() {
        List listU0;
        try {
            Result.Companion companion = Result.INSTANCE;
            long jCurrentTimeMillis = System.currentTimeMillis();
            String string = t.f50944a.b().getString("key_notice_permission_app_start_limit_time", "");
            String str = string == null ? "" : string;
            if (str.length() == 0) {
                listU0 = new ArrayList();
            } else {
                List listR0 = StringsKt.R0(str, new char[]{','}, false, 0, 6, null);
                ArrayList arrayList = new ArrayList();
                Iterator it = listR0.iterator();
                while (it.hasNext()) {
                    Long lX = StringsKt.x((String) it.next());
                    if (lX != null) {
                        arrayList.add(lX);
                    }
                }
                listU0 = CollectionsKt.U0(arrayList);
            }
            final long j11 = jCurrentTimeMillis - 604800000;
            CollectionsKt.I(listU0, new Function1() { // from class: tp.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(e.o(j11, ((Long) obj).longValue()));
                }
            });
            listU0.add(Long.valueOf(jCurrentTimeMillis));
            Result.m454constructorimpl(t.f50944a.b().putString("key_notice_permission_app_start_limit_time", CollectionsKt.s0(listU0, ",", null, null, 0, null, null, 62, null)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o(long j11, long j12) {
        return j12 < j11;
    }

    public final boolean e(Fragment fragment, NoticePermissionFrom from) {
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(from, "from");
        FragmentActivity activity = fragment.getActivity();
        if (activity != null) {
            return f76335a.f(activity, from);
        }
        return false;
    }

    public final boolean f(FragmentActivity activity, final NoticePermissionFrom from) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(from, "from");
        if (activity.isFinishing() || activity.isDestroyed()) {
            return false;
        }
        ye.c cVar = ye.c.f78993a;
        if (cVar.b(activity)) {
            lg.a.C0828a.v(lg.a.f68839a, "NoticePer", "checkRequestPermission , 权限已开启, from:" + from, false, 4, null);
            return false;
        }
        if (!j(from)) {
            lg.a.C0828a.v(lg.a.f68839a, "NoticePer", "checkRequestPermission 不请求权限, from:" + from, false, 4, null);
            return false;
        }
        lg.a.C0828a.f(lg.a.f68839a, "NoticePer", "checkRequestPermission from:" + from, false, 4, null);
        cVar.e(activity).b("android.permission.POST_NOTIFICATIONS").b().c(new ze.b() { // from class: tp.a
            @Override // ze.b
            public final void a(f fVar, List list, boolean z10, boolean z11) {
                e.g(from, fVar, list, z10, z11);
            }
        }).a(new ze.c() { // from class: tp.b
            @Override // ze.c
            public final void a(boolean z10, List list, List list2) {
                e.h(z10, list, list2);
            }
        });
        return true;
    }

    public final String i(NoticePermissionFrom from) {
        Intrinsics.h(from, "from");
        if (a.f76336a[from.ordinal()] == 3) {
            String string = Utils.a().getString(R$string.permission_notice_tips_music);
            Intrinsics.g(string, "getString(...)");
            return string;
        }
        String string2 = Utils.a().getString(R$string.permission_notice_tips_normal);
        Intrinsics.g(string2, "getString(...)");
        return string2;
    }
}
