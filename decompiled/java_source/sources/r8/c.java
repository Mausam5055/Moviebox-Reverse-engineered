package r8;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f74185a;

    private c(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f74185a = str;
    }

    public static c b(String str) {
        return new c(str);
    }

    public String a() {
        return this.f74185a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return this.f74185a.equals(((c) obj).f74185a);
        }
        return false;
    }

    public int hashCode() {
        return this.f74185a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f74185a + "\"}";
    }
}
