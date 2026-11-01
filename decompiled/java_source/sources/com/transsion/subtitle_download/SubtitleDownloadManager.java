package com.transsion.subtitle_download;

import android.text.TextUtils;
import com.transsion.subtitle_download.bean.SubtitleAppType;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.subtitle_download.task.GetInStationSubtitleListTask;
import com.transsion.subtitle_download.task.q;
import com.transsion.subtitle_download.utils.ObserveNetworkState;
import com.transsion.subtitle_download.utils.b;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleDownloadManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SubtitleDownloadManager f54998a = new SubtitleDownloadManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static SubtitleAppType f54999b = SubtitleAppType.MB;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final CopyOnWriteArrayList f55000c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Function0 f55001d;

    private SubtitleDownloadManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String i() {
        String simpleName = SubtitleDownloadManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void b(a listener) {
        Intrinsics.h(listener, "listener");
        f55000c.add(listener);
    }

    public final Object c(String str, Continuation continuation) {
        Object objG = i.g(y0.b(), new SubtitleDownloadManager$deleteSubtitle$2(str, null), continuation);
        return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
    }

    public final void d(SubtitleDownloadTable dbBean) {
        Intrinsics.h(dbBean, "dbBean");
        GetInStationSubtitleListTask.f55013a.h(dbBean);
    }

    public final void e(String str, String str2, String str3, String str4, String str5, int i11, int i12, int i13, int i14, String str6, Function1 function1) {
        GetInStationSubtitleListTask.f55013a.i(str, str2, str4, i12, i13, i14, str3, str5, str6, i11, function1);
    }

    public final void f(String str, String str2, String videoResourceId, String str3, String str4, String str5, String idType, Function1 function1) {
        Intrinsics.h(videoResourceId, "videoResourceId");
        Intrinsics.h(idType, "idType");
        GetInStationSubtitleListTask.f55013a.j(str, str2, videoResourceId, str3, str4, str5, idType, function1);
    }

    public final String g() {
        Function0 function0 = f55001d;
        if (function0 != null) {
            return (String) function0.invoke();
        }
        return null;
    }

    public final SubtitleAppType h() {
        return f54999b;
    }

    public final Object j(String str, Continuation continuation) {
        return i.g(y0.b(), new SubtitleDownloadManager$getSubtitleList$2(str, null), continuation);
    }

    public final void k(SubtitleAppType appType) {
        Intrinsics.h(appType, "appType");
        f54999b = appType;
        b.f55044a.b(i() + " --> init() --> 字幕下载工具初始化");
        ObserveNetworkState.f55042a.d();
    }

    public final void l(Function0 function0) {
        f55001d = function0;
    }

    public final Object m(SubtitleDownloadTable subtitleDownloadTable, Continuation continuation) {
        if (!TextUtils.isEmpty(subtitleDownloadTable.getPath()) && !TextUtils.isEmpty(subtitleDownloadTable.getResourceId()) && !TextUtils.isEmpty(subtitleDownloadTable.getId())) {
            Object objG = i.g(y0.b(), new SubtitleDownloadManager$migration$2(subtitleDownloadTable, null), continuation);
            return objG == IntrinsicsKt.f() ? objG : Unit.f67061a;
        }
        b.f55044a.b(i() + " --> migration() --> 缺少必要字段 --> path = " + subtitleDownloadTable.getPath() + " -- resourceId = " + subtitleDownloadTable.getResourceId() + " -- id = " + subtitleDownloadTable.getId());
        return Unit.f67061a;
    }

    public final void n(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        q.f55041a.c(stDownloadTable);
        Iterator it = f55000c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onComplete(stDownloadTable);
        }
    }

    public final void o(Exception e11, SubtitleDownloadTable dbBean) {
        Intrinsics.h(e11, "e");
        Intrinsics.h(dbBean, "dbBean");
        Iterator it = f55000c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onFail(e11, dbBean);
        }
    }

    public final void p(int i11, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        Iterator it = f55000c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onDownloading(i11, stDownloadTable);
        }
    }

    public final void q(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        Iterator it = f55000c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onSaveDownload(bean);
        }
    }

    public final void r(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        Iterator it = f55000c.iterator();
        while (it.hasNext()) {
            ((a) it.next()).onUnGzZip(stDownloadTable);
        }
    }

    public final void s(a listener) {
        Intrinsics.h(listener, "listener");
        f55000c.remove(listener);
    }
}
