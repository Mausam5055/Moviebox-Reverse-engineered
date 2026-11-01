package androidx.media;

import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f9706a = versionedParcel.p(audioAttributesImplBase.f9706a, 1);
        audioAttributesImplBase.f9707b = versionedParcel.p(audioAttributesImplBase.f9707b, 2);
        audioAttributesImplBase.f9708c = versionedParcel.p(audioAttributesImplBase.f9708c, 3);
        audioAttributesImplBase.f9709d = versionedParcel.p(audioAttributesImplBase.f9709d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.x(false, false);
        versionedParcel.F(audioAttributesImplBase.f9706a, 1);
        versionedParcel.F(audioAttributesImplBase.f9707b, 2);
        versionedParcel.F(audioAttributesImplBase.f9708c, 3);
        versionedParcel.F(audioAttributesImplBase.f9709d, 4);
    }
}
