package androidx.media3.exoplayer.mediacodec;

import android.media.LoudnessCodecController;
import android.media.LoudnessCodecController$OnLoudnessCodecUpdateListener;
import android.media.MediaCodec;
import android.os.Bundle;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet f12238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f12239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LoudnessCodecController f12240c;

    class a implements LoudnessCodecController$OnLoudnessCodecUpdateListener {
        a() {
        }

        public Bundle onLoudnessCodecUpdate(MediaCodec mediaCodec, Bundle bundle) {
            return p.this.f12239b.a(bundle);
        }
    }

    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f12242a = new b() { // from class: androidx.media3.exoplayer.mediacodec.q
            @Override // androidx.media3.exoplayer.mediacodec.p.b
            public final Bundle a(Bundle bundle) {
                return r.a(bundle);
            }
        };

        Bundle a(Bundle bundle);
    }

    public p() {
        this(b.f12242a);
    }

    public p(b bVar) {
        this.f12238a = new HashSet();
        this.f12239b = bVar;
    }

    public void b(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController = this.f12240c;
        if (loudnessCodecController == null || loudnessCodecController.addMediaCodec(mediaCodec)) {
            androidx.media3.common.util.a.g(this.f12238a.add(mediaCodec));
        }
    }

    public void c() {
        this.f12238a.clear();
        LoudnessCodecController loudnessCodecController = this.f12240c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    public void d(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (!this.f12238a.remove(mediaCodec) || (loudnessCodecController = this.f12240c) == null) {
            return;
        }
        loudnessCodecController.removeMediaCodec(mediaCodec);
    }

    public void e(int i11) {
        LoudnessCodecController loudnessCodecController = this.f12240c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f12240c = null;
        }
        LoudnessCodecController loudnessCodecControllerCreate = LoudnessCodecController.create(i11, MoreExecutors.a(), new a());
        this.f12240c = loudnessCodecControllerCreate;
        Iterator it = this.f12238a.iterator();
        while (it.hasNext()) {
            if (!loudnessCodecControllerCreate.addMediaCodec((MediaCodec) it.next())) {
                it.remove();
            }
        }
    }
}
