package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.util.a1;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MediaCodecUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashMap f12174a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f12175b = -1;

    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th2) {
            super("Failed to query underlying media codecs", th2);
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f12176a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f12177b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f12178c;

        public b(String str, boolean z10, boolean z11) {
            this.f12176a = str;
            this.f12177b = z10;
            this.f12178c = z11;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != b.class) {
                return false;
            }
            b bVar = (b) obj;
            return TextUtils.equals(this.f12176a, bVar.f12176a) && this.f12177b == bVar.f12177b && this.f12178c == bVar.f12178c;
        }

        public int hashCode() {
            return ((((this.f12176a.hashCode() + 31) * 31) + (this.f12177b ? 1231 : 1237)) * 31) + (this.f12178c ? 1231 : 1237);
        }
    }

    private interface c {
        boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities);

        int getCodecCount();

        MediaCodecInfo getCodecInfoAt(int i11);

        boolean secureDecodersExplicit();
    }

    private static final class d implements c {
        private d() {
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && MimeTypes.VIDEO_H264.equals(str2);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo getCodecInfoAt(int i11) {
            return MediaCodecList.getCodecInfoAt(i11);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    private static final class e implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f12179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private MediaCodecInfo[] f12180b;

        public e(boolean z10, boolean z11, boolean z12) {
            this.f12179a = (z10 || z11 || z12) ? 1 : 0;
        }

        private void c() {
            if (this.f12180b == null) {
                this.f12180b = new MediaCodecList(this.f12179a).getCodecInfos();
            }
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean b(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public int getCodecCount() {
            c();
            return this.f12180b.length;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public MediaCodecInfo getCodecInfoAt(int i11) {
            c();
            return this.f12180b[i11];
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.c
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface f {
        int a(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int A(w wVar) {
        String str = wVar.f12255a;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (a1.f10350a >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int B(androidx.media3.common.r rVar, w wVar) {
        return wVar.n(rVar) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int C(w wVar) {
        return (wVar.f12263i ? 2 : 0) + (!wVar.f12264j ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int D(f fVar, Object obj, Object obj2) {
        return fVar.a(obj2) - fVar.a(obj);
    }

    private static void E(List list, final f fVar) {
        Collections.sort(list, new Comparator() { // from class: androidx.media3.exoplayer.mediacodec.o0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.D(fVar, obj, obj2);
            }
        });
    }

    private static void e(String str, List list) {
        if (MimeTypes.AUDIO_RAW.equals(str)) {
            if (a1.f10350a < 26 && Build.DEVICE.equals("R9") && list.size() == 1 && ((w) list.get(0)).f12255a.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(w.D("OMX.google.raw.decoder", MimeTypes.AUDIO_RAW, MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            E(list, new f() { // from class: androidx.media3.exoplayer.mediacodec.m0
                @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.f
                public final int a(Object obj) {
                    return MediaCodecUtil.A((w) obj);
                }
            });
        }
        if (a1.f10350a >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((w) list.get(0)).f12255a)) {
            return;
        }
        list.add((w) list.remove(0));
    }

    public static String f(androidx.media3.common.r rVar) {
        Pair pairI;
        if (MimeTypes.AUDIO_E_AC3_JOC.equals(rVar.f10161o)) {
            return MimeTypes.AUDIO_E_AC3;
        }
        if ("video/dolby-vision".equals(rVar.f10161o) && (pairI = i(rVar)) != null) {
            int iIntValue = ((Integer) pairI.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                return MimeTypes.VIDEO_H265;
            }
            if (iIntValue == 512) {
                return MimeTypes.VIDEO_H264;
            }
            if (iIntValue == 1024) {
                return "video/av01";
            }
        }
        if ("video/mv-hevc".equals(rVar.f10161o)) {
            return MimeTypes.VIDEO_H265;
        }
        return null;
    }

    public static List g(h0 h0Var, androidx.media3.common.r rVar, boolean z10, boolean z11) {
        String strF = f(rVar);
        return strF == null ? ImmutableList.of() : h0Var.a(strF, z10, z11);
    }

    private static String h(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("video/mv-hevc")) {
            if ("c2.qti.mvhevc.decoder".equals(str) || "c2.qti.mvhevc.decoder.secure".equals(str)) {
                return "video/x-mvhevc";
            }
            return null;
        }
        if (str2.equals(MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals(MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals(MimeTypes.AUDIO_AC3) && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    public static Pair i(androidx.media3.common.r rVar) {
        return androidx.media3.common.util.j.n(rVar);
    }

    public static w j(String str, boolean z10, boolean z11) {
        List listK = k(str, z10, z11);
        if (listK.isEmpty()) {
            return null;
        }
        return (w) listK.get(0);
    }

    public static synchronized List k(String str, boolean z10, boolean z11) {
        try {
            b bVar = new b(str, z10, z11);
            HashMap map = f12174a;
            List list = (List) map.get(bVar);
            if (list != null) {
                return list;
            }
            ArrayList arrayListL = l(bVar, new e(z10, z11, str.equals("video/mv-hevc")));
            if (z10 && arrayListL.isEmpty() && a1.f10350a <= 23) {
                arrayListL = l(bVar, new d());
                if (!arrayListL.isEmpty()) {
                    androidx.media3.common.util.u.h("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((w) arrayListL.get(0)).f12255a);
                }
            }
            e(str, arrayListL);
            ImmutableList immutableListCopyOf = ImmutableList.copyOf((Collection) arrayListL);
            map.put(bVar, immutableListCopyOf);
            return immutableListCopyOf;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x008e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0105 A[Catch: Exception -> 0x012e, TRY_ENTER, TryCatch #1 {Exception -> 0x012e, blocks: (B:3:0x0008, B:5:0x001b, B:61:0x0124, B:8:0x002d, B:11:0x0038, B:55:0x00fd, B:58:0x0105, B:60:0x010b, B:64:0x0130, B:65:0x0153), top: B:71:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0025  */
    /* JADX WARN: Code duplicated, block: B:83:0x0130 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private static ArrayList l(b bVar, c cVar) throws DecoderQueryException {
        String strH;
        String str;
        int i11;
        boolean z10;
        int i12;
        b bVar2 = bVar;
        try {
            ArrayList arrayList = new ArrayList();
            String str2 = bVar2.f12176a;
            int codecCount = cVar.getCodecCount();
            boolean zSecureDecodersExplicit = cVar.secureDecodersExplicit();
            int i13 = 0;
            while (i13 < codecCount) {
                MediaCodecInfo codecInfoAt = cVar.getCodecInfoAt(i13);
                if (r(codecInfoAt)) {
                    i11 = i13;
                    z10 = zSecureDecodersExplicit;
                    i12 = codecCount;
                } else {
                    String name = codecInfoAt.getName();
                    if (t(codecInfoAt, name, zSecureDecodersExplicit, str2) && (strH = h(codecInfoAt, name, str2)) != null) {
                        try {
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(strH);
                            boolean zA = cVar.a("tunneled-playback", strH, capabilitiesForType);
                            boolean zB = cVar.b("tunneled-playback", strH, capabilitiesForType);
                            boolean z11 = bVar2.f12178c;
                            if ((z11 || !zB) && (!z11 || zA)) {
                                boolean zA2 = cVar.a("secure-playback", strH, capabilitiesForType);
                                boolean zB2 = cVar.b("secure-playback", strH, capabilitiesForType);
                                boolean z12 = bVar2.f12177b;
                                if ((z12 || !zB2) && (!z12 || zA2)) {
                                    boolean zU = u(codecInfoAt, str2);
                                    boolean zW = w(codecInfoAt, str2);
                                    boolean zY = y(codecInfoAt);
                                    if (zSecureDecodersExplicit && bVar2.f12177b == zA2) {
                                        i11 = i13;
                                        z10 = zSecureDecodersExplicit;
                                        i12 = codecCount;
                                        arrayList.add(w.D(name, str2, strH, capabilitiesForType, zU, zW, zY, false, false));
                                    } else {
                                        if (!zSecureDecodersExplicit) {
                                            try {
                                                if (!bVar2.f12177b) {
                                                    i11 = i13;
                                                    z10 = zSecureDecodersExplicit;
                                                    i12 = codecCount;
                                                    try {
                                                        arrayList.add(w.D(name, str2, strH, capabilitiesForType, zU, zW, zY, false, false));
                                                    } catch (Exception e11) {
                                                        e = e11;
                                                        str = name;
                                                        if (a1.f10350a <= 23) {
                                                        }
                                                        androidx.media3.common.util.u.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strH + ")");
                                                        throw e;
                                                    }
                                                }
                                            } catch (Exception e12) {
                                                e = e12;
                                                i11 = i13;
                                                z10 = zSecureDecodersExplicit;
                                                i12 = codecCount;
                                                str = name;
                                                if (a1.f10350a <= 23 || arrayList.isEmpty()) {
                                                    androidx.media3.common.util.u.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strH + ")");
                                                    throw e;
                                                }
                                                androidx.media3.common.util.u.c("MediaCodecUtil", "Skipping codec " + str + " (failed to query capabilities)");
                                                i13 = i11 + 1;
                                                bVar2 = bVar;
                                                codecCount = i12;
                                                zSecureDecodersExplicit = z10;
                                            }
                                        }
                                        strH = strH;
                                        i11 = i13;
                                        z10 = zSecureDecodersExplicit;
                                        i12 = codecCount;
                                        if (!z10 && zA2) {
                                            StringBuilder sb2 = new StringBuilder();
                                            try {
                                                sb2.append(name);
                                                sb2.append(".secure");
                                                str = name;
                                                try {
                                                    arrayList.add(w.D(sb2.toString(), str2, strH, capabilitiesForType, zU, zW, zY, false, true));
                                                    return arrayList;
                                                } catch (Exception e13) {
                                                    e = e13;
                                                    if (a1.f10350a <= 23) {
                                                    }
                                                    androidx.media3.common.util.u.c("MediaCodecUtil", "Failed to query codec " + str + " (" + strH + ")");
                                                    throw e;
                                                }
                                            } catch (Exception e14) {
                                                e = e14;
                                                str = name;
                                            }
                                        }
                                    }
                                } else {
                                    i11 = i13;
                                    z10 = zSecureDecodersExplicit;
                                    i12 = codecCount;
                                }
                            } else {
                                i11 = i13;
                                z10 = zSecureDecodersExplicit;
                                i12 = codecCount;
                            }
                        } catch (Exception e15) {
                            e = e15;
                            strH = strH;
                            str = name;
                            i11 = i13;
                            z10 = zSecureDecodersExplicit;
                            i12 = codecCount;
                        }
                    } else {
                        i11 = i13;
                        z10 = zSecureDecodersExplicit;
                        i12 = codecCount;
                    }
                }
                i13 = i11 + 1;
                bVar2 = bVar;
                codecCount = i12;
                zSecureDecodersExplicit = z10;
            }
            return arrayList;
        } catch (Exception e16) {
            throw new DecoderQueryException(e16);
        }
    }

    public static List m(h0 h0Var, androidx.media3.common.r rVar, boolean z10, boolean z11) {
        List listA = h0Var.a(rVar.f10161o, z10, z11);
        return ImmutableList.builder().l(listA).l(g(h0Var, rVar, z10, z11)).e();
    }

    public static List n(List list, final androidx.media3.common.r rVar) {
        ArrayList arrayList = new ArrayList(list);
        E(arrayList, new f() { // from class: androidx.media3.exoplayer.mediacodec.n0
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.f
            public final int a(Object obj) {
                return MediaCodecUtil.B(rVar, (w) obj);
            }
        });
        return arrayList;
    }

    public static List o(List list) {
        ArrayList arrayList = new ArrayList(list);
        E(arrayList, new f() { // from class: androidx.media3.exoplayer.mediacodec.p0
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.f
            public final int a(Object obj) {
                return MediaCodecUtil.C((w) obj);
            }
        });
        return ImmutableList.copyOf((Collection) arrayList);
    }

    public static w p() {
        return j(MimeTypes.AUDIO_RAW, false, false);
    }

    public static Pair q(androidx.media3.common.r rVar) {
        String strH = androidx.media3.container.g.h(rVar.f10164r);
        if (strH == null) {
            return null;
        }
        return androidx.media3.common.util.j.q(strH, a1.o1(strH.trim(), "\\."), rVar.C);
    }

    private static boolean r(MediaCodecInfo mediaCodecInfo) {
        return a1.f10350a >= 29 && s(mediaCodecInfo);
    }

    private static boolean s(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static boolean t(MediaCodecInfo mediaCodecInfo, String str, boolean z10, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z10 && str.endsWith(".secure"))) {
            return false;
        }
        int i11 = a1.f10350a;
        if (i11 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(Build.MANUFACTURER))) {
            String str3 = Build.DEVICE;
            if (str3.startsWith("zeroflte") || str3.startsWith("zerolte") || str3.startsWith("zenlte") || "SC-05G".equals(str3) || "marinelteatt".equals(str3) || "404SC".equals(str3) || "SC-04G".equals(str3) || "SCV31".equals(str3)) {
                return false;
            }
        }
        return (i11 <= 23 && MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    private static boolean u(MediaCodecInfo mediaCodecInfo, String str) {
        return a1.f10350a >= 29 ? v(mediaCodecInfo) : !w(mediaCodecInfo, str);
    }

    private static boolean v(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    private static boolean w(MediaCodecInfo mediaCodecInfo, String str) {
        if (a1.f10350a >= 29) {
            return x(mediaCodecInfo);
        }
        if (androidx.media3.common.y.o(str)) {
            return true;
        }
        String strE = com.google.common.base.a.e(mediaCodecInfo.getName());
        if (strE.startsWith("arc.")) {
            return false;
        }
        if (strE.startsWith("omx.google.") || strE.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strE.startsWith("omx.sec.") && strE.contains(".sw.")) || strE.equals("omx.qcom.video.decoder.hevcswvdec") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) {
            return true;
        }
        return (strE.startsWith("omx.") || strE.startsWith("c2.")) ? false : true;
    }

    private static boolean x(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    private static boolean y(MediaCodecInfo mediaCodecInfo) {
        if (a1.f10350a >= 29) {
            return z(mediaCodecInfo);
        }
        String strE = com.google.common.base.a.e(mediaCodecInfo.getName());
        return (strE.startsWith("omx.google.") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) ? false : true;
    }

    private static boolean z(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }
}
