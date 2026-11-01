package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes.dex */
public abstract class ClientInfo {

    /* JADX INFO: loaded from: classes3.dex */
    public enum ClientType {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);

        private final int value;

        ClientType(int i11) {
            this.value = i11;
        }
    }

    /* JADX INFO: loaded from: classes3.dex */
    public static abstract class a {
        public abstract ClientInfo a();

        public abstract a b(com.google.android.datatransport.cct.internal.a aVar);

        public abstract a c(ClientType clientType);
    }

    public static a a() {
        return new e.b();
    }

    public abstract com.google.android.datatransport.cct.internal.a b();

    public abstract ClientType c();
}
