package com.bytedance.sdk.openadsdk.EjP.Sj;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class HiB implements com.bytedance.sdk.openadsdk.multipro.Sj {
    private final com.bytedance.sdk.component.vS.Sj.sP.sP.sP Sj;

    public HiB(com.bytedance.sdk.component.vS.Sj.sP.sP.sP sPVar) {
        this.Sj = sPVar;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        com.bytedance.sdk.component.vS.Sj.sP.sP.sP sPVar = this.Sj;
        if (sPVar != null) {
            return sPVar.Sj(uri, contentValues, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public int Sj(Uri uri, String str, String[] strArr) {
        com.bytedance.sdk.component.vS.Sj.sP.sP.sP sPVar = this.Sj;
        if (sPVar != null) {
            return sPVar.Sj(uri, str, strArr);
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Cursor Sj(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        com.bytedance.sdk.component.vS.Sj.sP.sP.sP sPVar = this.Sj;
        if (sPVar != null) {
            return sPVar.Sj(uri, strArr, str, strArr2, str2);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public Uri Sj(Uri uri, ContentValues contentValues) {
        com.bytedance.sdk.component.vS.Sj.sP.sP.sP sPVar = this.Sj;
        if (sPVar != null) {
            return sPVar.Sj(uri, contentValues);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public String Sj() {
        com.bytedance.sdk.component.vS.Sj.sP.sP.sP sPVar = this.Sj;
        if (sPVar != null) {
            return sPVar.TKC();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.Sj
    public String Sj(Uri uri) {
        com.bytedance.sdk.component.vS.Sj.sP.sP.sP sPVar = this.Sj;
        if (sPVar != null) {
            return sPVar.Sj(uri);
        }
        return null;
    }
}
