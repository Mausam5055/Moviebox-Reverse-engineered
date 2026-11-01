package xm;

import ak.z;
import android.os.Handler;
import android.os.Looper;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.tencent.mmkv.MMKV;
import com.therouter.TheRouter;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.fissionapi.IFissionProvider;
import com.transsion.member.c0;
import com.transsion.member.constants.TaskType;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberTaskGroup;
import com.transsion.memberapi.MemberTaskInfo;
import com.transsion.memberapi.MemberTaskItem;
import com.transsnet.downloader.manager.p;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import lj.m0;

/* JADX INFO: loaded from: classes6.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f78381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ILoginApi f78382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final List f78383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f78384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f78385e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f78386f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static long f78387g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final List f78388h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final IFissionProvider f78389i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f78390j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static MemberTaskItem f78391k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static long f78392l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final b f78393m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final c f78394n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Handler f78395o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final Runnable f78396p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f78397q;

    public static final class a implements com.transsion.baselib.report.l.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MemberTaskItem f78398a;

        a(MemberTaskItem memberTaskItem) {
            this.f78398a = memberTaskItem;
        }

        @Override // com.transsion.baselib.report.l.a
        public void onBackgroundStatusChange(boolean z10) {
            if (z10) {
                return;
            }
            xm.c cVar = new xm.c();
            Integer rewardAmount = this.f78398a.getRewardAmount();
            cVar.g(rewardAmount != null ? rewardAmount.intValue() : 0);
            com.transsion.baselib.report.l.f43359a.u(this);
        }
    }

    public static final class b implements m0 {
        b() {
        }

        @Override // lj.m0
        public void a(DownloadBean bean, DownloadException downloadException) {
            Intrinsics.h(bean, "bean");
        }

        @Override // lj.m0
        public void b(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }

        @Override // lj.m0
        public void c(DownloadBean bean, long j11, long j12) {
            Intrinsics.h(bean, "bean");
        }

        @Override // lj.m0
        public void d(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }

        @Override // lj.m0
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "download success " + bean, false, 4, null);
            k kVar = k.f78381a;
            kVar.m();
            kVar.c0(bean.getSubjectType());
        }

        @Override // lj.m0
        public void f(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }

        @Override // lj.m0
        public void g(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
        }
    }

    public static final class c implements dz.a {
        c() {
        }

        @Override // dz.a
        public void onLogin(UserInfo user) {
            Intrinsics.h(user, "user");
            k kVar = k.f78381a;
            kVar.x();
            kVar.K();
            kVar.y();
        }

        @Override // dz.a
        public void onLogout() {
            k kVar = k.f78381a;
            kVar.x();
            kVar.K();
            kVar.y();
        }

        @Override // dz.a
        public void onUpdateUserInfo(UserInfo userInfo) {
            dz.a.C0737a.c(this, userInfo);
        }
    }

    static {
        k kVar = new k();
        f78381a = kVar;
        f78382b = (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
        f78383c = new ArrayList();
        f78388h = new ArrayList();
        f78389i = (IFissionProvider) TheRouter.d(IFissionProvider.class, new Object[0]);
        kVar.K();
        f78393m = new b();
        f78394n = new c();
        f78395o = new Handler(Looper.getMainLooper());
        f78396p = new Runnable() { // from class: xm.d
            @Override // java.lang.Runnable
            public final void run() {
                k.A();
            }
        };
        f78397q = 8;
    }

    private k() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A() {
        f78381a.z();
    }

    private final boolean B(String str, boolean z10) {
        UserInfo userInfoI;
        MMKV mmkvB = c0.f46429a.b();
        ILoginApi iLoginApi = f78382b;
        return mmkvB.getBoolean(str + "_" + ((iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getUserId()), z10);
    }

    private final int E(String str, int i11) {
        UserInfo userInfoI;
        MMKV mmkvB = c0.f46429a.b();
        ILoginApi iLoginApi = f78382b;
        return mmkvB.getInt(str + "_" + ((iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getUserId()), i11);
    }

    private final long F(String str, long j11) {
        UserInfo userInfoI;
        MMKV mmkvB = c0.f46429a.b();
        ILoginApi iLoginApi = f78382b;
        return mmkvB.getLong(str + "_" + ((iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getUserId()), j11);
    }

    private final long J() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.set(11, 4);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K() {
        z.f659b.a().d(new Runnable() { // from class: xm.g
            @Override // java.lang.Runnable
            public final void run() {
                k.L();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L() {
        k kVar = f78381a;
        long J = kVar.J();
        if (kVar.F("kv_watch_remember_time", 0L) > J) {
            f78385e = J;
            long jF = kVar.F("kv_watch_today_time", 0L);
            f78384d = jF;
            f78387g = jF;
            lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "init watch time " + f78384d, false, 4, null);
        }
    }

    private final void M() {
        IFissionProvider iFissionProvider = f78389i;
        if (iFissionProvider != null) {
            iFissionProvider.b(f78390j);
        }
    }

    private final void P(String str, boolean z10) {
        UserInfo userInfoI;
        MMKV mmkvB = c0.f46429a.b();
        ILoginApi iLoginApi = f78382b;
        mmkvB.putBoolean(str + "_" + ((iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getUserId()), z10);
    }

    private final void Q(String str, int i11) {
        UserInfo userInfoI;
        MMKV mmkvB = c0.f46429a.b();
        ILoginApi iLoginApi = f78382b;
        mmkvB.putInt(str + "_" + ((iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getUserId()), i11);
    }

    private final void R(String str, long j11) {
        UserInfo userInfoI;
        MMKV mmkvB = c0.f46429a.b();
        ILoginApi iLoginApi = f78382b;
        mmkvB.putLong(str + "_" + ((iLoginApi == null || (userInfoI = iLoginApi.i()) == null) ? null : userInfoI.getUserId()), j11);
    }

    private final void U() {
        z.f659b.a().d(new Runnable() { // from class: xm.f
            @Override // java.lang.Runnable
            public final void run() {
                k.V();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V() {
        k kVar = f78381a;
        long J = kVar.J();
        long jF = kVar.F("kv_watch_remember_time", 0L);
        if (1 <= jF && jF < J) {
            lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "clear last day time " + f78384d, false, 4, null);
            f78384d = 30000L;
        }
        kVar.s();
        f78385e = J;
        f78387g = f78384d;
        kVar.R("kv_watch_remember_time", System.currentTimeMillis());
        kVar.R("kv_watch_today_time", f78384d);
        lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "save watch time " + f78384d, false, 4, null);
    }

    private final void Z() {
        p.a aVar = p.f59500a;
        com.transsnet.downloader.manager.g gVarA = aVar.a(Utils.a());
        b bVar = f78393m;
        gVarA.x(bVar);
        aVar.a(Utils.a()).e(bVar);
        ILoginApi iLoginApi = f78382b;
        if (iLoginApi != null) {
            iLoginApi.p(f78394n);
        }
        if (iLoginApi != null) {
            iLoginApi.g(f78394n);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x000f  */
    private final void b0(MemberTaskItem memberTaskItem) {
        boolean z10;
        Integer status = memberTaskItem.getStatus();
        if (status != null) {
            z10 = status.intValue() == 1;
        }
        f78390j = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0(int i11) {
        IFissionProvider iFissionProvider;
        if (f78390j && (iFissionProvider = f78389i) != null) {
            iFissionProvider.f(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        z.f659b.a().d(new Runnable() { // from class: xm.i
            @Override // java.lang.Runnable
            public final void run() {
                k.n();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n() {
        k kVar = f78381a;
        long J = kVar.J();
        long jF = kVar.F("kv_watch_download_save_time", 0L);
        int i11 = 0;
        int iE = kVar.E("kv_watch_download_count", 0);
        if (1 > jF || jF >= J) {
            i11 = iE;
        } else {
            lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "clear download count", false, 4, null);
        }
        kVar.q(i11);
        kVar.R("kv_watch_download_save_time", System.currentTimeMillis());
        kVar.Q("kv_watch_download_count", i11 + 1);
        lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "save download count " + f78384d, false, 4, null);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009a  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a3  */
    private final void o() {
        MemberTaskItem memberTaskItem;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = f78392l;
        long j12 = jCurrentTimeMillis - j11;
        long j13 = 0;
        if (j11 <= 0 || j12 <= 0) {
            return;
        }
        long J = J();
        long jF = F("kv_game_browse_remember_time", 0L);
        long jF2 = j12 + F("kv_game_browse_today_time", 0L);
        boolean zB = B("kv_game_browse_complete", false);
        if (J > jF) {
            P("kv_game_browse_complete", false);
            zB = false;
        } else {
            j13 = jF2;
        }
        R("kv_game_browse_remember_time", System.currentTimeMillis());
        if (zB || ((memberTaskItem = f78391k) != null && memberTaskItem.isClaimCompleted())) {
            lg.a.C0828a.v(lg.a.f68839a, "TaskManager", "游戏，统计浏览时长任务已经完成", false, 4, null);
            f78395o.removeCallbacksAndMessages(null);
            return;
        }
        MemberTaskItem memberTaskItem2 = f78391k;
        if (memberTaskItem2 != null) {
            long j14 = j13 / ((long) 1000);
            Intrinsics.e(memberTaskItem2);
            Integer durationCondition = memberTaskItem2.getDurationCondition();
            if (j14 >= (durationCondition != null ? durationCondition.intValue() : 300000)) {
                P("kv_game_browse_complete", true);
                lg.a.C0828a.r(lg.a.f68839a, "TaskManager", new String[]{"游戏，统计浏览时长，任务完成"}, false, 4, null);
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: xm.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.p();
                    }
                });
                f78395o.removeCallbacksAndMessages(null);
            } else {
                lg.a.C0828a c0828a = lg.a.f68839a;
                long j15 = j13 / ((long) 1000);
                MemberTaskItem memberTaskItem3 = f78391k;
                lg.a.C0828a.r(c0828a, "TaskManager", new String[]{"游戏，统计浏览时长，任务未完成，curDuration:" + j15 + ", target:" + (memberTaskItem3 != null ? memberTaskItem3.getDurationCondition() : null)}, false, 4, null);
                P("kv_game_browse_complete", false);
            }
        } else {
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            long j16 = j13 / ((long) 1000);
            MemberTaskItem memberTaskItem4 = f78391k;
            if (memberTaskItem4 != null) {
            }
            lg.a.C0828a.r(c0828a2, "TaskManager", new String[]{"游戏，统计浏览时长，任务未完成，curDuration:" + j16 + ", target:" + (memberTaskItem4 != null ? memberTaskItem4.getDurationCondition() : null)}, false, 4, null);
            P("kv_game_browse_complete", false);
        }
        R("kv_game_browse_today_time", j13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p() {
        Integer rewardAmount;
        xm.c cVar = new xm.c();
        MemberTaskItem memberTaskItem = f78391k;
        cVar.g((memberTaskItem == null || (rewardAmount = memberTaskItem.getRewardAmount()) == null) ? 0 : rewardAmount.intValue());
    }

    private final void q(int i11) {
        for (final MemberTaskItem memberTaskItem : f78388h) {
            Integer timesCondition = memberTaskItem.getTimesCondition();
            if (i11 == (timesCondition != null ? timesCondition.intValue() : 0) - 1) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: xm.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.r(memberTaskItem);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(MemberTaskItem memberTaskItem) {
        com.transsion.baselib.report.l lVar = com.transsion.baselib.report.l.f43359a;
        if (lVar.q()) {
            lVar.g(new a(memberTaskItem));
            return;
        }
        xm.c cVar = new xm.c();
        Integer rewardAmount = memberTaskItem.getRewardAmount();
        cVar.g(rewardAmount != null ? rewardAmount.intValue() : 0);
    }

    private final void s() {
        if (f78386f == 0) {
            return;
        }
        for (final MemberTaskItem memberTaskItem : f78383c) {
            Integer durationCondition = memberTaskItem.getDurationCondition();
            long j11 = 1000;
            long jIntValue = durationCondition != null ? durationCondition.intValue() : 0;
            if (f78387g / j11 < jIntValue && f78384d / j11 >= jIntValue) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: xm.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.t(memberTaskItem);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(MemberTaskItem memberTaskItem) {
        xm.c cVar = new xm.c();
        Integer rewardAmount = memberTaskItem.getRewardAmount();
        cVar.g(rewardAmount != null ? rewardAmount.intValue() : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        f78384d = 0L;
        f78385e = 0L;
        f78386f = 0L;
        f78387g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.h();
        }
    }

    private final void z() {
        o();
        f78392l = System.currentTimeMillis();
        f78395o.postDelayed(f78396p, MBInterstitialActivity.WEB_LOAD_TIME);
    }

    public final int C() {
        int i11 = 0;
        int iE = E("kv_game_download_app_claim", 0);
        if (iE <= 0) {
            return iE;
        }
        long J = J();
        long jF = F("kv_game_download_app_remember_time", 0L);
        if (1 > jF || jF >= J) {
            i11 = iE;
        } else {
            lg.a.C0828a.v(lg.a.f68839a, "TaskManager", "游戏app下载，跨天了，重置状态", false, 4, null);
        }
        R("kv_game_download_app_remember_time", System.currentTimeMillis());
        return i11;
    }

    public final long D() {
        long jCurrentTimeMillis = System.currentTimeMillis() - f78392l;
        long jF = F("kv_game_browse_today_time", 0L);
        if (f78392l <= 0 || jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = 0;
        }
        return (jCurrentTimeMillis + jF) / 60000;
    }

    public final int G() {
        long jF = F("kv_watch_download_save_time", 0L);
        int iE = E("kv_watch_download_count", 0);
        if (J() <= jF) {
            return iE;
        }
        u();
        return 0;
    }

    public final int H() {
        long jF = F("kv_play_save_game_time", 0L);
        long jF2 = F("kv_play_game_time", 0L);
        if (J() <= jF) {
            return (int) (jF2 / ((long) 1000));
        }
        w();
        return 0;
    }

    public final int I() {
        if (f78385e != J()) {
            return 0;
        }
        return (int) (f78384d / 60000);
    }

    public final void N(long j11) {
        f78384d += j11 - f78386f;
        f78386f = 0L;
        U();
    }

    public final void O(long j11) {
        long j12 = f78386f;
        if (j11 > j12) {
            f78384d += j11 - j12;
        }
        f78386f = j11;
        if (f78384d - f78387g > 60000) {
            U();
        }
    }

    public final void S(MemberTaskInfo memberTaskInfo) {
        List<MemberTaskGroup> arrayList;
        f78383c.clear();
        f78388h.clear();
        if (memberTaskInfo == null || (arrayList = memberTaskInfo.getList()) == null) {
            arrayList = new ArrayList<>();
        }
        Iterator<MemberTaskGroup> it = arrayList.iterator();
        while (it.hasNext()) {
            for (MemberTaskItem memberTaskItem : it.next().getTaskItems()) {
                Integer taskSubType = memberTaskItem.getTaskSubType();
                int value = TaskType.WATCH.getValue();
                if (taskSubType != null && taskSubType.intValue() == value) {
                    f78383c.add(memberTaskItem);
                } else {
                    int value2 = TaskType.DOWNLOAD_MOVIE.getValue();
                    if (taskSubType != null && taskSubType.intValue() == value2) {
                        f78388h.add(memberTaskItem);
                    } else {
                        int value3 = TaskType.GAME_RES_BROWSE.getValue();
                        if (taskSubType != null && taskSubType.intValue() == value3) {
                            f78391k = memberTaskItem;
                        }
                    }
                }
            }
        }
        Z();
    }

    public final void T(List list) {
        f78383c.clear();
        f78388h.clear();
        if (list == null) {
            list = new ArrayList();
        }
        for (MemberTaskItem memberTaskItem : list) {
            Integer taskSubType = memberTaskItem.getTaskSubType();
            int value = TaskType.WATCH.getValue();
            if (taskSubType != null && taskSubType.intValue() == value) {
                f78383c.add(memberTaskItem);
            } else {
                int value2 = TaskType.DOWNLOAD_MOVIE.getValue();
                if (taskSubType != null && taskSubType.intValue() == value2) {
                    f78388h.add(memberTaskItem);
                } else {
                    int value3 = TaskType.PALM_PAY.getValue();
                    if (taskSubType != null && taskSubType.intValue() == value3) {
                        b0(memberTaskItem);
                    } else {
                        int value4 = TaskType.GAME_RES_BROWSE.getValue();
                        if (taskSubType != null && taskSubType.intValue() == value4) {
                            f78391k = memberTaskItem;
                        } else {
                            lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "taskItem: " + memberTaskItem + " that is not support now, please check it.", false, 4, null);
                        }
                    }
                }
            }
        }
        M();
        Z();
    }

    public final void W() {
        lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "游戏下载任务完成", false, 4, null);
        R("kv_game_download_app_remember_time", System.currentTimeMillis());
        Q("kv_game_download_app_claim", 1);
    }

    public final void X(long j11) {
        if (j11 > H()) {
            R("kv_play_save_game_time", System.currentTimeMillis());
            R("kv_play_game_time", j11);
        }
    }

    public final void Y() {
        if (f78391k == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "游戏，startGameResDurationTracking", false, 4, null);
        f78392l = System.currentTimeMillis();
        f78395o.post(f78396p);
    }

    public final void a0() {
        if (f78391k == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "TaskManager", "游戏，stopGameResDurationTracking", false, 4, null);
        o();
        f78395o.removeCallbacksAndMessages(null);
    }

    public final void u() {
        R("kv_watch_download_save_time", System.currentTimeMillis());
        Q("kv_watch_download_count", 0);
    }

    public final void v() {
        R("kv_game_download_app_remember_time", System.currentTimeMillis());
        Q("kv_game_download_app_claim", 0);
    }

    public final void w() {
        R("kv_play_save_game_time", System.currentTimeMillis());
        R("kv_play_game_time", 0L);
    }
}
