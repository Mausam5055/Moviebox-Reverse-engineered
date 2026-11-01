package com.transsion.subtitle_download.task;

import android.app.Application;
import android.text.TextUtils;
import android.util.Log;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingDeque;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f55038a = new p();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final LinkedBlockingDeque f55039b = new LinkedBlockingDeque();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f55040c;

    private p() {
    }

    public static /* synthetic */ void e(p pVar, SubtitleDownloadTable subtitleDownloadTable, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        pVar.d(subtitleDownloadTable, z10);
    }

    private final void f() {
        f55040c = false;
        g();
    }

    private final void g() {
        Object objM454constructorimpl;
        Unit unit;
        if (!f55040c) {
            LinkedBlockingDeque linkedBlockingDeque = f55039b;
            if (!linkedBlockingDeque.isEmpty()) {
                f55040c = true;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    SubtitleDownloadTable subtitleDownloadTable = (SubtitleDownloadTable) linkedBlockingDeque.removeFirst();
                    if (subtitleDownloadTable != null) {
                        int type = subtitleDownloadTable.getType();
                        if (type == 4) {
                            new l().k(subtitleDownloadTable, new Function0() { // from class: com.transsion.subtitle_download.task.m
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return p.h(this.f55035a);
                                }
                            });
                        } else if (type != 5) {
                            new f().k(subtitleDownloadTable, new Function0() { // from class: com.transsion.subtitle_download.task.o
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return p.j(this.f55037a);
                                }
                            });
                        } else {
                            new i().k(subtitleDownloadTable, new Function0() { // from class: com.transsion.subtitle_download.task.n
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    return p.i(this.f55036a);
                                }
                            });
                        }
                        unit = Unit.f67061a;
                    } else {
                        unit = null;
                    }
                    objM454constructorimpl = Result.m454constructorimpl(unit);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
                }
                Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
                if (thM457exceptionOrNullimpl == null) {
                    return;
                }
                com.transsion.subtitle_download.utils.b bVar = com.transsion.subtitle_download.utils.b.f55044a;
                p pVar = f55038a;
                bVar.b(pVar.k() + " --> downloadNext() --> 执行下载任务发生异常 -- it = " + Log.getStackTraceString(thM457exceptionOrNullimpl));
                pVar.f();
                return;
            }
        }
        LinkedBlockingDeque linkedBlockingDeque2 = f55039b;
        if (linkedBlockingDeque2.isEmpty()) {
            com.transsion.subtitle_download.utils.b.f55044a.c(k() + " --> downloadNext() --> taskList = " + linkedBlockingDeque2.size() + " -- 当前没有可执行任务了");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(p pVar) {
        pVar.f();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(p pVar) {
        pVar.f();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(p pVar) {
        pVar.f();
        return Unit.f67061a;
    }

    private final String k() {
        String simpleName = p.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void d(SubtitleDownloadTable dbBean, boolean z10) {
        Intrinsics.h(dbBean, "dbBean");
        if (com.transsion.subtitle_download.utils.e.f55047a.i(dbBean.getPath())) {
            com.transsion.subtitle_download.utils.b.f55044a.c(k() + " --> addTaskAndExecute() --> 开始下载字幕 --> 如果字幕资源已经下载完成了，那就直接跳过 --> next() -- getSubtitleInfo = " + dbBean.getSubtitleInfo());
            dbBean.setStatus(5);
            SubtitleDownloadDatabase.Companion dVar = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            dVar.b(applicationA).l0().f(dbBean);
            SubtitleDownloadManager.f54998a.n(dbBean);
            return;
        }
        Iterator it = f55039b.iterator();
        boolean z11 = false;
        while (it.hasNext()) {
            if (TextUtils.equals(((SubtitleDownloadTable) it.next()).getId(), dbBean.getId())) {
                z11 = true;
            }
        }
        if (z11) {
            return;
        }
        q.f55041a.d(dbBean);
        if (z10) {
            f55039b.addFirst(dbBean);
        } else {
            f55039b.add(dbBean);
        }
        com.transsion.subtitle_download.utils.b.f55044a.a(k() + " --> addTaskAndExecute() --> 剩余任务数量 -- taskList.size = " + f55039b.size() + " --> isDownloading = " + f55040c + " --> dbBean.failCount = " + dbBean.getFailCount());
        g();
    }
}
