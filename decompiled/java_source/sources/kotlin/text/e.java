package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes7.dex */
final class e implements Iterator, KMappedMarker {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a f67560f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f67561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f67562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f67563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f67564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f67565e;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public e(CharSequence string) {
        Intrinsics.h(string, "string");
        this.f67561a = string;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f67562b = 0;
        int i11 = this.f67564d;
        int i12 = this.f67563c;
        this.f67563c = this.f67565e + i11;
        return this.f67561a.subSequence(i12, i11).toString();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i11;
        int i12;
        int i13 = this.f67562b;
        if (i13 != 0) {
            return i13 == 1;
        }
        if (this.f67565e < 0) {
            this.f67562b = 2;
            return false;
        }
        int length = this.f67561a.length();
        int length2 = this.f67561a.length();
        for (int i14 = this.f67563c; i14 < length2; i14++) {
            char cCharAt = this.f67561a.charAt(i14);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i11 = (cCharAt == '\r' && (i12 = i14 + 1) < this.f67561a.length() && this.f67561a.charAt(i12) == '\n') ? 2 : 1;
                length = i14;
                this.f67562b = 1;
                this.f67565e = i11;
                this.f67564d = length;
                return true;
            }
        }
        i11 = -1;
        this.f67562b = 1;
        this.f67565e = i11;
        this.f67564d = length;
        return true;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
