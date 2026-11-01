package androidx.media3.exoplayer.upstream;

import androidx.media3.common.ParserException;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.HttpDataSource;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class k implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13003a;

    public k() {
        this(-1);
    }

    public k(int i11) {
        this.f13003a = i11;
    }

    @Override // androidx.media3.exoplayer.upstream.m
    public int a(int i11) {
        int i12 = this.f13003a;
        if (i12 == -1) {
            return i11 == 7 ? 6 : 3;
        }
        return i12;
    }

    @Override // androidx.media3.exoplayer.upstream.m
    public /* synthetic */ void b(long j11) {
        l.a(this, j11);
    }

    @Override // androidx.media3.exoplayer.upstream.m
    public long c(m.c cVar) {
        IOException iOException = cVar.f13012c;
        return ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof HttpDataSource.CleartextNotPermittedException) || (iOException instanceof Loader.UnexpectedLoaderException) || DataSourceException.isCausedByPositionOutOfRange(iOException)) ? C.TIME_UNSET : Math.min((cVar.f13013d - 1) * 1000, 5000);
    }

    @Override // androidx.media3.exoplayer.upstream.m
    public m.b d(m.a aVar, m.c cVar) {
        if (!e(cVar.f13012c)) {
            return null;
        }
        if (aVar.a(1)) {
            return new m.b(1, 300000L);
        }
        if (aVar.a(2)) {
            return new m.b(2, 60000L);
        }
        return null;
    }

    protected boolean e(IOException iOException) {
        if (!(iOException instanceof HttpDataSource.InvalidResponseCodeException)) {
            return false;
        }
        int i11 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode;
        return i11 == 403 || i11 == 404 || i11 == 410 || i11 == 416 || i11 == 500 || i11 == 503;
    }
}
