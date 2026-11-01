package androidx.media3.exoplayer.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.util.a1;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.collect.ImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class l0 implements m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.media3.datasource.a.InterfaceC0091a f11592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f11593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f11594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f11595d;

    public l0(String str, boolean z10, androidx.media3.datasource.a.InterfaceC0091a interfaceC0091a) {
        androidx.media3.common.util.a.a((z10 && TextUtils.isEmpty(str)) ? false : true);
        this.f11592a = interfaceC0091a;
        this.f11593b = str;
        this.f11594c = z10;
        this.f11595d = new HashMap();
    }

    @Override // androidx.media3.exoplayer.drm.m0
    public byte[] a(UUID uuid, b0.a aVar) throws MediaDrmCallbackException {
        String str;
        String strB = aVar.b();
        if (this.f11594c || TextUtils.isEmpty(strB)) {
            strB = this.f11593b;
        }
        if (TextUtils.isEmpty(strB)) {
            w1.h.b bVar = new w1.h.b();
            Uri uri = Uri.EMPTY;
            throw new MediaDrmCallbackException(bVar.i(uri).a(), uri, ImmutableMap.of(), 0L, new IllegalStateException("No license URL"));
        }
        HashMap map = new HashMap();
        UUID uuid2 = androidx.media3.common.h.f9985e;
        if (uuid2.equals(uuid)) {
            str = "text/xml";
        } else {
            str = androidx.media3.common.h.f9983c.equals(uuid) ? "application/json" : OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE;
        }
        map.put(HttpHeaders.CONTENT_TYPE, str);
        if (uuid2.equals(uuid)) {
            map.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
        }
        synchronized (this.f11595d) {
            map.putAll(this.f11595d);
        }
        return x.a(this.f11592a.createDataSource(), strB, aVar.a(), map);
    }

    @Override // androidx.media3.exoplayer.drm.m0
    public byte[] b(UUID uuid, b0.d dVar) {
        return x.a(this.f11592a.createDataSource(), dVar.b() + "&signedRequest=" + a1.H(dVar.a()), null, Collections.emptyMap());
    }

    public void c(String str, String str2) {
        androidx.media3.common.util.a.e(str);
        androidx.media3.common.util.a.e(str2);
        synchronized (this.f11595d) {
            this.f11595d.put(str, str2);
        }
    }
}
