package com.mbridge.msdk.thrid.okhttp.internal.http2;

import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f38216a = new a();

    static class a implements l {
        a() {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.l
        public void a(int i11, b bVar) {
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.l
        public boolean a(int i11, com.mbridge.msdk.thrid.okio.e eVar, int i12, boolean z10) throws IOException {
            eVar.skip(i12);
            return true;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.l
        public boolean a(int i11, List<c> list) {
            return true;
        }

        @Override // com.mbridge.msdk.thrid.okhttp.internal.http2.l
        public boolean a(int i11, List<c> list, boolean z10) {
            return true;
        }
    }

    void a(int i11, b bVar);

    boolean a(int i11, com.mbridge.msdk.thrid.okio.e eVar, int i12, boolean z10) throws IOException;

    boolean a(int i11, List<c> list);

    boolean a(int i11, List<c> list, boolean z10);
}
