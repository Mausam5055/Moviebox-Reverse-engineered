package d6;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.b;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class a extends MediaDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f61234e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a f61235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f61236b = -2147483648L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f61237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TKC f61238d;

    public a(Context context, TKC tkc) {
        this.f61237c = context;
        this.f61238d = tkc;
        this.f61235a = new b(context, tkc);
    }

    public static a h(Context context, TKC tkc) {
        a aVar = new a(context, tkc);
        f61234e.put(tkc.sef(), aVar);
        return aVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f61238d.Fmk();
        com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.a aVar = this.f61235a;
        if (aVar != null) {
            aVar.sP();
        }
        f61234e.remove(this.f61238d.sef());
    }

    public TKC d() {
        return this.f61238d;
    }

    @Override // android.media.MediaDataSource
    public long getSize() {
        if (this.f61236b == -2147483648L) {
            if (this.f61237c == null || TextUtils.isEmpty(this.f61238d.Fmk())) {
                return -1L;
            }
            this.f61236b = this.f61235a.TKC();
        }
        return this.f61236b;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j11, byte[] bArr, int i11, int i12) {
        int iA = this.f61235a.a(j11, bArr, i11, i12);
        int length = bArr.length;
        Objects.toString(Thread.currentThread());
        return iA;
    }
}
