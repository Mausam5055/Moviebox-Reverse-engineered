package androidx.compose.ui.text.font;

import androidx.compose.runtime.a3;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6124b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c0 f6125c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final s f6126d = new s(C.SANS_SERIF_NAME, "FontFamily.SansSerif");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final s f6127e = new s(C.SERIF_NAME, "FontFamily.Serif");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final s f6128f = new s("monospace", "FontFamily.Monospace");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final s f6129g = new s("cursive", "FontFamily.Cursive");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6130a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c0 a() {
            return h.f6125c;
        }

        public final s b() {
            return h.f6126d;
        }
    }

    public interface b {
        a3 a(h hVar, p pVar, int i11, int i12);
    }

    private h(boolean z10) {
        this.f6130a = z10;
    }

    public /* synthetic */ h(boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10);
    }
}
