package g10;

import com.mbridge.msdk.playercommon.exoplayer2.upstream.cache.CacheDataSink;

/* JADX INFO: loaded from: classes7.dex */
public class s extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static int[] f63166a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static int[] f63167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static int f63168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static String f63169d;

    public s() {
        f63166a = new int[]{2, 0, 0, 4096, 196608, 64, 0, 0, CacheDataSink.DEFAULT_BUFFER_SIZE, 0, 0, 0, 0, 0, 0, 0, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306, 572662306};
        f63167b = new int[]{285212976, 572657937, 289476898, 286593297, 8465};
        f63169d = "ISO-2022-KR";
        f63168c = 6;
    }

    @Override // g10.y
    public int[] a() {
        return f63166a;
    }

    @Override // g10.y
    public String b() {
        return f63169d;
    }

    @Override // g10.y
    public boolean d() {
        return false;
    }

    @Override // g10.y
    public int e() {
        return f63168c;
    }

    @Override // g10.y
    public int[] f() {
        return f63167b;
    }
}
