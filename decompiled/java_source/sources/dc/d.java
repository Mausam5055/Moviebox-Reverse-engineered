package dc;

import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public final class d implements cc.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final bc.c f61305e = new bc.c() { // from class: dc.a
        @Override // bc.c
        public final void a(Object obj, Object obj2) {
            d.l(obj, (bc.d) obj2);
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final bc.e f61306f = new bc.e() { // from class: dc.b
        @Override // bc.e
        public final void a(Object obj, Object obj2) {
            ((bc.f) obj2).f((String) obj);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final bc.e f61307g = new bc.e() { // from class: dc.c
        @Override // bc.e
        public final void a(Object obj, Object obj2) {
            d.n((Boolean) obj, (bc.f) obj2);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final b f61308h = new b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f61309a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f61310b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private bc.c f61311c = f61305e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f61312d = false;

    class a implements bc.a {
        a() {
        }

        @Override // bc.a
        public void a(Object obj, Writer writer) {
            e eVar = new e(writer, d.this.f61309a, d.this.f61310b, d.this.f61311c, d.this.f61312d);
            eVar.k(obj, false);
            eVar.u();
        }

        @Override // bc.a
        public String b(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    private static final class b implements bc.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final DateFormat f61314a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f61314a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // bc.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(Date date, bc.f fVar) {
            fVar.f(f61314a.format(date));
        }
    }

    public d() {
        p(String.class, f61306f);
        p(Boolean.class, f61307g);
        p(Date.class, f61308h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void l(Object obj, bc.d dVar) {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Boolean bool, bc.f fVar) {
        fVar.g(bool.booleanValue());
    }

    public bc.a i() {
        return new a();
    }

    public d j(cc.a aVar) {
        aVar.a(this);
        return this;
    }

    public d k(boolean z10) {
        this.f61312d = z10;
        return this;
    }

    @Override // cc.b
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public d a(Class cls, bc.c cVar) {
        this.f61309a.put(cls, cVar);
        this.f61310b.remove(cls);
        return this;
    }

    public d p(Class cls, bc.e eVar) {
        this.f61310b.put(cls, eVar);
        this.f61309a.remove(cls);
        return this;
    }
}
