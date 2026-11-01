package kv;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.transfer.impl.l;
import com.transsion.transfer.wifi.bean.ReportTransferAction;
import com.transsion.transfer.wifi.util.g;
import hj.i;
import java.util.LinkedHashMap;
import java.util.Map;
import jv.d;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f68395a = new b();

    private b() {
    }

    private final String a() {
        String simpleName = b.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final Map b(ReportTransferAction reportTransferAction) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(ReportTransferAction.REPORT_TRANSFER_ACTION.getAction(), reportTransferAction.getAction());
        return linkedHashMap;
    }

    private final void c(Map map) {
        i.f64505a.D("transfer_status", map);
    }

    public final void d(String error, String str) {
        Intrinsics.h(error, "error");
        Map mapB = b(ReportTransferAction.xREPORT_TRANSFER_ACTION_CLIENT_CONNECT_FAILED);
        mapB.put("error", error);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f55970a, a() + " --> reportClientConnectFailed() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void e(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_CONNECT_SUCCESS);
        g.f(g.f55970a, a() + " --> reportClientConnectSuccess() --> map = " + mapB, false, 2, null);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        c(mapB);
    }

    public final void f(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_DISCONNECT_BY_USER);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f55970a, a() + " --> reportServerReceiveDisconnectClick() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void g(String remoteFilePath, boolean z10, String str, long j11, long j12, String str2) {
        Object objM454constructorimpl;
        Intrinsics.h(remoteFilePath, "remoteFilePath");
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_DOWNLOAD_FILE_END);
        mapB.put("task_id", d.b(remoteFilePath));
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(StringsKt.c1(jv.a.a(remoteFilePath), '.', ""));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = "";
        }
        mapB.put("file_type", objM454constructorimpl);
        mapB.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, String.valueOf(z10));
        if (str == null) {
            str = "";
        }
        mapB.put("error", str);
        mapB.put("file_size", String.valueOf(j11));
        mapB.put("time_cost", String.valueOf(j12));
        if (str2 == null) {
            str2 = "";
        }
        mapB.put("transfer_id", str2);
        g.f(g.f55970a, a() + " --> reportClientDownloadFileEnd() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void h(String path, long j11, String str) {
        Intrinsics.h(path, "path");
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_DOWNLOAD_FILE_START);
        mapB.put("task_id", d.b(path));
        mapB.put("file_size", String.valueOf(j11));
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f55970a, a() + " --> reportClientDownloadFileStart() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void i(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_FETCH_FILES_START);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f55970a, a() + " --> reportClientFetchFilesStart() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void j(String str, String str2) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_DISCONNECT);
        if (str == null) {
            str = "";
        }
        mapB.put(NativeComponentConstants.KEY_COMPONENT_TYPE, str);
        if (str2 == null) {
            str2 = "";
        }
        mapB.put("transfer_id", str2);
        g.f(g.f55970a, a() + " --> reportClientReceiveDisconnect() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void k(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_RECEIVE_FILE_CMD);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f55970a, a() + " --> reportClientReceiveServerUpdateFileList() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void l(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_SEND_FILE_NOTIFY);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f55970a, a() + " --> reportClientSendFileNotify() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void m(int i11, String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_NOTIFY_FINISH);
        mapB.put("file_list_size", String.valueOf(i11));
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f55970a, a() + " --> reportClientServerFilesFinish() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void n(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CLIENT_CONNECT_START);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        g.f(g.f55970a, a() + " --> reportClientStartConnect() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void o(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_CONNECT_SUCCESS);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f55769a.a());
        g.f(g.f55970a, a() + " --> reportServerConnectSuccess() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void p(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_DISCONNECT_BY_USER);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f55769a.a());
        g.f(g.f55970a, a() + " --> reportServerReceiveDisconnectClick() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void q(int i11, String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_FETCH_FILES_HANDLE);
        mapB.put("file_list_size", String.valueOf(i11));
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f55769a.a());
        g.f(g.f55970a, a() + " --> reportServerHandleFetchFiles() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void r() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_OPEN);
        g.f(g.f55970a, a() + " --> reportServerOpen() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void s(String str, String str2) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_DISCONNECT);
        if (str == null) {
            str = "";
        }
        mapB.put(NativeComponentConstants.KEY_COMPONENT_TYPE, str);
        if (str2 == null) {
            str2 = "";
        }
        mapB.put("transfer_id", str2);
        mapB.put("transfer_channel_info", l.f55769a.a());
        g.f(g.f55970a, a() + " --> reportServerReceiveDisconnect() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void t(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_RECEIVE_FILE_READY);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f55769a.a());
        g.f(g.f55970a, a() + " --> reportServerReceiveFile() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void u(String str) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SERVER_SEND_FILE_CMD);
        if (str == null) {
            str = "";
        }
        mapB.put("transfer_id", str);
        mapB.put("transfer_channel_info", l.f55769a.a());
        g.f(g.f55970a, a() + " --> reportServerSendFileClick() --> map = " + mapB, false, 2, null);
        c(mapB);
    }
}
