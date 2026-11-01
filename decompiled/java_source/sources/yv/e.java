package yv;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import bw.g;
import bw.l;
import bw.n;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e implements UpgradeDialogCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f79065a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f79066b;

    public e(f fVar, boolean z10) {
        this.f79065a = fVar;
        this.f79066b = z10;
    }

    @Override // com.transsion.upgradesdk.manager.UpgradeDialogCallback
    public final void onDialogClick(int i11) {
        String str;
        String msg = "自定义弹窗按钮点击: " + i11;
        Intrinsics.h("UpgradeSdkManager", "tag");
        Intrinsics.h(msg, "msg");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!g.f16939a && jCurrentTimeMillis - g.f16940b >= 5000) {
            g.f16940b = jCurrentTimeMillis;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f16939a = true;
            }
            boolean z10 = g.f16939a;
        }
        boolean z11 = f.f79067o.a().f79072d;
        UpgradeData upgradeData = this.f79065a.f79070b;
        int i12 = (upgradeData == null || !upgradeData.isForceUpdate()) ? 1 : 2;
        f fVar = this.f79065a;
        boolean z12 = this.f79066b;
        fVar.getClass();
        if (i11 == 1) {
            UpgradeData upgradeData2 = fVar.f79070b;
            if (upgradeData2 != null && fVar.f79071c) {
                n.c(upgradeData2.getPkg(), upgradeData2.getDirectDwl(), upgradeData2.getHoverBtn(), com.transsion.upgradesdk.manager.f.f56593a);
            }
            str = "update";
        } else if (i11 == 2) {
            str = "exitapp";
        } else if (i11 != 3) {
            str = i11 != 4 ? "back_exit" : "back";
        } else {
            str = "later";
        }
        l.e(i12, z12, str, com.transsion.upgradesdk.bean.c.CUSTOM);
    }

    @Override // com.transsion.upgradesdk.manager.UpgradeDialogCallback
    public final void onDialogDismiss() {
        long jA = vv.d.a("UpgradeSdkManager", "tag", "自定义弹窗关闭", NotificationCompat.CATEGORY_MESSAGE);
        int i11 = 1;
        if (!g.f16939a && jA - g.f16940b >= 5000) {
            g.f16940b = jA;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f16939a = true;
            }
            boolean z10 = g.f16939a;
        }
        boolean z11 = f.f79067o.a().f79072d;
        UpgradeData upgradeData = this.f79065a.f79070b;
        if (upgradeData != null && upgradeData.isForceUpdate()) {
            i11 = 2;
        }
        l.e(i11, this.f79066b, "dismiss", com.transsion.upgradesdk.bean.c.CUSTOM);
    }

    @Override // com.transsion.upgradesdk.manager.UpgradeDialogCallback
    public final void onDialogShow() {
        long jA = vv.d.a("UpgradeSdkManager", "tag", "自定义弹窗显示", NotificationCompat.CATEGORY_MESSAGE);
        int i11 = 1;
        if (!g.f16939a && jA - g.f16940b >= 5000) {
            g.f16940b = jA;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f16939a = true;
            }
            boolean z10 = g.f16939a;
        }
        boolean z11 = f.f79067o.a().f79072d;
        UpgradeData upgradeData = this.f79065a.f79070b;
        if (upgradeData != null && upgradeData.isForceUpdate()) {
            i11 = 2;
        }
        l.d(i11, this.f79066b, com.transsion.upgradesdk.bean.c.CUSTOM);
    }
}
