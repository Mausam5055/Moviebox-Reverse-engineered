package androidx.compose.ui.text.font;

import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.google.logging.type.LogSeverity;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class p implements Comparable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6149b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final p f6150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final p f6151d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final p f6152e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final p f6153f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final p f6154g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final p f6155h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final p f6156i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final p f6157j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final p f6158k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final p f6159l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final p f6160m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final p f6161n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final p f6162o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final p f6163p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final p f6164q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final p f6165r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final p f6166s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final p f6167t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final List f6168u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6169a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final p a() {
            return p.f6162o;
        }

        public final p b() {
            return p.f6153f;
        }

        public final p c() {
            return p.f6154g;
        }

        public final p d() {
            return p.f6155h;
        }

        public final p e() {
            return p.f6156i;
        }
    }

    static {
        p pVar = new p(100);
        f6150c = pVar;
        p pVar2 = new p(200);
        f6151d = pVar2;
        p pVar3 = new p(300);
        f6152e = pVar3;
        p pVar4 = new p(400);
        f6153f = pVar4;
        p pVar5 = new p(500);
        f6154g = pVar5;
        p pVar6 = new p(600);
        f6155h = pVar6;
        p pVar7 = new p(LogSeverity.ALERT_VALUE);
        f6156i = pVar7;
        p pVar8 = new p(LogSeverity.EMERGENCY_VALUE);
        f6157j = pVar8;
        p pVar9 = new p(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        f6158k = pVar9;
        f6159l = pVar;
        f6160m = pVar2;
        f6161n = pVar3;
        f6162o = pVar4;
        f6163p = pVar5;
        f6164q = pVar6;
        f6165r = pVar7;
        f6166s = pVar8;
        f6167t = pVar9;
        f6168u = CollectionsKt.o(pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7, pVar8, pVar9);
    }

    public p(int i11) {
        this.f6169a = i11;
        if (1 > i11 || i11 >= 1001) {
            throw new IllegalArgumentException(("Font weight can be in range [1, 1000]. Current value: " + i11).toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && this.f6169a == ((p) obj).f6169a;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public int compareTo(p pVar) {
        return Intrinsics.j(this.f6169a, pVar.f6169a);
    }

    public final int h() {
        return this.f6169a;
    }

    public int hashCode() {
        return this.f6169a;
    }

    public String toString() {
        return "FontWeight(weight=" + this.f6169a + ')';
    }
}
