package com.transsion.mbwidget.data;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.blankj.utilcode.util.o;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.tn.lib.net.bean.BaseDto;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.mbwidget.HotSubjectWidgetProvider;
import com.transsion.mbwidget.PlayWidgetProvider;
import com.transsion.mbwidget.R$string;
import com.transsion.mbwidget.utils.BitmapUtils;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
public final class WidgetDataManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile long f46256b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static VideoDetailPlayBean f46260f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f46263i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WidgetDataManager f46255a = new WidgetDataManager();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f46257c = 3540000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lazy f46258d = LazyKt.b(new Function0() { // from class: com.transsion.mbwidget.data.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WidgetDataManager.x();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Lazy f46259e = LazyKt.b(new Function0() { // from class: com.transsion.mbwidget.data.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WidgetDataManager.C();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final CopyOnWriteArrayList f46261g = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final CopyOnWriteArrayList f46262h = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static volatile CopyOnWriteArrayList f46264j = new CopyOnWriteArrayList();

    private WidgetDataManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public final Object A(Continuation continuation) throws Throwable {
        WidgetDataManager$requestData$1 widgetDataManager$requestData$1;
        Object objM454constructorimpl;
        WidgetDataManager widgetDataManager;
        DeskWidgetResp deskWidgetResp;
        Integer height;
        Integer width;
        Integer height2;
        Integer width2;
        if (continuation instanceof WidgetDataManager$requestData$1) {
            widgetDataManager$requestData$1 = (WidgetDataManager$requestData$1) continuation;
            int i11 = widgetDataManager$requestData$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                widgetDataManager$requestData$1.label = i11 - Integer.MIN_VALUE;
            } else {
                widgetDataManager$requestData$1 = new WidgetDataManager$requestData$1(this, continuation);
            }
        } else {
            widgetDataManager$requestData$1 = new WidgetDataManager$requestData$1(this, continuation);
        }
        WidgetDataManager$requestData$1 widgetDataManager$requestData$2 = widgetDataManager$requestData$1;
        Object objB = widgetDataManager$requestData$2.result;
        Object objF = IntrinsicsKt.f();
        int i12 = widgetDataManager$requestData$2.label;
        try {
            if (i12 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                int i13 = f46261g.size() < 2 ? 8 : 0;
                int i14 = f46262h.size() < 3 ? 16 : 0;
                a aVarL = l();
                WidgetRequestBody widgetRequestBody = new WidgetRequestBody(i13, i14);
                widgetDataManager$requestData$2.L$0 = this;
                widgetDataManager$requestData$2.label = 1;
                objB = a.C0636a.b(aVarL, widgetRequestBody, null, widgetDataManager$requestData$2, 2, null);
                if (objB == objF) {
                    return objF;
                }
                widgetDataManager = this;
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                widgetDataManager = (WidgetDataManager) widgetDataManager$requestData$2.L$0;
                ResultKt.b(objB);
            }
            BaseDto baseDto = (BaseDto) objB;
            if (Intrinsics.c(baseDto.getCode(), "0") && (deskWidgetResp = (DeskWidgetResp) baseDto.getData()) != null) {
                CopyOnWriteArrayList copyOnWriteArrayList = f46261g;
                List<Subject> hotList = deskWidgetResp.getHotList();
                ArrayList arrayList = new ArrayList();
                for (Object obj : hotList) {
                    Subject subject = (Subject) obj;
                    Cover cover = subject.getCover();
                    int iIntValue = (cover == null || (width2 = cover.getWidth()) == null) ? 0 : width2.intValue();
                    Cover cover2 = subject.getCover();
                    if (iIntValue <= ((cover2 == null || (height2 = cover2.getHeight()) == null) ? 0 : height2.intValue())) {
                        arrayList.add(obj);
                    }
                }
                copyOnWriteArrayList.addAll(arrayList);
                CopyOnWriteArrayList copyOnWriteArrayList2 = f46262h;
                List<Subject> interestList = deskWidgetResp.getInterestList();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : interestList) {
                    Subject subject2 = (Subject) obj2;
                    Cover cover3 = subject2.getCover();
                    int iIntValue2 = (cover3 == null || (width = cover3.getWidth()) == null) ? 0 : width.intValue();
                    Cover cover4 = subject2.getCover();
                    if (iIntValue2 <= ((cover4 == null || (height = cover4.getHeight()) == null) ? 0 : height.intValue())) {
                        arrayList2.add(obj2);
                    }
                }
                copyOnWriteArrayList2.addAll(arrayList2);
                String searchBarText = deskWidgetResp.getSearchBarText();
                if (searchBarText != null && searchBarText.length() != 0) {
                    f46263i = deskWidgetResp.getSearchBarText();
                }
                lg.a.f68839a.c("DeskWidget_", "RequestList: hot:" + deskWidgetResp.getHotList().size() + ", in:" + deskWidgetResp.getInterestList().size(), true);
                widgetDataManager.B(deskWidgetResp);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.c("DeskWidget_", "requestData -onFailure: " + thM457exceptionOrNullimpl, true);
        }
        f();
        return Unit.f67061a;
    }

    private final void B(DeskWidgetResp deskWidgetResp) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new WidgetDataManager$saveToCache$1(deskWidgetResp, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VideoDetailPlayDao C() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).D1();
    }

    private final void f() {
        DeskWidgetResp deskWidgetRespI;
        CopyOnWriteArrayList copyOnWriteArrayList = f46262h;
        if ((copyOnWriteArrayList.isEmpty() || f46261g.isEmpty()) && (deskWidgetRespI = i()) != null) {
            if (copyOnWriteArrayList.isEmpty() && !deskWidgetRespI.getInterestList().isEmpty()) {
                copyOnWriteArrayList.addAll(deskWidgetRespI.getInterestList());
            }
            CopyOnWriteArrayList copyOnWriteArrayList2 = f46261g;
            if (!copyOnWriteArrayList2.isEmpty() || deskWidgetRespI.getHotList().isEmpty()) {
                return;
            }
            copyOnWriteArrayList2.addAll(deskWidgetRespI.getHotList());
        }
    }

    private final Object g(List list, Continuation continuation) {
        Object objA;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            f46261g.remove(bVar.b());
            f46262h.remove(bVar.b());
        }
        return ((f46261g.isEmpty() || f46262h.isEmpty()) && (objA = A(continuation)) == IntrinsicsKt.f()) ? objA : Unit.f67061a;
    }

    private final DeskWidgetResp i() {
        String string = com.transsion.mbwidget.d.f46239a.k().getString("hot_widget_cache_key", null);
        lg.a.f68839a.c("DeskWidget_", "widget load cache:" + (string == null), true);
        try {
            Result.Companion companion = Result.INSTANCE;
            return (DeskWidgetResp) o.d(string, DeskWidgetResp.class);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
            return null;
        }
    }

    private final a l() {
        return (a) f46258d.getValue();
    }

    private final PendingIntent n(Context context, boolean z10, String str, Integer num, String str2, String str3, String str4) {
        Intent intent = new Intent(context, (Class<?>) (z10 ? HotSubjectWidgetProvider.class : PlayWidgetProvider.class));
        int i11 = Build.VERSION.SDK_INT >= 31 ? 201326592 : ASTNode.NOJIT;
        intent.putExtra("appWidgetId", num);
        intent.putExtra("key_deeplink_widget", str);
        intent.putExtra("key_subject_id_widget", str2);
        intent.putExtra("key_module_name", str3);
        if (str4 == null) {
            str4 = z10 ? "com.transsion.mbwidget.hot.ACTION_CLICK" : "com.transsion.mbwidget.play.ACTION_CLICK";
        }
        intent.setAction(str4);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, (int) System.currentTimeMillis(), intent, i11);
        Intrinsics.g(broadcast, "getBroadcast(...)");
        return broadcast;
    }

    static /* synthetic */ PendingIntent o(WidgetDataManager widgetDataManager, Context context, boolean z10, String str, Integer num, String str2, String str3, String str4, int i11, Object obj) {
        return widgetDataManager.n(context, z10, str, num, (i11 & 16) != 0 ? null : str2, (i11 & 32) != 0 ? null : str3, (i11 & 64) != 0 ? null : str4);
    }

    private final Subject r(int i11, HashSet hashSet) {
        List listM = j.f46269a.m();
        Collections.shuffle(listM);
        if (i11 == 0) {
            return z(f46262h, listM, hashSet);
        }
        if (i11 == 1) {
            return z(f46261g, listM, hashSet);
        }
        if (i11 != 2) {
            return null;
        }
        return z(f46262h, listM, hashSet);
    }

    private final VideoDetailPlayDao w() {
        return (VideoDetailPlayDao) f46259e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a x() {
        return (a) zg.c.f79414e.a().h(a.class);
    }

    private final Subject z(List list, List list2, Set set) {
        Object obj;
        Object next;
        Iterator it = list.iterator();
        do {
            obj = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!set.add(((Subject) next).getSubjectId()));
        Subject subject = (Subject) next;
        if (subject != null) {
            return subject;
        }
        for (Object obj2 : list2) {
            if (set.add(((Subject) obj2).getSubjectId())) {
                obj = obj2;
                break;
            }
        }
        return (Subject) obj;
    }

    public final Subject h(String str) {
        Object next;
        if (str == null) {
            return null;
        }
        Iterator it = f46264j.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((b) next).b().getSubjectId(), str));
        b bVar = (b) next;
        if (bVar != null) {
            return bVar.b();
        }
        return null;
    }

    public final VideoDetailPlayBean j() {
        String url;
        Subject subject = (Subject) CollectionsKt.v0(f46261g);
        if (subject == null) {
            subject = (Subject) CollectionsKt.u0(j.f46269a.m());
        }
        String subjectId = subject.getSubjectId();
        String str = subjectId == null ? "" : subjectId;
        String subjectId2 = subject.getSubjectId();
        String str2 = subjectId2 == null ? "" : subjectId2;
        String title = subject.getTitle();
        Cover cover = subject.getCover();
        if (cover == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        return new VideoDetailPlayBean(str, str2, 0, 0, 0L, title, url, null, null, 0L, null, null, null, null, null, false, null, null, null, 0L, null, null, null, false, false, false, null, 134217628, null);
    }

    public final Object k(String str, int i11, Continuation continuation) {
        Integer numN = j.f46269a.n(str);
        if (numN != null) {
            return BitmapUtils.f46282a.b(numN.intValue());
        }
        BitmapUtils bitmapUtils = BitmapUtils.f46282a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return bitmapUtils.d(applicationA, str, i11, continuation);
    }

    public final PendingIntent m(Context context, boolean z10, Integer num) {
        Intrinsics.h(context, "context");
        return o(this, context, z10, "oneroom://com.community.oneroom?type=/main/tab&bottomTab=home&channel=desk_widget", num, null, "root", null, 80, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object p(Continuation continuation) throws Throwable {
        WidgetDataManager$getPlayHistory$1 widgetDataManager$getPlayHistory$1;
        if (continuation instanceof WidgetDataManager$getPlayHistory$1) {
            widgetDataManager$getPlayHistory$1 = (WidgetDataManager$getPlayHistory$1) continuation;
            int i11 = widgetDataManager$getPlayHistory$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                widgetDataManager$getPlayHistory$1.label = i11 - Integer.MIN_VALUE;
            } else {
                widgetDataManager$getPlayHistory$1 = new WidgetDataManager$getPlayHistory$1(this, continuation);
            }
        } else {
            widgetDataManager$getPlayHistory$1 = new WidgetDataManager$getPlayHistory$1(this, continuation);
        }
        Object objD = widgetDataManager$getPlayHistory$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = widgetDataManager$getPlayHistory$1.label;
        if (i12 == 0) {
            ResultKt.b(objD);
            if (f46260f != null && !y()) {
                return f46260f;
            }
            VideoDetailPlayDao videoDetailPlayDaoW = w();
            widgetDataManager$getPlayHistory$1.label = 1;
            objD = videoDetailPlayDaoW.d(0, 50, widgetDataManager$getPlayHistory$1);
            if (objD == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objD);
        }
        List list = (List) objD;
        VideoDetailPlayBean videoDetailPlayBean = null;
        Object obj = null;
        if (list != null) {
            for (Object obj2 : list) {
                VideoDetailPlayBean videoDetailPlayBean2 = (VideoDetailPlayBean) obj2;
                Long totalDuration = videoDetailPlayBean2.getTotalDuration();
                long progress = (videoDetailPlayBean2.getProgress() * ((long) 100)) / (totalDuration != null ? RangesKt.g(totalDuration.longValue(), 1L) : 1L);
                if (TextUtils.isDigitsOnly(videoDetailPlayBean2.getId()) && progress <= 80) {
                    obj = obj2;
                    break;
                }
            }
            videoDetailPlayBean = (VideoDetailPlayBean) obj;
        }
        f46260f = videoDetailPlayBean;
        lg.a.f68839a.i("DeskWidget_", "getPlayHistory curHistory: " + f46260f, true);
        return f46260f;
    }

    public final PendingIntent q(Context context, boolean z10, Integer num) {
        Intrinsics.h(context, "context");
        return o(this, context, z10, "oneroom://com.community.oneroom?type=/main/tab&bottomTab=home&channel=desk_widget", num, "refresh_all", ToolBar.REFRESH, null, 64, null);
    }

    public final PendingIntent s(Context context, boolean z10, Integer num) {
        Intrinsics.h(context, "context");
        return o(this, context, z10, "oneroom://com.community.oneroom?type=/search/activity/search_manager&type=3&channel=desk_widget", num, null, "search", null, 80, null);
    }

    public final String t() {
        String str = f46263i;
        if (str != null) {
            return str;
        }
        String string = Utils.a().getString(R$string.widget_search_tips);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0142 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x0157  */
    /* JADX WARN: Code duplicated, block: B:52:0x0170  */
    /* JADX WARN: Code duplicated, block: B:55:0x0189  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object u(String str, String str2, Continuation continuation) throws Throwable {
        WidgetDataManager$getShowList$1 widgetDataManager$getShowList$1;
        boolean zY;
        Object next;
        b bVar;
        List list;
        HashSet hashSet;
        ArrayList arrayList;
        Subject subjectR;
        Subject subjectR2;
        Subject subjectR3;
        if (continuation instanceof WidgetDataManager$getShowList$1) {
            widgetDataManager$getShowList$1 = (WidgetDataManager$getShowList$1) continuation;
            int i11 = widgetDataManager$getShowList$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                widgetDataManager$getShowList$1.label = i11 - Integer.MIN_VALUE;
            } else {
                widgetDataManager$getShowList$1 = new WidgetDataManager$getShowList$1(this, continuation);
            }
        } else {
            widgetDataManager$getShowList$1 = new WidgetDataManager$getShowList$1(this, continuation);
        }
        Object obj = widgetDataManager$getShowList$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = widgetDataManager$getShowList$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                b bVar2 = (b) widgetDataManager$getShowList$1.L$2;
                str2 = (String) widgetDataManager$getShowList$1.L$1;
                String str3 = (String) widgetDataManager$getShowList$1.L$0;
                ResultKt.b(obj);
                bVar = bVar2;
                str = str3;
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                str = (String) widgetDataManager$getShowList$1.L$0;
                ResultKt.b(obj);
            }
            hashSet = new HashSet();
            hashSet.add(str);
            arrayList = new ArrayList();
            subjectR = r(0, hashSet);
            if (subjectR != null) {
                arrayList.add(new b(0, subjectR));
                Boxing.a(hashSet.add(subjectR.getSubjectId()));
            }
            subjectR2 = r(1, hashSet);
            if (subjectR2 != null) {
                arrayList.add(new b(1, subjectR2));
                Boxing.a(hashSet.add(subjectR2.getSubjectId()));
            }
            subjectR3 = r(2, hashSet);
            if (subjectR3 != null) {
                arrayList.add(new b(2, subjectR3));
                Boxing.a(hashSet.add(subjectR3.getSubjectId()));
            }
            f46256b = System.currentTimeMillis();
            lg.a.f68839a.c("DeskWidget_", "showList:" + hashSet, true);
            f46264j = new CopyOnWriteArrayList(arrayList);
            return arrayList;
        }
        ResultKt.b(obj);
        zY = y();
        lg.a.f68839a.c("DeskWidget_", "refreshId:" + str2 + "，historyId:" + str + ", size:" + f46261g.size() + ", in:" + f46262h.size(), true);
        if (str2 != null) {
            Iterator it = f46264j.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((b) next).b().getSubjectId(), str2));
            bVar = (b) next;
            if (bVar != null) {
                List listE = CollectionsKt.e(bVar);
                widgetDataManager$getShowList$1.L$0 = str;
                widgetDataManager$getShowList$1.L$1 = str2;
                widgetDataManager$getShowList$1.L$2 = bVar;
                widgetDataManager$getShowList$1.label = 1;
                if (g(listE, widgetDataManager$getShowList$1) == objF) {
                    return objF;
                }
            }
            zY = Intrinsics.c(str2, "refresh_all");
        }
        if (f46264j.size() < 3 && !zY) {
            return f46264j;
        }
        list = f46264j;
        widgetDataManager$getShowList$1.L$0 = str;
        widgetDataManager$getShowList$1.L$1 = null;
        widgetDataManager$getShowList$1.L$2 = null;
        widgetDataManager$getShowList$1.label = 2;
        if (g(list, widgetDataManager$getShowList$1) == objF) {
            return objF;
        }
        hashSet = new HashSet();
        hashSet.add(str);
        arrayList = new ArrayList();
        subjectR = r(0, hashSet);
        if (subjectR != null) {
            arrayList.add(new b(0, subjectR));
            Boxing.a(hashSet.add(subjectR.getSubjectId()));
        }
        subjectR2 = r(1, hashSet);
        if (subjectR2 != null) {
            arrayList.add(new b(1, subjectR2));
            Boxing.a(hashSet.add(subjectR2.getSubjectId()));
        }
        subjectR3 = r(2, hashSet);
        if (subjectR3 != null) {
            arrayList.add(new b(2, subjectR3));
            Boxing.a(hashSet.add(subjectR3.getSubjectId()));
        }
        f46256b = System.currentTimeMillis();
        lg.a.f68839a.c("DeskWidget_", "showList:" + hashSet, true);
        f46264j = new CopyOnWriteArrayList(arrayList);
        return arrayList;
        HashSet hashSet2 = new HashSet();
        hashSet2.add(str);
        Iterator it2 = f46264j.iterator();
        while (it2.hasNext()) {
            hashSet2.add(((b) it2.next()).b().getSubjectId());
        }
        Subject subjectR4 = r(bVar.a(), hashSet2);
        if (subjectR4 != null) {
            List listU0 = CollectionsKt.U0(f46264j);
            listU0.set(bVar.a(), new b(bVar.a(), subjectR4));
            f46264j = new CopyOnWriteArrayList(listU0);
            return listU0;
        }
        zY = Intrinsics.c(str2, "refresh_all");
        if (f46264j.size() < 3) {
        }
        list = f46264j;
        widgetDataManager$getShowList$1.L$0 = str;
        widgetDataManager$getShowList$1.L$1 = null;
        widgetDataManager$getShowList$1.L$2 = null;
        widgetDataManager$getShowList$1.label = 2;
        if (g(list, widgetDataManager$getShowList$1) == objF) {
            return objF;
        }
        hashSet = new HashSet();
        hashSet.add(str);
        arrayList = new ArrayList();
        subjectR = r(0, hashSet);
        if (subjectR != null) {
            arrayList.add(new b(0, subjectR));
            Boxing.a(hashSet.add(subjectR.getSubjectId()));
        }
        subjectR2 = r(1, hashSet);
        if (subjectR2 != null) {
            arrayList.add(new b(1, subjectR2));
            Boxing.a(hashSet.add(subjectR2.getSubjectId()));
        }
        subjectR3 = r(2, hashSet);
        if (subjectR3 != null) {
            arrayList.add(new b(2, subjectR3));
            Boxing.a(hashSet.add(subjectR3.getSubjectId()));
        }
        f46256b = System.currentTimeMillis();
        lg.a.f68839a.c("DeskWidget_", "showList:" + hashSet, true);
        f46264j = new CopyOnWriteArrayList(arrayList);
        return arrayList;
    }

    public final PendingIntent v(Context context, boolean z10, Integer num, String str) {
        Intrinsics.h(context, "context");
        return o(this, context, z10, "oneroom://com.community.oneroom?type=/movie/detail&channel=desk_widget&id=" + str + "&ops=%7B%22trace_id%22%3A%226516b509cfdb36d11f9026a5b2981871%22%7D", num, str, "subject", null, 64, null);
    }

    public final boolean y() {
        return System.currentTimeMillis() - f46256b > f46257c;
    }
}
