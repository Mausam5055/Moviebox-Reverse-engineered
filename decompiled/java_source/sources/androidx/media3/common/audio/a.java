package androidx.media3.common.audio;

import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ImmutableList f9821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f9822b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ByteBuffer[] f9823c = new ByteBuffer[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioProcessor.a f9824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioProcessor.a f9825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9826f;

    public a(ImmutableList immutableList) {
        this.f9821a = immutableList;
        AudioProcessor.a aVar = AudioProcessor.a.f9816e;
        this.f9824d = aVar;
        this.f9825e = aVar;
        this.f9826f = false;
    }

    private int c() {
        return this.f9823c.length - 1;
    }

    private void g(ByteBuffer byteBuffer) {
        boolean z10;
        for (boolean z11 = true; z11; z11 = z10) {
            z10 = false;
            for (int i11 = 0; i11 <= c(); i11++) {
                if (!this.f9823c[i11].hasRemaining()) {
                    AudioProcessor audioProcessor = (AudioProcessor) this.f9822b.get(i11);
                    if (!audioProcessor.isEnded()) {
                        ByteBuffer byteBuffer2 = i11 > 0 ? this.f9823c[i11 - 1] : byteBuffer.hasRemaining() ? byteBuffer : AudioProcessor.f9815a;
                        long jRemaining = byteBuffer2.remaining();
                        audioProcessor.queueInput(byteBuffer2);
                        this.f9823c[i11] = audioProcessor.getOutput();
                        z10 |= jRemaining - ((long) byteBuffer2.remaining()) > 0 || this.f9823c[i11].hasRemaining();
                    } else if (!this.f9823c[i11].hasRemaining() && i11 < c()) {
                        ((AudioProcessor) this.f9822b.get(i11 + 1)).queueEndOfStream();
                    }
                }
            }
        }
    }

    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.equals(AudioProcessor.a.f9816e)) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        for (int i11 = 0; i11 < this.f9821a.size(); i11++) {
            AudioProcessor audioProcessor = (AudioProcessor) this.f9821a.get(i11);
            AudioProcessor.a aVarA = audioProcessor.a(aVar);
            if (audioProcessor.isActive()) {
                androidx.media3.common.util.a.g(!aVarA.equals(AudioProcessor.a.f9816e));
                aVar = aVarA;
            }
        }
        this.f9825e = aVar;
        return aVar;
    }

    public void b() {
        this.f9822b.clear();
        this.f9824d = this.f9825e;
        this.f9826f = false;
        for (int i11 = 0; i11 < this.f9821a.size(); i11++) {
            AudioProcessor audioProcessor = (AudioProcessor) this.f9821a.get(i11);
            audioProcessor.flush();
            if (audioProcessor.isActive()) {
                this.f9822b.add(audioProcessor);
            }
        }
        this.f9823c = new ByteBuffer[this.f9822b.size()];
        for (int i12 = 0; i12 <= c(); i12++) {
            this.f9823c[i12] = ((AudioProcessor) this.f9822b.get(i12)).getOutput();
        }
    }

    public ByteBuffer d() {
        if (!f()) {
            return AudioProcessor.f9815a;
        }
        ByteBuffer byteBuffer = this.f9823c[c()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        g(AudioProcessor.f9815a);
        return this.f9823c[c()];
    }

    public boolean e() {
        return this.f9826f && ((AudioProcessor) this.f9822b.get(c())).isEnded() && !this.f9823c[c()].hasRemaining();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f9821a.size() != aVar.f9821a.size()) {
            return false;
        }
        for (int i11 = 0; i11 < this.f9821a.size(); i11++) {
            if (this.f9821a.get(i11) != aVar.f9821a.get(i11)) {
                return false;
            }
        }
        return true;
    }

    public boolean f() {
        return !this.f9822b.isEmpty();
    }

    public void h() {
        if (!f() || this.f9826f) {
            return;
        }
        this.f9826f = true;
        ((AudioProcessor) this.f9822b.get(0)).queueEndOfStream();
    }

    public int hashCode() {
        return this.f9821a.hashCode();
    }

    public void i(ByteBuffer byteBuffer) {
        if (!f() || this.f9826f) {
            return;
        }
        g(byteBuffer);
    }

    public void j() {
        for (int i11 = 0; i11 < this.f9821a.size(); i11++) {
            AudioProcessor audioProcessor = (AudioProcessor) this.f9821a.get(i11);
            audioProcessor.flush();
            audioProcessor.reset();
        }
        this.f9823c = new ByteBuffer[0];
        AudioProcessor.a aVar = AudioProcessor.a.f9816e;
        this.f9824d = aVar;
        this.f9825e = aVar;
        this.f9826f = false;
    }
}
