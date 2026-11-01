package x9;

/* JADX INFO: loaded from: classes4.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78152b;

    public o(String str, String str2) {
        this.f78151a = str;
        this.f78152b = str2;
    }

    public String toString() {
        String str = this.f78151a;
        String str2 = this.f78152b;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(str2).length());
        sb2.append(str);
        sb2.append(", ");
        sb2.append(str2);
        return sb2.toString();
    }
}
