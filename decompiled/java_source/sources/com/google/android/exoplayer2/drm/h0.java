package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.media.metrics.LogSessionId;
import android.text.TextUtils;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import e9.u1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class h0 implements c0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c0.c f24984d = new c0.c() { // from class: com.google.android.exoplayer2.drm.e0
        @Override // com.google.android.exoplayer2.drm.c0.c
        public final c0 a(UUID uuid) {
            return h0.s(uuid);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final UUID f24985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediaDrm f24986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f24987c;

    private static class a {
        public static boolean a(MediaDrm mediaDrm, String str) {
            return mediaDrm.requiresSecureDecoder(str);
        }

        public static void b(MediaDrm mediaDrm, byte[] bArr, u1 u1Var) {
            LogSessionId logSessionIdA = u1Var.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            androidx.media3.exoplayer.drm.h0.a(com.google.android.exoplayer2.util.a.e(mediaDrm.getPlaybackComponent(bArr))).setLogSessionId(logSessionIdA);
        }
    }

    private h0(UUID uuid) {
        com.google.android.exoplayer2.util.a.e(uuid);
        com.google.android.exoplayer2.util.a.b(!com.google.android.exoplayer2.l.f25187b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f24985a = uuid;
        MediaDrm mediaDrm = new MediaDrm(m(uuid));
        this.f24986b = mediaDrm;
        this.f24987c = 1;
        if (com.google.android.exoplayer2.l.f25189d.equals(uuid) && t()) {
            o(mediaDrm);
        }
    }

    private static byte[] i(byte[] bArr) {
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(bArr);
        int iQ = d0Var.q();
        short s11 = d0Var.s();
        short s12 = d0Var.s();
        if (s11 != 1 || s12 != 1) {
            com.google.android.exoplayer2.util.s.f("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
            return bArr;
        }
        short s13 = d0Var.s();
        Charset charset = com.google.common.base.c.f30230e;
        String strB = d0Var.B(s13, charset);
        if (strB.contains("<LA_URL>")) {
            return bArr;
        }
        int iIndexOf = strB.indexOf("</DATA>");
        if (iIndexOf == -1) {
            com.google.android.exoplayer2.util.s.i("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
        }
        String str = strB.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strB.substring(iIndexOf);
        int i11 = iQ + 52;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i11);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(i11);
        byteBufferAllocate.putShort(s11);
        byteBufferAllocate.putShort(s12);
        byteBufferAllocate.putShort((short) (str.length() * 2));
        byteBufferAllocate.put(str.getBytes(charset));
        return byteBufferAllocate.array();
    }

    private static byte[] j(UUID uuid, byte[] bArr) {
        return com.google.android.exoplayer2.l.f25188c.equals(uuid) ? com.google.android.exoplayer2.drm.a.a(bArr) : bArr;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e A[RETURN] */
    private static byte[] k(UUID uuid, byte[] bArr) {
        byte[] bArrE;
        UUID uuid2 = com.google.android.exoplayer2.l.f25190e;
        if (uuid2.equals(uuid)) {
            byte[] bArrE2 = o9.l.e(bArr, uuid);
            if (bArrE2 != null) {
                bArr = bArrE2;
            }
            bArr = o9.l.a(uuid2, i(bArr));
        }
        if (p0.f27626a < 23 && com.google.android.exoplayer2.l.f25189d.equals(uuid)) {
            bArrE = o9.l.e(bArr, uuid);
            if (bArrE != null) {
                return bArrE;
            }
        } else if (uuid2.equals(uuid) && "Amazon".equals(p0.f27628c)) {
            String str = p0.f27629d;
            if ("AFTB".equals(str) || "AFTS".equals(str) || "AFTM".equals(str) || "AFTT".equals(str)) {
                bArrE = o9.l.e(bArr, uuid);
                if (bArrE != null) {
                    return bArrE;
                }
            }
        }
        return bArr;
    }

    private static String l(UUID uuid, String str) {
        return (p0.f27626a < 26 && com.google.android.exoplayer2.l.f25188c.equals(uuid) && (MimeTypes.VIDEO_MP4.equals(str) || MimeTypes.AUDIO_MP4.equals(str))) ? C.CENC_TYPE_cenc : str;
    }

    private static UUID m(UUID uuid) {
        return (p0.f27626a >= 27 || !com.google.android.exoplayer2.l.f25188c.equals(uuid)) ? uuid : com.google.android.exoplayer2.l.f25187b;
    }

    private static void o(MediaDrm mediaDrm) {
        mediaDrm.setPropertyString("securityLevel", "L3");
    }

    private static DrmInitData.SchemeData q(UUID uuid, List list) {
        if (!com.google.android.exoplayer2.l.f25189d.equals(uuid)) {
            return (DrmInitData.SchemeData) list.get(0);
        }
        if (p0.f27626a >= 28 && list.size() > 1) {
            DrmInitData.SchemeData schemeData = (DrmInitData.SchemeData) list.get(0);
            int i11 = 0;
            int length = 0;
            while (true) {
                if (i11 >= list.size()) {
                    byte[] bArr = new byte[length];
                    int i12 = 0;
                    for (int i13 = 0; i13 < list.size(); i13++) {
                        byte[] bArr2 = (byte[]) com.google.android.exoplayer2.util.a.e(((DrmInitData.SchemeData) list.get(i13)).data);
                        int length2 = bArr2.length;
                        System.arraycopy(bArr2, 0, bArr, i12, length2);
                        i12 += length2;
                    }
                    return schemeData.copyWithData(bArr);
                }
                DrmInitData.SchemeData schemeData2 = (DrmInitData.SchemeData) list.get(i11);
                byte[] bArr3 = (byte[]) com.google.android.exoplayer2.util.a.e(schemeData2.data);
                if (!p0.c(schemeData2.mimeType, schemeData.mimeType) || !p0.c(schemeData2.licenseServerUrl, schemeData.licenseServerUrl) || !o9.l.c(bArr3)) {
                    break;
                }
                length += bArr3.length;
                i11++;
            }
        }
        for (int i14 = 0; i14 < list.size(); i14++) {
            DrmInitData.SchemeData schemeData3 = (DrmInitData.SchemeData) list.get(i14);
            int iG = o9.l.g((byte[]) com.google.android.exoplayer2.util.a.e(schemeData3.data));
            int i15 = p0.f27626a;
            if (i15 < 23 && iG == 0) {
                return schemeData3;
            }
            if (i15 >= 23 && iG == 1) {
                return schemeData3;
            }
        }
        return (DrmInitData.SchemeData) list.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(c0.b bVar, MediaDrm mediaDrm, byte[] bArr, int i11, int i12, byte[] bArr2) {
        bVar.a(this, bArr, i11, i12, bArr2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c0 s(UUID uuid) {
        try {
            return u(uuid);
        } catch (UnsupportedDrmException unused) {
            com.google.android.exoplayer2.util.s.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new z();
        }
    }

    private static boolean t() {
        return "ASUS_Z00AD".equals(p0.f27629d);
    }

    public static h0 u(UUID uuid) throws UnsupportedDrmException {
        try {
            return new h0(uuid);
        } catch (UnsupportedSchemeException e11) {
            throw new UnsupportedDrmException(1, e11);
        } catch (Exception e12) {
            throw new UnsupportedDrmException(2, e12);
        }
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public int a() {
        return 2;
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public boolean c(byte[] bArr, String str) {
        if (p0.f27626a >= 31) {
            return a.a(this.f24986b, str);
        }
        try {
            MediaCrypto mediaCrypto = new MediaCrypto(this.f24985a, bArr);
            try {
                return mediaCrypto.requiresSecureDecoderComponent(str);
            } finally {
                mediaCrypto.release();
            }
        } catch (MediaCryptoException unused) {
            return true;
        }
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void closeSession(byte[] bArr) {
        this.f24986b.closeSession(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public c0.a d(byte[] bArr, List list, int i11, HashMap map) throws NotProvisionedException {
        DrmInitData.SchemeData schemeDataQ;
        byte[] bArrK;
        String strL;
        if (list != null) {
            schemeDataQ = q(this.f24985a, list);
            bArrK = k(this.f24985a, (byte[]) com.google.android.exoplayer2.util.a.e(schemeDataQ.data));
            strL = l(this.f24985a, schemeDataQ.mimeType);
        } else {
            schemeDataQ = null;
            bArrK = null;
            strL = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f24986b.getKeyRequest(bArr, bArrK, strL, i11, map);
        byte[] bArrJ = j(this.f24985a, keyRequest.getData());
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("https://x".equals(defaultUrl)) {
            defaultUrl = "";
        }
        if (TextUtils.isEmpty(defaultUrl) && schemeDataQ != null && !TextUtils.isEmpty(schemeDataQ.licenseServerUrl)) {
            defaultUrl = schemeDataQ.licenseServerUrl;
        }
        return new c0.a(bArrJ, defaultUrl, p0.f27626a >= 23 ? keyRequest.getRequestType() : Integer.MIN_VALUE);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void e(final c0.b bVar) {
        this.f24986b.setOnEventListener(bVar == null ? null : new MediaDrm.OnEventListener() { // from class: com.google.android.exoplayer2.drm.f0
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i11, int i12, byte[] bArr2) {
                this.f24979a.r(bVar, mediaDrm, bArr, i11, i12, bArr2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void f(byte[] bArr, u1 u1Var) {
        if (p0.f27626a >= 31) {
            try {
                a.b(this.f24986b, bArr, u1Var);
            } catch (UnsupportedOperationException unused) {
                com.google.android.exoplayer2.util.s.i("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public c0.d getProvisionRequest() {
        MediaDrm.ProvisionRequest provisionRequest = this.f24986b.getProvisionRequest();
        return new c0.d(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // com.google.android.exoplayer2.drm.c0
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public d0 b(byte[] bArr) {
        return new d0(m(this.f24985a), bArr, p0.f27626a < 21 && com.google.android.exoplayer2.l.f25189d.equals(this.f24985a) && "L3".equals(p("securityLevel")));
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public byte[] openSession() {
        return this.f24986b.openSession();
    }

    public String p(String str) {
        return this.f24986b.getPropertyString(str);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        if (com.google.android.exoplayer2.l.f25188c.equals(this.f24985a)) {
            bArr2 = com.google.android.exoplayer2.drm.a.b(bArr2);
        }
        return this.f24986b.provideKeyResponse(bArr, bArr2);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void provideProvisionResponse(byte[] bArr) throws DeniedByServerException {
        this.f24986b.provideProvisionResponse(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public Map queryKeyStatus(byte[] bArr) {
        return this.f24986b.queryKeyStatus(bArr);
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public synchronized void release() {
        int i11 = this.f24987c - 1;
        this.f24987c = i11;
        if (i11 == 0) {
            this.f24986b.release();
        }
    }

    @Override // com.google.android.exoplayer2.drm.c0
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        this.f24986b.restoreKeys(bArr, bArr2);
    }
}
