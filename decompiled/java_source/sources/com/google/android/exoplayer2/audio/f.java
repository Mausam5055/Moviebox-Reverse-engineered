package com.google.android.exoplayer2.audio;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.provider.Settings;
import android.util.Pair;
import com.google.android.exoplayer2.o1;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final f f24660c = new f(new int[]{2}, 8);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final f f24661d = new f(new int[]{2, 5, 6}, 8);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ImmutableMap f24662e = new ImmutableMap.b().h(5, 6).h(17, 6).h(7, 6).h(18, 6).h(6, 8).h(8, 8).h(14, 8).d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f24663a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f24664b;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final AudioAttributes f24665a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        public static int[] a() {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            r4 it = f.f24662e.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(num.intValue()).setSampleRate(48000).build(), f24665a)) {
                    aVarBuilder.a(num);
                }
            }
            aVarBuilder.a(2);
            return Ints.o(aVarBuilder.e());
        }

        public static int b(int i11, int i12) {
            for (int i13 = 8; i13 > 0; i13--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i11).setSampleRate(i12).setChannelMask(p0.G(i13)).build(), f24665a)) {
                    return i13;
                }
            }
            return 0;
        }
    }

    public f(int[] iArr, int i11) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.f24663a = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.f24663a = new int[0];
        }
        this.f24664b = i11;
    }

    private static boolean b() {
        if (p0.f27626a >= 17) {
            String str = p0.f27628c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static f c(Context context) {
        return d(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    static f d(Context context, Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), "external_surround_sound_enabled", 0) == 1) {
            return f24661d;
        }
        if (p0.f27626a < 29 || !(p0.x0(context) || p0.s0(context))) {
            return (intent == null || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 0) ? f24660c : new f(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return new f(a.a(), 8);
    }

    private static int e(int i11) {
        int i12 = p0.f27626a;
        if (i12 <= 28) {
            if (i11 == 7) {
                i11 = 8;
            } else if (i11 == 3 || i11 == 4 || i11 == 5) {
                i11 = 6;
            }
        }
        if (i12 <= 26 && "fugu".equals(p0.f27627b) && i11 == 1) {
            i11 = 2;
        }
        return p0.G(i11);
    }

    private static int g(int i11, int i12) {
        return p0.f27626a >= 29 ? a.b(i11, i12) : ((Integer) com.google.android.exoplayer2.util.a.e((Integer) f24662e.getOrDefault(Integer.valueOf(i11), 0))).intValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return Arrays.equals(this.f24663a, fVar.f24663a) && this.f24664b == fVar.f24664b;
    }

    public Pair f(o1 o1Var) {
        int iF = com.google.android.exoplayer2.util.w.f((String) com.google.android.exoplayer2.util.a.e(o1Var.f25496l), o1Var.f25493i);
        if (!f24662e.containsKey(Integer.valueOf(iF))) {
            return null;
        }
        if (iF == 18 && !i(18)) {
            iF = 6;
        } else if (iF == 8 && !i(8)) {
            iF = 7;
        }
        if (!i(iF)) {
            return null;
        }
        int iG = o1Var.f25509y;
        if (iG == -1 || iF == 18) {
            int i11 = o1Var.f25510z;
            if (i11 == -1) {
                i11 = 48000;
            }
            iG = g(iF, i11);
        } else if (iG > this.f24664b) {
            return null;
        }
        int iE = e(iG);
        if (iE == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iF), Integer.valueOf(iE));
    }

    public boolean h(o1 o1Var) {
        return f(o1Var) != null;
    }

    public int hashCode() {
        return this.f24664b + (Arrays.hashCode(this.f24663a) * 31);
    }

    public boolean i(int i11) {
        return Arrays.binarySearch(this.f24663a, i11) >= 0;
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f24664b + ", supportedEncodings=" + Arrays.toString(this.f24663a) + "]";
    }
}
