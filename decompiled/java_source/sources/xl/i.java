package xl;

import android.util.LruCache;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes6.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LruCache f78360a = new LruCache(1000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final cm.f f78361b = cm.c.c(10, new a(this));

    class a implements cm.c.a {
        a(i iVar) {
        }

        @Override // cm.c.a
        public Object create() {
            try {
                return new b(MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256));
            } catch (NoSuchAlgorithmException e11) {
                throw new RuntimeException(e11);
            }
        }
    }

    private static final class b implements cm.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MessageDigest f78362a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final k f78363b = new k.b(null);

        b(MessageDigest messageDigest) {
            this.f78362a = messageDigest;
        }

        @Override // cm.c.b
        public k getVerifier() {
            return this.f78363b;
        }
    }

    public String a(wl.e eVar) {
        String strA;
        synchronized (this.f78360a) {
            strA = (String) this.f78360a.get(eVar);
        }
        if (strA == null) {
            b bVar = (b) this.f78361b.acquire();
            try {
                eVar.a(bVar.f78362a);
                strA = d.a(bVar.f78362a.digest());
                this.f78361b.release(bVar);
            } catch (Throwable th2) {
                this.f78361b.release(bVar);
                throw th2;
            }
        }
        synchronized (this.f78360a) {
            this.f78360a.put(eVar, strA);
        }
        return strA;
    }
}
