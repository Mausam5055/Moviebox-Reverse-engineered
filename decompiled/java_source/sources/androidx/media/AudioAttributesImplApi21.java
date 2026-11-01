package androidx.media;

import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioAttributes f9704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9705b;

    public AudioAttributesImplApi21() {
        this.f9705b = -1;
    }

    AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    AudioAttributesImplApi21(AudioAttributes audioAttributes, int i11) {
        this.f9704a = audioAttributes;
        this.f9705b = i11;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f9704a.equals(((AudioAttributesImplApi21) obj).f9704a);
        }
        return false;
    }

    public int hashCode() {
        return this.f9704a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f9704a;
    }
}
