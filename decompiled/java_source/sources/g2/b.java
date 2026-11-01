package g2;

import android.net.Uri;
import androidx.media3.exoplayer.source.UnrecognizedInputFormatException;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.io.EOFException;
import java.util.Map;
import l2.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements androidx.media3.exoplayer.source.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l2.x f63196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private l2.r f63197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private l2.s f63198c;

    public b(l2.x xVar) {
        this.f63196a = xVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String f(l2.r rVar) {
        return rVar.e().getClass().getSimpleName();
    }

    @Override // androidx.media3.exoplayer.source.v
    public void a() {
        l2.r rVar = this.f63197b;
        if (rVar == null) {
            return;
        }
        l2.r rVarE = rVar.e();
        if (rVarE instanceof e3.f) {
            ((e3.f) rVarE).k();
        }
    }

    @Override // androidx.media3.exoplayer.source.v
    public long b() {
        l2.s sVar = this.f63198c;
        if (sVar != null) {
            return sVar.getPosition();
        }
        return -1L;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0052  */
    @Override // androidx.media3.exoplayer.source.v
    public void c(androidx.media3.common.j jVar, Uri uri, Map map, long j11, long j12, l2.t tVar) throws UnrecognizedInputFormatException {
        l2.j jVar2 = new l2.j(jVar, j11, j12);
        this.f63198c = jVar2;
        if (this.f63197b != null) {
            return;
        }
        l2.r[] rVarArrC = this.f63196a.c(uri, map);
        ImmutableList.a aVarBuilderWithExpectedSize = ImmutableList.builderWithExpectedSize(rVarArrC.length);
        if (rVarArrC.length == 1) {
            this.f63197b = rVarArrC[0];
        } else {
            for (l2.r rVar : rVarArrC) {
                try {
                    if (rVar.d(jVar2)) {
                        this.f63197b = rVar;
                        androidx.media3.common.util.a.g(true);
                        jVar2.resetPeekPosition();
                        break;
                    } else {
                        aVarBuilderWithExpectedSize.l(rVar.f());
                        boolean z10 = this.f63197b != null || jVar2.getPosition() == j11;
                        androidx.media3.common.util.a.g(z10);
                        jVar2.resetPeekPosition();
                    }
                } catch (EOFException unused) {
                    if (this.f63197b != null || jVar2.getPosition() == j11) {
                    }
                } catch (Throwable th2) {
                    androidx.media3.common.util.a.g(this.f63197b != null || jVar2.getPosition() == j11);
                    jVar2.resetPeekPosition();
                    throw th2;
                }
                androidx.media3.common.util.a.g(z10);
                jVar2.resetPeekPosition();
            }
            if (this.f63197b == null) {
                throw new UnrecognizedInputFormatException("None of the available extractors (" + com.google.common.base.g.h(", ").d(Lists.o(ImmutableList.copyOf(rVarArrC), new com.google.common.base.f() { // from class: g2.a
                    @Override // com.google.common.base.f
                    public final Object apply(Object obj) {
                        return b.f((l2.r) obj);
                    }
                })) + ") could read the stream.", (Uri) androidx.media3.common.util.a.e(uri), aVarBuilderWithExpectedSize.e());
            }
        }
        this.f63197b.b(tVar);
    }

    @Override // androidx.media3.exoplayer.source.v
    public int d(l0 l0Var) {
        return ((l2.r) androidx.media3.common.util.a.e(this.f63197b)).c((l2.s) androidx.media3.common.util.a.e(this.f63198c), l0Var);
    }

    @Override // androidx.media3.exoplayer.source.v
    public void release() {
        l2.r rVar = this.f63197b;
        if (rVar != null) {
            rVar.release();
            this.f63197b = null;
        }
        this.f63198c = null;
    }

    @Override // androidx.media3.exoplayer.source.v
    public void seek(long j11, long j12) {
        ((l2.r) androidx.media3.common.util.a.e(this.f63197b)).seek(j11, j12);
    }
}
