package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesCompat implements androidx.versionedparcelable.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SparseIntArray f9700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static boolean f9701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f9702d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioAttributesImpl f9703a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f9700b = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
        f9702d = new int[]{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16};
    }

    public AudioAttributesCompat() {
    }

    AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.f9703a = audioAttributesImpl;
    }

    static int a(boolean z10, int i11, int i12) {
        if ((i11 & 1) == 1) {
            return z10 ? 1 : 7;
        }
        if ((i11 & 4) == 4) {
            return z10 ? 0 : 6;
        }
        switch (i12) {
            case 0:
            case 1:
            case 12:
            case 14:
            case 16:
                return 3;
            case 2:
                return 0;
            case 3:
                return z10 ? 0 : 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 13:
                return 1;
            case 15:
            default:
                if (!z10) {
                    return 3;
                }
                throw new IllegalArgumentException("Unknown usage value " + i12 + " in audio attributes");
        }
    }

    static String b(int i11) {
        switch (i11) {
            case 0:
                return "USAGE_UNKNOWN";
            case 1:
                return "USAGE_MEDIA";
            case 2:
                return "USAGE_VOICE_COMMUNICATION";
            case 3:
                return "USAGE_VOICE_COMMUNICATION_SIGNALLING";
            case 4:
                return "USAGE_ALARM";
            case 5:
                return "USAGE_NOTIFICATION";
            case 6:
                return "USAGE_NOTIFICATION_RINGTONE";
            case 7:
                return "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
            case 8:
                return "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
            case 9:
                return "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
            case 10:
                return "USAGE_NOTIFICATION_EVENT";
            case 11:
                return "USAGE_ASSISTANCE_ACCESSIBILITY";
            case 12:
                return "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
            case 13:
                return "USAGE_ASSISTANCE_SONIFICATION";
            case 14:
                return "USAGE_GAME";
            case 15:
            default:
                return "unknown usage " + i11;
            case 16:
                return "USAGE_ASSISTANT";
        }
    }

    public static AudioAttributesCompat c(Object obj) {
        if (f9701c) {
            return null;
        }
        return Build.VERSION.SDK_INT >= 26 ? new AudioAttributesCompat(new AudioAttributesImplApi26((AudioAttributes) obj)) : new AudioAttributesCompat(new AudioAttributesImplApi21((AudioAttributes) obj));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f9703a;
        if (audioAttributesImpl == null) {
            return audioAttributesCompat.f9703a == null;
        }
        return audioAttributesImpl.equals(audioAttributesCompat.f9703a);
    }

    public int hashCode() {
        return this.f9703a.hashCode();
    }

    public String toString() {
        return this.f9703a.toString();
    }
}
