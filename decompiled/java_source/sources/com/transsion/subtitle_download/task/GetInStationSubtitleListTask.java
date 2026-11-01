package com.transsion.subtitle_download.task;

import android.app.Application;
import android.text.TextUtils;
import com.blankj.utilcode.util.Utils;
import com.transsion.subtitle_download.SubtitleDownloadManager;
import com.transsion.subtitle_download.bean.SubtitleItem;
import com.transsion.subtitle_download.db.SubtitleDownloadDatabase;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class GetInStationSubtitleListTask {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GetInStationSubtitleListTask f55013a = new GetInStationSubtitleListTask();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f55014b = LazyKt.b(new Function0() { // from class: com.transsion.subtitle_download.task.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return GetInStationSubtitleListTask.f();
        }
    });

    private GetInStationSubtitleListTask() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ku.a f() {
        return (ku.a) zg.c.f79414e.a().h(ku.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:50:0x028b  */
    /* JADX WARN: Code duplicated, block: B:52:0x029b  */
    /* JADX WARN: Code duplicated, block: B:53:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:56:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:59:0x030b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:60:0x030c  */
    /* JADX WARN: Code duplicated, block: B:63:0x031a  */
    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x030c -> B:61:0x0312). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0471 -> B:101:0x0474). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object g(com.tn.lib.net.bean.BaseDto r34, kotlin.jvm.functions.Function1 r35, java.lang.String r36, java.lang.String r37, java.lang.String r38, int r39, int r40, int r41, java.lang.String r42, java.lang.String r43, java.lang.String r44, kotlin.coroutines.Continuation r45) {
        /*
            Method dump skipped, instruction units count: 1316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.transsion.subtitle_download.task.GetInStationSubtitleListTask.g(com.tn.lib.net.bean.BaseDto, kotlin.jvm.functions.Function1, java.lang.String, java.lang.String, java.lang.String, int, int, int, java.lang.String, java.lang.String, java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ku.a k() {
        return (ku.a) f55014b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String l() {
        String simpleName = GetInStationSubtitleListTask.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final boolean m(String str, int i11, List list) {
        boolean z10 = false;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SubtitleDownloadTable subtitleDownloadTable = (SubtitleDownloadTable) it.next();
                if (TextUtils.equals(str, subtitleDownloadTable.getId()) && i11 == subtitleDownloadTable.getResourceStreamType()) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    private final boolean n(String str, List list) {
        Iterator it = list.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            if (TextUtils.equals(str, ((SubtitleItem) it.next()).getId())) {
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:32:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:33:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:36:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:41:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:44:0x0113  */
    /* JADX WARN: Code duplicated, block: B:45:0x0119  */
    /* JADX WARN: Code duplicated, block: B:47:0x011f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0127  */
    /* JADX WARN: Code duplicated, block: B:53:0x0141  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object o(String str, String str2, String str3, int i11, int i12, int i13, SubtitleItem subtitleItem, boolean z10, String str4, String str5, String str6, Continuation continuation) throws Throwable {
        GetInStationSubtitleListTask$saveAdnDownload$1 getInStationSubtitleListTask$saveAdnDownload$1;
        SubtitleDownloadTable subtitleDownloadTableC;
        boolean z11;
        SubtitleDownloadTable subtitleDownloadTable;
        String string;
        String lanAbbr;
        String upperCase;
        com.transsion.subtitle_download.utils.e eVar;
        Locale locale;
        String upperCase2;
        String lanAbbr2;
        String upperCase3;
        String upperCase4;
        Locale locale2;
        String upperCase5;
        String lanAbbr3;
        String upperCase6;
        if (continuation instanceof GetInStationSubtitleListTask$saveAdnDownload$1) {
            getInStationSubtitleListTask$saveAdnDownload$1 = (GetInStationSubtitleListTask$saveAdnDownload$1) continuation;
            int i14 = getInStationSubtitleListTask$saveAdnDownload$1.label;
            if ((i14 & Integer.MIN_VALUE) != 0) {
                getInStationSubtitleListTask$saveAdnDownload$1.label = i14 - Integer.MIN_VALUE;
            } else {
                getInStationSubtitleListTask$saveAdnDownload$1 = new GetInStationSubtitleListTask$saveAdnDownload$1(this, continuation);
            }
        } else {
            getInStationSubtitleListTask$saveAdnDownload$1 = new GetInStationSubtitleListTask$saveAdnDownload$1(this, continuation);
        }
        Object obj = getInStationSubtitleListTask$saveAdnDownload$1.result;
        Object objF = IntrinsicsKt.f();
        int i15 = getInStationSubtitleListTask$saveAdnDownload$1.label;
        boolean z12 = true;
        if (i15 == 0) {
            ResultKt.b(obj);
            SubtitleDownloadDatabase.Companion dVar = SubtitleDownloadDatabase.INSTANCE;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            mu.a aVarL0 = dVar.b(applicationA).l0();
            String id2 = subtitleItem.getId();
            if (id2 == null) {
                id2 = "";
            }
            subtitleDownloadTableC = aVarL0.c(id2, i11);
            if (subtitleDownloadTableC == null) {
                SubtitleDownloadTable subtitleDownloadTableB = lu.a.f69036a.b(str, str2, str3, i11, i12, i13, subtitleItem, str4, str5, str6);
                subtitleDownloadTableB.setType(1);
                Application applicationA2 = Utils.a();
                Intrinsics.g(applicationA2, "getApp(...)");
                mu.a aVarL1 = dVar.b(applicationA2).l0();
                getInStationSubtitleListTask$saveAdnDownload$1.L$0 = subtitleDownloadTableB;
                getInStationSubtitleListTask$saveAdnDownload$1.Z$0 = z10;
                getInStationSubtitleListTask$saveAdnDownload$1.label = 1;
                if (aVarL1.e(subtitleDownloadTableB, getInStationSubtitleListTask$saveAdnDownload$1) == objF) {
                    return objF;
                }
                subtitleDownloadTable = subtitleDownloadTableB;
                z11 = z10;
            } else {
                z11 = z10;
            }
            string = com.transsion.subtitle_download.utils.d.f55045a.b().getString("k_subtitle_select_lan", null);
            if (string != null && string.length() != 0) {
                locale2 = Locale.ROOT;
                upperCase5 = string.toUpperCase(locale2);
                Intrinsics.g(upperCase5, "toUpperCase(...)");
                lanAbbr3 = subtitleDownloadTableC.getLanAbbr();
                if (lanAbbr3 != null) {
                    upperCase6 = lanAbbr3.toUpperCase(locale2);
                    Intrinsics.g(upperCase6, "toUpperCase(...)");
                } else {
                    upperCase6 = null;
                }
                if (Intrinsics.c(upperCase5, upperCase6)) {
                    p.e(p.f55038a, subtitleDownloadTableC, false, 2, null);
                    return Boxing.a(true);
                }
            }
            lanAbbr = subtitleDownloadTableC.getLanAbbr();
            if (lanAbbr != null) {
                upperCase = lanAbbr.toUpperCase(Locale.ROOT);
                Intrinsics.g(upperCase, "toUpperCase(...)");
            } else {
                upperCase = null;
            }
            eVar = com.transsion.subtitle_download.utils.e.f55047a;
            String strF = eVar.f();
            locale = Locale.ROOT;
            upperCase2 = strF.toUpperCase(locale);
            Intrinsics.g(upperCase2, "toUpperCase(...)");
            if (TextUtils.equals(upperCase, upperCase2)) {
                p.e(p.f55038a, subtitleDownloadTableC, false, 2, null);
            } else {
                lanAbbr2 = subtitleDownloadTableC.getLanAbbr();
                if (lanAbbr2 != null) {
                    upperCase3 = lanAbbr2.toUpperCase(locale);
                    Intrinsics.g(upperCase3, "toUpperCase(...)");
                } else {
                    upperCase3 = null;
                }
                upperCase4 = eVar.e().toUpperCase(locale);
                Intrinsics.g(upperCase4, "toUpperCase(...)");
                if (TextUtils.equals(upperCase3, upperCase4) || !z11) {
                    z12 = false;
                } else {
                    p.e(p.f55038a, subtitleDownloadTableC, false, 2, null);
                }
            }
            return Boxing.a(z12);
        }
        if (i15 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        z11 = getInStationSubtitleListTask$saveAdnDownload$1.Z$0;
        subtitleDownloadTable = (SubtitleDownloadTable) getInStationSubtitleListTask$saveAdnDownload$1.L$0;
        ResultKt.b(obj);
        SubtitleDownloadManager.f54998a.q(subtitleDownloadTable);
        subtitleDownloadTableC = subtitleDownloadTable;
        string = com.transsion.subtitle_download.utils.d.f55045a.b().getString("k_subtitle_select_lan", null);
        if (string != null) {
            locale2 = Locale.ROOT;
            upperCase5 = string.toUpperCase(locale2);
            Intrinsics.g(upperCase5, "toUpperCase(...)");
            lanAbbr3 = subtitleDownloadTableC.getLanAbbr();
            if (lanAbbr3 != null) {
                upperCase6 = lanAbbr3.toUpperCase(locale2);
                Intrinsics.g(upperCase6, "toUpperCase(...)");
            } else {
                upperCase6 = null;
            }
            if (Intrinsics.c(upperCase5, upperCase6)) {
                p.e(p.f55038a, subtitleDownloadTableC, false, 2, null);
                return Boxing.a(true);
            }
        }
        lanAbbr = subtitleDownloadTableC.getLanAbbr();
        if (lanAbbr != null) {
            upperCase = lanAbbr.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
        } else {
            upperCase = null;
        }
        eVar = com.transsion.subtitle_download.utils.e.f55047a;
        String strF2 = eVar.f();
        locale = Locale.ROOT;
        upperCase2 = strF2.toUpperCase(locale);
        Intrinsics.g(upperCase2, "toUpperCase(...)");
        if (TextUtils.equals(upperCase, upperCase2)) {
            p.e(p.f55038a, subtitleDownloadTableC, false, 2, null);
        } else {
            lanAbbr2 = subtitleDownloadTableC.getLanAbbr();
            if (lanAbbr2 != null) {
                upperCase3 = lanAbbr2.toUpperCase(locale);
                Intrinsics.g(upperCase3, "toUpperCase(...)");
            } else {
                upperCase3 = null;
            }
            upperCase4 = eVar.e().toUpperCase(locale);
            Intrinsics.g(upperCase4, "toUpperCase(...)");
            if (TextUtils.equals(upperCase3, upperCase4)) {
                z12 = false;
            } else {
                z12 = false;
            }
        }
        return Boxing.a(z12);
    }

    static /* synthetic */ Object p(GetInStationSubtitleListTask getInStationSubtitleListTask, String str, String str2, String str3, int i11, int i12, int i13, SubtitleItem subtitleItem, boolean z10, String str4, String str5, String str6, Continuation continuation, int i14, Object obj) {
        return getInStationSubtitleListTask.o(str, str2, str3, i11, (i14 & 16) != 0 ? 0 : i12, (i14 & 32) != 0 ? 0 : i13, subtitleItem, (i14 & 128) != 0 ? true : z10, (i14 & 256) != 0 ? null : str4, (i14 & 512) != 0 ? null : str5, (i14 & 1024) != 0 ? null : str6, continuation);
    }

    private final void q(List list) {
        SubtitleItem subtitleItem;
        String upperCase;
        try {
            Result.Companion companion = Result.INSTANCE;
            int i11 = -1;
            if (list != null) {
                int i12 = 0;
                for (Object obj : list) {
                    int i13 = i12 + 1;
                    if (i12 < 0) {
                        CollectionsKt.u();
                    }
                    String lanAbbr = ((SubtitleItem) obj).getLanAbbr();
                    if (lanAbbr != null) {
                        upperCase = lanAbbr.toUpperCase(Locale.ROOT);
                        Intrinsics.g(upperCase, "toUpperCase(...)");
                    } else {
                        upperCase = null;
                    }
                    String upperCase2 = com.transsion.subtitle_download.utils.e.f55047a.f().toUpperCase(Locale.ROOT);
                    Intrinsics.g(upperCase2, "toUpperCase(...)");
                    if (TextUtils.equals(upperCase, upperCase2)) {
                        i11 = i12;
                    }
                    i12 = i13;
                }
            }
            if (i11 > 0 && list != null && (subtitleItem = (SubtitleItem) list.remove(i11)) != null) {
                list.add(0, subtitleItem);
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final void h(SubtitleDownloadTable dbBean) {
        Intrinsics.h(dbBean, "dbBean");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new GetInStationSubtitleListTask$download$2(dbBean, null), 3, null);
    }

    public final void i(String str, String str2, String str3, int i11, int i12, int i13, String str4, String str5, String str6, int i14, Function1 function1) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new GetInStationSubtitleListTask$download$1(i14, str, str4, str3, i11, str2, i12, function1, str5, i13, str6, null), 3, null);
    }

    public final void j(String str, String str2, String videoResourceId, String str3, String str4, String str5, String idType, Function1 function1) {
        Intrinsics.h(videoResourceId, "videoResourceId");
        Intrinsics.h(idType, "idType");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new GetInStationSubtitleListTask$downloadUGCVideo$1(str3, videoResourceId, idType, str, str2, str4, function1, str5, null), 3, null);
    }
}
