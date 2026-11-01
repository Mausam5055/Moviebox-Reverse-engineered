package androidx.media3.exoplayer.audio;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioProfile;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.r4;
import com.google.common.primitives.Ints;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e f11162c = new e(ImmutableList.of(C0094e.f11167d));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ImmutableList f11163d = ImmutableList.of(2, 5, 6);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final ImmutableMap f11164e = new ImmutableMap.b().h(5, 6).h(17, 6).h(7, 6).h(30, 10).h(18, 6).h(6, 8).h(8, 8).h(14, 8).d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseArray f11165a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f11166b;

    private static final class b {
        private static ImmutableSet a() {
            ImmutableSet.a aVarK = new ImmutableSet.a().k(8, 7);
            int i11 = androidx.media3.common.util.a1.f10350a;
            if (i11 >= 31) {
                aVarK.k(26, 27);
            }
            if (i11 >= 33) {
                aVarK.a(30);
            }
            return aVarK.e();
        }

        public static boolean b(AudioManager audioManager, j jVar) {
            AudioDeviceInfo[] devices = jVar == null ? ((AudioManager) androidx.media3.common.util.a.e(audioManager)).getDevices(2) : new AudioDeviceInfo[]{jVar.f11196a};
            ImmutableSet immutableSetA = a();
            for (AudioDeviceInfo audioDeviceInfo : devices) {
                if (immutableSetA.contains(Integer.valueOf(audioDeviceInfo.getType()))) {
                    return true;
                }
            }
            return false;
        }
    }

    private static final class c {
        public static ImmutableList a(androidx.media3.common.c cVar) {
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            r4 it = e.f11164e.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int iIntValue = num.intValue();
                if (androidx.media3.common.util.a1.f10350a >= androidx.media3.common.util.a1.K(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), cVar.a().f9919a)) {
                    aVarBuilder.a(num);
                }
            }
            aVarBuilder.a(2);
            return aVarBuilder.e();
        }

        public static int b(int i11, int i12, androidx.media3.common.c cVar) {
            for (int i13 = 10; i13 > 0; i13--) {
                int iM = androidx.media3.common.util.a1.M(i13);
                if (iM != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i11).setSampleRate(i12).setChannelMask(iM).build(), cVar.a().f9919a)) {
                    return i13;
                }
            }
            return 0;
        }
    }

    private static final class d {
        public static e a(AudioManager audioManager, androidx.media3.common.c cVar) {
            return new e(e.c(audioManager.getDirectProfilesForAttributes(cVar.a().f9919a)));
        }

        public static j b(AudioManager audioManager, androidx.media3.common.c cVar) {
            try {
                List audioDevicesForAttributes = ((AudioManager) androidx.media3.common.util.a.e(audioManager)).getAudioDevicesForAttributes(cVar.a().f9919a);
                if (audioDevicesForAttributes.isEmpty()) {
                    return null;
                }
                return new j((AudioDeviceInfo) audioDevicesForAttributes.get(0));
            } catch (RuntimeException unused) {
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.media3.exoplayer.audio.e$e, reason: collision with other inner class name */
    private static final class C0094e {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final C0094e f11167d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11168a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11169b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ImmutableSet f11170c;

        static {
            f11167d = androidx.media3.common.util.a1.f10350a >= 33 ? new C0094e(2, a(10)) : new C0094e(2, 10);
        }

        public C0094e(int i11, int i12) {
            this.f11168a = i11;
            this.f11169b = i12;
            this.f11170c = null;
        }

        public C0094e(int i11, Set set) {
            this.f11168a = i11;
            ImmutableSet immutableSetCopyOf = ImmutableSet.copyOf((Collection) set);
            this.f11170c = immutableSetCopyOf;
            r4 it = immutableSetCopyOf.iterator();
            int iMax = 0;
            while (it.hasNext()) {
                iMax = Math.max(iMax, Integer.bitCount(((Integer) it.next()).intValue()));
            }
            this.f11169b = iMax;
        }

        private static ImmutableSet a(int i11) {
            ImmutableSet.a aVar = new ImmutableSet.a();
            for (int i12 = 1; i12 <= i11; i12++) {
                aVar.a(Integer.valueOf(androidx.media3.common.util.a1.M(i12)));
            }
            return aVar.e();
        }

        public int b(int i11, androidx.media3.common.c cVar) {
            if (this.f11170c != null) {
                return this.f11169b;
            }
            return androidx.media3.common.util.a1.f10350a >= 29 ? c.b(this.f11168a, i11, cVar) : ((Integer) androidx.media3.common.util.a.e((Integer) e.f11164e.getOrDefault(Integer.valueOf(this.f11168a), 0))).intValue();
        }

        public boolean c(int i11) {
            if (this.f11170c == null) {
                return i11 <= this.f11169b;
            }
            int iM = androidx.media3.common.util.a1.M(i11);
            if (iM == 0) {
                return false;
            }
            return this.f11170c.contains(Integer.valueOf(iM));
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0094e)) {
                return false;
            }
            C0094e c0094e = (C0094e) obj;
            return this.f11168a == c0094e.f11168a && this.f11169b == c0094e.f11169b && Objects.equals(this.f11170c, c0094e.f11170c);
        }

        public int hashCode() {
            int i11 = ((this.f11168a * 31) + this.f11169b) * 31;
            ImmutableSet immutableSet = this.f11170c;
            return i11 + (immutableSet == null ? 0 : immutableSet.hashCode());
        }

        public String toString() {
            return "AudioProfile[format=" + this.f11168a + ", maxChannelCount=" + this.f11169b + ", channelMasks=" + this.f11170c + "]";
        }
    }

    private e(List list) {
        this.f11165a = new SparseArray();
        for (int i11 = 0; i11 < list.size(); i11++) {
            C0094e c0094e = (C0094e) list.get(i11);
            this.f11165a.put(c0094e.f11168a, c0094e);
        }
        int iMax = 0;
        for (int i12 = 0; i12 < this.f11165a.size(); i12++) {
            iMax = Math.max(iMax, ((C0094e) this.f11165a.valueAt(i12)).f11169b);
        }
        this.f11166b = iMax;
    }

    private static boolean b() {
        String str = Build.MANUFACTURER;
        return str.equals("Amazon") || str.equals("Xiaomi");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ImmutableList c(List list) {
        HashMap map = new HashMap();
        map.put(2, new HashSet(Ints.c(12)));
        for (int i11 = 0; i11 < list.size(); i11++) {
            AudioProfile audioProfileA = androidx.media3.exoplayer.audio.a.a(list.get(i11));
            if (audioProfileA.getEncapsulationType() != 1) {
                int format = audioProfileA.getFormat();
                if (androidx.media3.common.util.a1.G0(format) || f11164e.containsKey(Integer.valueOf(format))) {
                    if (map.containsKey(Integer.valueOf(format))) {
                        ((Set) androidx.media3.common.util.a.e((Set) map.get(Integer.valueOf(format)))).addAll(Ints.c(audioProfileA.getChannelMasks()));
                    } else {
                        map.put(Integer.valueOf(format), new HashSet(Ints.c(audioProfileA.getChannelMasks())));
                    }
                }
            }
        }
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (Map.Entry entry : map.entrySet()) {
            aVarBuilder.a(new C0094e(((Integer) entry.getKey()).intValue(), (Set) entry.getValue()));
        }
        return aVarBuilder.e();
    }

    private static ImmutableList d(int[] iArr, int i11) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i12 : iArr) {
            aVarBuilder.a(new C0094e(i12, i11));
        }
        return aVarBuilder.e();
    }

    static e e(Context context, Intent intent, androidx.media3.common.c cVar, j jVar) {
        AudioManager audioManagerC = t1.m.c(context);
        if (jVar == null) {
            jVar = androidx.media3.common.util.a1.f10350a >= 33 ? d.b(audioManagerC, cVar) : null;
        }
        int i11 = androidx.media3.common.util.a1.f10350a;
        if (i11 >= 33 && (androidx.media3.common.util.a1.K0(context) || androidx.media3.common.util.a1.D0(context))) {
            return d.a(audioManagerC, cVar);
        }
        if (i11 >= 23 && b.b(audioManagerC, jVar)) {
            return f11162c;
        }
        ImmutableSet.a aVar = new ImmutableSet.a();
        aVar.a(2);
        if (i11 >= 29 && (androidx.media3.common.util.a1.K0(context) || androidx.media3.common.util.a1.D0(context))) {
            aVar.l(c.a(cVar));
            return new e(d(Ints.o(aVar.e()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z10 = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if ((z10 || b()) && Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            aVar.l(f11163d);
        }
        if (intent == null || z10 || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new e(d(Ints.o(aVar.e()), 10));
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            aVar.l(Ints.c(intArrayExtra));
        }
        return new e(d(Ints.o(aVar.e()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
    }

    static e f(Context context, androidx.media3.common.c cVar, j jVar) {
        return e(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), cVar, jVar);
    }

    private static int g(int i11) {
        int i12 = androidx.media3.common.util.a1.f10350a;
        if (i12 <= 28) {
            if (i11 == 7) {
                i11 = 8;
            } else if (i11 == 3 || i11 == 4 || i11 == 5) {
                i11 = 6;
            }
        }
        if (i12 <= 26 && "fugu".equals(Build.DEVICE) && i11 == 1) {
            i11 = 2;
        }
        return androidx.media3.common.util.a1.M(i11);
    }

    static Uri i() {
        if (b()) {
            return Settings.Global.getUriFor("external_surround_sound_enabled");
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return androidx.media3.common.util.a1.t(this.f11165a, eVar.f11165a) && this.f11166b == eVar.f11166b;
    }

    public Pair h(androidx.media3.common.r rVar, androidx.media3.common.c cVar) {
        int iF = androidx.media3.common.y.f((String) androidx.media3.common.util.a.e(rVar.f10161o), rVar.f10157k);
        if (!f11164e.containsKey(Integer.valueOf(iF))) {
            return null;
        }
        if (iF == 18 && !k(18)) {
            iF = 6;
        } else if ((iF == 8 && !k(8)) || (iF == 30 && !k(30))) {
            iF = 7;
        }
        if (!k(iF)) {
            return null;
        }
        C0094e c0094e = (C0094e) androidx.media3.common.util.a.e((C0094e) this.f11165a.get(iF));
        int iB = rVar.E;
        if (iB == -1 || iF == 18) {
            int i11 = rVar.F;
            if (i11 == -1) {
                i11 = 48000;
            }
            iB = c0094e.b(i11, cVar);
        } else if (!rVar.f10161o.equals("audio/vnd.dts.uhd;profile=p2") || androidx.media3.common.util.a1.f10350a >= 33) {
            if (!c0094e.c(iB)) {
                return null;
            }
        } else if (iB > 10) {
            return null;
        }
        int iG = g(iB);
        if (iG == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iF), Integer.valueOf(iG));
    }

    public int hashCode() {
        return this.f11166b + (androidx.media3.common.util.a1.u(this.f11165a) * 31);
    }

    public boolean j(androidx.media3.common.r rVar, androidx.media3.common.c cVar) {
        return h(rVar, cVar) != null;
    }

    public boolean k(int i11) {
        return androidx.media3.common.util.a1.r(this.f11165a, i11);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f11166b + ", audioProfiles=" + this.f11165a + "]";
    }
}
