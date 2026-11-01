package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f18101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f18102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f18103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f18104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f18105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f18106f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    String f18107g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f18108h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    e f18109i;

    e() {
    }

    e(int i11, e eVar) {
        this.f18101a = i11;
        this.f18102b = eVar.f18102b;
        this.f18103c = eVar.f18103c;
        this.f18104d = eVar.f18104d;
        this.f18105e = eVar.f18105e;
        this.f18106f = eVar.f18106f;
        this.f18107g = eVar.f18107g;
        this.f18108h = eVar.f18108h;
    }

    boolean a(e eVar) {
        int i11 = this.f18102b;
        if (i11 != 1) {
            if (i11 != 15) {
                if (i11 == 12) {
                    return eVar.f18105e.equals(this.f18105e) && eVar.f18106f.equals(this.f18106f);
                }
                if (i11 != 13) {
                    switch (i11) {
                        case 3:
                        case 4:
                            return eVar.f18103c == this.f18103c;
                        case 5:
                        case 6:
                            break;
                        case 7:
                        case 8:
                            break;
                        default:
                            return eVar.f18105e.equals(this.f18105e) && eVar.f18106f.equals(this.f18106f) && eVar.f18107g.equals(this.f18107g);
                    }
                }
            }
            return eVar.f18104d == this.f18104d;
        }
        return eVar.f18105e.equals(this.f18105e);
    }

    void b(int i11) {
        this.f18102b = 3;
        this.f18103c = i11;
        this.f18108h = (3 + i11) & Integer.MAX_VALUE;
    }

    void c(int i11, String str, String str2, String str3) {
        this.f18102b = i11;
        this.f18105e = str;
        this.f18106f = str2;
        this.f18107g = str3;
        if (i11 != 1 && i11 != 7 && i11 != 8) {
            if (i11 == 12) {
                this.f18108h = (i11 + (str.hashCode() * str2.hashCode())) & Integer.MAX_VALUE;
                return;
            } else if (i11 != 13) {
                this.f18108h = (i11 + (str.hashCode() * str2.hashCode() * str3.hashCode())) & Integer.MAX_VALUE;
                return;
            }
        }
        this.f18108h = (i11 + str.hashCode()) & Integer.MAX_VALUE;
    }
}
