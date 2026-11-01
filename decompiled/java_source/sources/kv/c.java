package kv;

import android.os.Build;
import com.transsion.transfer.wifi.bean.PermissionState;
import com.transsion.transfer.wifi.bean.ReportTransferAction;
import com.transsion.transfer.wifi.permission.PermissionsBean;
import com.transsion.transfer.wifi.permission.d;
import com.transsion.transfer.wifi.util.WifiUtils;
import com.transsion.transfer.wifi.util.g;
import hj.i;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f68396a = new c();

    private c() {
    }

    private final String a() {
        String simpleName = c.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final Map b(ReportTransferAction reportTransferAction) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(ReportTransferAction.REPORT_TRANSFER_ACTION.getAction(), reportTransferAction.getAction());
        linkedHashMap.put("is_p2p_supported", String.valueOf(WifiUtils.f55960a.q()));
        linkedHashMap.put("sdk_int", String.valueOf(Build.VERSION.SDK_INT));
        return linkedHashMap;
    }

    private final void c(Map map) {
        i.f64505a.s("wifi_p2p", "transfer", map);
    }

    public final void d() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CONNECT_CANCEL);
        g.f(g.f55970a, a() + " --> reportConnectWifiCancel() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void e(int i11) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CONNECT_FAIL);
        mapB.put("code", String.valueOf(i11));
        g.f(g.f55970a, a() + " --> reportConnectWifiFail() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void f(long j11) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CONNECT_SUCCESS);
        mapB.put("duration", String.valueOf(j11));
        g.f(g.f55970a, a() + " --> reportConnectWifiSuccess() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void g() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CONNECT_TRIGGER);
        g.f(g.f55970a, a() + " --> reportConnectWifiTrigger() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void h() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CREATE_CANCEL);
        g.f(g.f55970a, a() + " --> reportCreateWifiP2PCancel() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void i(int i11) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CREATE_FAIL);
        mapB.put("code", String.valueOf(i11));
        g.f(g.f55970a, a() + " --> reportCreateWifiP2PFail() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void j(long j11, long j12) {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CREATE_SUCCESS);
        mapB.put("duration", String.valueOf(j11));
        mapB.put("qr_duration", String.valueOf(j12));
        g.f(g.f55970a, a() + " --> reportCreateWifiP2PSuccess() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void k() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_CREATE_TRIGGER);
        g.f(g.f55970a, a() + " --> reportCreateWifiP2PTrigger() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void l(String str, String permissions, PermissionState permissionsState) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(permissionsState, "permissionsState");
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_PERMISSION_REQUEST);
        mapB.put("user_role", Intrinsics.c(str, "com.transsion.transfer.wifi.util.send") ? "sender" : "receiver");
        mapB.put("permissions", permissions);
        mapB.put("state", permissionsState.getState());
    }

    public final void m(String str) {
        String str2;
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_PERMISSION_PAGE_PV);
        if (Intrinsics.c(str, "com.transsion.transfer.wifi.util.send")) {
            for (PermissionsBean permissionsBean : d.f55906a.e()) {
                mapB.put(permissionsBean.getPermission(), permissionsBean.getState().getState());
            }
            str2 = "sender";
        } else {
            for (PermissionsBean permissionsBean2 : d.f55906a.c()) {
                mapB.put(permissionsBean2.getPermission(), permissionsBean2.getState().getState());
            }
            str2 = "receiver";
        }
        mapB.put("user_role", str2);
        g.f(g.f55970a, a() + " --> reportPermission() --> map = " + mapB, false, 2, null);
        c(mapB);
    }

    public final void n() {
        Map mapB = b(ReportTransferAction.REPORT_TRANSFER_ACTION_SHARE_APK_DIALOG);
        g.f(g.f55970a, a() + " --> reportShareApkDialogShow() --> map = " + mapB, false, 2, null);
        c(mapB);
    }
}
