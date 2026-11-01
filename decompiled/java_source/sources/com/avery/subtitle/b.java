package com.avery.subtitle;

/* JADX INFO: loaded from: classes2.dex */
public interface b {

    public interface a {
        void onSubtitleChanged(k5.b bVar);
    }

    /* JADX INFO: renamed from: com.avery.subtitle.b$b, reason: collision with other inner class name */
    public interface InterfaceC0182b {
        void onRefreshSubtitle();

        void onSubtitlePrepared();
    }

    void destroy();

    void initSubtitle(i5.a aVar, boolean z10);

    void pause();

    void refreshImmediately();

    void reset();

    void resume();

    void selectSubtitle(String str, String str2, i5.b bVar);

    void setDefaultSubtitle(String str);

    void setOnSubtitleChangeListener(a aVar);

    void setOnSubtitlePreparedListener(InterfaceC0182b interfaceC0182b);

    void setSubtitlePath(String str, String str2);

    void start();

    void stop();

    void subtitleDelay(long j11);
}
