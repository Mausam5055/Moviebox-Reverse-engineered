package com.vungle.ads;

/* JADX INFO: loaded from: classes7.dex */
public interface a {

    /* JADX INFO: renamed from: com.vungle.ads.a$a, reason: collision with other inner class name */
    public static final class C0700a {
        public static /* synthetic */ void load$default(a aVar, String str, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: load");
            }
            if ((i11 & 1) != 0) {
                str = null;
            }
            aVar.load(str);
        }
    }

    Boolean canPlayAd();

    void load(String str);
}
