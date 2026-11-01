package ss;

import com.cloud.tmc.integration.event.EventConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.shorttv.bean.Subject;
import com.transsion.web.api.WebConstants;
import hj.i;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f75858a = new b();

    private b() {
    }

    public static /* synthetic */ void b(b bVar, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str4 = "minitv_play";
        }
        bVar.a(str, str2, str3, str4);
    }

    public static /* synthetic */ void g(b bVar, String str, String str2, String str3, boolean z10, String str4, String str5, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            str4 = "minitv_play";
        }
        String str6 = str4;
        if ((i11 & 32) != 0) {
            str5 = null;
        }
        bVar.f(str, str2, str3, z10, str6, str5);
    }

    public static /* synthetic */ void n(b bVar, String str, String str2, Integer num, String str3, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str3 = "minitv_play";
        }
        bVar.m(str, str2, num, str3);
    }

    public final void a(String str, String str2, String dialogName, String pageName) {
        Intrinsics.h(dialogName, "dialogName");
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        map.put("dialog_name", dialogName);
        i.f64505a.s(pageName, "dialog_show", map);
    }

    public final void c(Subject subject, int i11, boolean z10, boolean z11, String unlockWay) {
        String subjectId;
        Intrinsics.h(unlockWay, "unlockWay");
        HashMap map = new HashMap();
        map.put("page_name", "minitv_play");
        map.put("from", "minitv_sdk");
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("ep_num", String.valueOf(i11));
        map.put("minitv_type", (subject == null || subject.getMiniTvType() != 2) ? "short" : "long");
        map.put("is_free", String.valueOf(z10));
        map.put("is_unlock", String.valueOf(z11));
        map.put("unlock_way", unlockWay);
        map.put("opt_type", "minitv_download");
        i.f64505a.p("minitv_play", map);
    }

    public final void d(Subject subject, int i11, String optType) {
        String subjectId;
        Intrinsics.h(optType, "optType");
        HashMap map = new HashMap();
        map.put("page_name", "minitv_download");
        map.put("from", "minitv_sdk");
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("ep_num", String.valueOf(i11));
        map.put("minitv_type", (subject == null || subject.getMiniTvType() != 2) ? "short" : "long");
        map.put("opt_type", optType);
        i.f64505a.p("minitv_download", map);
    }

    public final void e(Subject subject, int i11) {
        String subjectId;
        HashMap map = new HashMap();
        map.put("page_name", "minitv_download");
        map.put("from", "minitv_sdk");
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("ep_num", String.valueOf(i11));
        map.put("minitv_type", (subject == null || subject.getMiniTvType() != 2) ? "short" : "long");
        map.put("dialog_name", "dialog_minitv_download");
        i.f64505a.s("minitv_download", "dialog_show", map);
    }

    public final void f(String str, String str2, String optType, boolean z10, String pageName, String str3) {
        Intrinsics.h(optType, "optType");
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("module_name", "favorite");
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        map.put("opt_type", optType);
        map.put("favorite", String.valueOf(!z10));
        if (str3 != null && str3.length() != 0) {
            map.put(WebConstants.PAGE_FROM, str3);
        }
        i.f64505a.p(pageName, map);
    }

    public final void h(Subject subject, int i11, String optType, String adUnlockType) {
        String subjectId;
        Intrinsics.h(optType, "optType");
        Intrinsics.h(adUnlockType, "adUnlockType");
        HashMap map = new HashMap();
        map.put("page_name", "minitv_lock");
        map.put("from", "minitv_sdk");
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("ep_num", String.valueOf(i11));
        map.put("minitv_type", (subject == null || subject.getMiniTvType() != 2) ? "short" : "long");
        map.put("opt_type", optType);
        map.put("ad_unlock_type", adUnlockType);
        i.f64505a.p("minitv_lock", map);
    }

    public final void i(Subject subject, int i11) {
        String subjectId;
        List listL;
        HashMap map = new HashMap();
        map.put("page_name", "minitv_lock");
        map.put("from", "minitv_sdk");
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("ep_num", String.valueOf(i11));
        map.put("minitv_type", (subject == null || subject.getMiniTvType() != 2) ? "short" : "long");
        if (subject == null || (listL = subject.getUnlockType()) == null) {
            listL = CollectionsKt.l();
        }
        if (subject == null || subject.getMiniTvType() != 2) {
            map.put("minitv_pay", listL.contains(1) ? "1" : "0");
            map.put("minitv_ad", listL.contains(2) ? "1" : "0");
        } else {
            map.put("minitv_pay", listL.contains(1) ? "1" : "0");
            map.put("minitv_ad", (listL.contains(1) || !listL.contains(2)) ? "0" : "1");
        }
        i.f64505a.s("minitv_lock", "pt", map);
    }

    public final void j(Subject subject, int i11, String unlockResult, String errorMessage, String errorCode, String source) {
        String subjectId;
        Intrinsics.h(unlockResult, "unlockResult");
        Intrinsics.h(errorMessage, "errorMessage");
        Intrinsics.h(errorCode, "errorCode");
        Intrinsics.h(source, "source");
        HashMap map = new HashMap();
        map.put("page_name", "minitv_play");
        map.put("from", "minitv_sdk");
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("ep_num", String.valueOf(i11));
        map.put("minitv_type", (subject == null || subject.getMiniTvType() != 2) ? "short" : "long");
        map.put("unlock_result", unlockResult);
        map.put(TrackingKey.ERROR_MESSAGE, errorMessage);
        map.put("error_code", errorCode);
        map.put(EventConstants.KEY_SOURCE, source);
        i.f64505a.s("minitv_play", "minitv_pay", map);
    }

    public final void k(Subject subject, int i11, boolean z10, boolean z11, String unlockWay) {
        String subjectId;
        Intrinsics.h(unlockWay, "unlockWay");
        HashMap map = new HashMap();
        map.put("page_name", "minitv_play");
        map.put("from", "minitv_sdk");
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("ep_num", String.valueOf(i11));
        map.put("minitv_type", (subject == null || subject.getMiniTvType() != 2) ? "short" : "long");
        map.put("is_free", String.valueOf(z10));
        map.put("is_unlock", String.valueOf(z11));
        map.put("unlock_way", unlockWay);
        i.f64505a.s("minitv_play", "minitv_play", map);
    }

    public final void l(Subject subject, int i11, String unlockResult, String errorMessage, String errorCode, String source) {
        String subjectId;
        Intrinsics.h(unlockResult, "unlockResult");
        Intrinsics.h(errorMessage, "errorMessage");
        Intrinsics.h(errorCode, "errorCode");
        Intrinsics.h(source, "source");
        HashMap map = new HashMap();
        map.put("page_name", "minitv_play");
        map.put("from", "minitv_sdk");
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("ep_num", String.valueOf(i11));
        map.put("minitv_type", (subject == null || subject.getMiniTvType() != 2) ? "short" : "long");
        map.put("unlock_result", unlockResult);
        map.put(TrackingKey.ERROR_MESSAGE, errorMessage);
        map.put("error_code", errorCode);
        map.put(EventConstants.KEY_SOURCE, source);
        i.f64505a.s("minitv_play", "minitv_unlock", map);
    }

    public final void m(String str, String str2, Integer num, String pageName) {
        String string;
        Intrinsics.h(pageName, "pageName");
        HashMap map = new HashMap();
        map.put("module_name", "share");
        String str3 = "";
        if (str == null) {
            str = "";
        }
        map.put("subject_id", str);
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        if (num != null && (string = num.toString()) != null) {
            str3 = string;
        }
        map.put("ep", str3);
        i.f64505a.p(pageName, map);
    }
}
