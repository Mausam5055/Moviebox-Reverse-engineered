package com.google.android.exoplayer2.util;

/* JADX INFO: loaded from: classes3.dex */
public interface o {

    public interface a {
        void a();
    }

    boolean a(int i11);

    boolean b(a aVar);

    a obtainMessage(int i11);

    a obtainMessage(int i11, int i12, int i13);

    a obtainMessage(int i11, int i12, int i13, Object obj);

    a obtainMessage(int i11, Object obj);

    boolean post(Runnable runnable);

    void removeCallbacksAndMessages(Object obj);

    void removeMessages(int i11);

    boolean sendEmptyMessage(int i11);

    boolean sendEmptyMessageAtTime(int i11, long j11);
}
