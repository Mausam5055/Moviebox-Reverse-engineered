package com.google.android.exoplayer2.metadata;

import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
public interface c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f25417a = new a();

    class a implements c {
        a() {
        }

        @Override // com.google.android.exoplayer2.metadata.c
        public boolean a(o1 o1Var) {
            String str = o1Var.f25496l;
            return MimeTypes.APPLICATION_ID3.equals(str) || MimeTypes.APPLICATION_EMSG.equals(str) || MimeTypes.APPLICATION_SCTE35.equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str);
        }

        @Override // com.google.android.exoplayer2.metadata.c
        public b b(o1 o1Var) {
            String str = o1Var.f25496l;
            if (str != null) {
                switch (str) {
                    case "application/vnd.dvb.ait":
                        return new s9.a();
                    case "application/x-icy":
                        return new com.google.android.exoplayer2.metadata.icy.a();
                    case "application/id3":
                        return new com.google.android.exoplayer2.metadata.id3.b();
                    case "application/x-emsg":
                        return new com.google.android.exoplayer2.metadata.emsg.a();
                    case "application/x-scte35":
                        return new com.google.android.exoplayer2.metadata.scte35.a();
                }
            }
            throw new IllegalArgumentException("Attempted to create decoder for unsupported MIME type: " + str);
        }
    }

    boolean a(o1 o1Var);

    b b(o1 o1Var);
}
