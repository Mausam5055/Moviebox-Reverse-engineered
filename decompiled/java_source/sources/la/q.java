package la;

import com.google.android.exoplayer2.k3;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.z2;
import t9.x;

/* JADX INFO: loaded from: classes3.dex */
public abstract class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f68798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.e f68799b;

    public interface a {
        void onTrackSelectionsInvalidated();
    }

    protected final com.google.android.exoplayer2.upstream.e a() {
        return (com.google.android.exoplayer2.upstream.e) com.google.android.exoplayer2.util.a.i(this.f68799b);
    }

    public TrackSelectionParameters b() {
        return TrackSelectionParameters.A;
    }

    public void c(a aVar, com.google.android.exoplayer2.upstream.e eVar) {
        this.f68798a = aVar;
        this.f68799b = eVar;
    }

    protected final void d() {
        a aVar = this.f68798a;
        if (aVar != null) {
            aVar.onTrackSelectionsInvalidated();
        }
    }

    public boolean e() {
        return false;
    }

    public abstract void f(Object obj);

    public void g() {
        this.f68798a = null;
        this.f68799b = null;
    }

    public abstract r h(z2[] z2VarArr, x xVar, com.google.android.exoplayer2.source.o.b bVar, k3 k3Var);

    public void i(com.google.android.exoplayer2.audio.e eVar) {
    }

    public void j(TrackSelectionParameters trackSelectionParameters) {
    }
}
