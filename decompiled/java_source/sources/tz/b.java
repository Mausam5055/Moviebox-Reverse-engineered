package tz;

import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
public class b implements Comparable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f76431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f76432b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f76433c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InputStream f76434d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f76435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f76436f;

    b(a aVar, h hVar, int i11) {
        this.f76432b = null;
        this.f76434d = null;
        this.f76431a = i11;
        InputStream inputStream = aVar.f76426g;
        if (inputStream == null) {
            this.f76432b = aVar.f76424e;
            this.f76433c = aVar.f76425f;
        }
        this.f76434d = inputStream;
        this.f76435e = hVar.b();
        this.f76436f = hVar.a();
    }

    b(a aVar, h hVar, int i11, String str, String str2) {
        this.f76432b = null;
        this.f76434d = null;
        this.f76431a = i11;
        InputStream inputStream = aVar.f76426g;
        if (inputStream == null) {
            this.f76432b = aVar.f76424e;
            this.f76433c = aVar.f76425f;
        }
        this.f76434d = inputStream;
        this.f76435e = str;
        this.f76436f = str2;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(b bVar) {
        int i11 = this.f76431a;
        int i12 = bVar.f76431a;
        if (i11 > i12) {
            return 1;
        }
        return i11 < i12 ? -1 : 0;
    }

    public String getName() {
        return this.f76435e;
    }
}
