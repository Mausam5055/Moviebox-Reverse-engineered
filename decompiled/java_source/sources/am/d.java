package am;

import android.content.Context;
import com.transsion.http.d.h;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public class d extends c {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f676l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Context f677m;

    public d(Context context, String str, boolean z10, Object obj, h hVar, Map map, boolean z11, int i11, int i12, boolean z12, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier) {
        super(str, obj, hVar, map, z11, i11, i12, z12, sSLSocketFactory, hostnameVerifier);
        this.f676l = z10;
        this.f677m = context;
        bm.a.f16624a.d("image", "origin image url:" + str);
    }

    @Override // am.c
    protected e b() {
        return this.f675k.m(this.f676l).c(this.f677m).j();
    }
}
