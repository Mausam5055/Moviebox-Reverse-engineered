package com.mbridge.msdk.out;

/* JADX INFO: loaded from: classes5.dex */
public interface IDownloadListener {
    void onEnd(int i11, int i12, String str);

    void onProgressUpdate(int i11);

    void onStart();

    void onStatus(int i11);
}
