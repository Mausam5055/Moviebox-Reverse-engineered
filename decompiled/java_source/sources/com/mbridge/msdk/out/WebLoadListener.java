package com.mbridge.msdk.out;

/* JADX INFO: loaded from: classes5.dex */
public interface WebLoadListener {
    void onFailed(String str, int i11, int i12, int i13, String str2, String str3);

    void onProgress(String str, int i11, int i12, int i13, String str2, String str3);

    void onSucess(String str, int i11, int i12, int i13, String str2, String str3);
}
