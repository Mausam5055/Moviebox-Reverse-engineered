package com.cloud.tmc.miniapp.bluetooth.listener;

import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanResult;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class OooOO0 extends ScanCallback {
    public final OooO00o OooO00o;

    public interface OooO00o {
        void OooO00o(int i11);

        void OooO00o(int i11, ScanResult scanResult);

        void OooO00o(List<ScanResult> list);
    }

    public OooOO0(OooO00o oooO00o) {
        this.OooO00o = oooO00o;
    }

    @Override // android.bluetooth.le.ScanCallback
    public void onBatchScanResults(List<ScanResult> list) {
        super.onBatchScanResults(list);
        OooO00o oooO00o = this.OooO00o;
        if (oooO00o != null) {
            oooO00o.OooO00o(list);
        }
    }

    @Override // android.bluetooth.le.ScanCallback
    public void onScanFailed(int i11) {
        super.onScanFailed(i11);
        OooO00o oooO00o = this.OooO00o;
        if (oooO00o != null) {
            oooO00o.OooO00o(i11);
        }
    }

    @Override // android.bluetooth.le.ScanCallback
    public void onScanResult(int i11, ScanResult scanResult) {
        super.onScanResult(i11, scanResult);
        OooO00o oooO00o = this.OooO00o;
        if (oooO00o != null) {
            oooO00o.OooO00o(i11, scanResult);
        }
    }
}
