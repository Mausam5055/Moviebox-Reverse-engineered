package r8;

/* JADX INFO: loaded from: classes4.dex */
final class b extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Integer f74184a;

    b(Integer num) {
        this.f74184a = num;
    }

    @Override // r8.f
    public Integer a() {
        return this.f74184a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        Integer num = this.f74184a;
        Integer numA = ((f) obj).a();
        if (num == null) {
            return numA == null;
        }
        return num.equals(numA);
    }

    public int hashCode() {
        Integer num = this.f74184a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "ProductData{productId=" + this.f74184a + "}";
    }
}
