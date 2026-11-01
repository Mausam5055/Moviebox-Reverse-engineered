package e8;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f61603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f61604b;

    public a() {
        this(false, 4000);
    }

    public a(boolean z10, int i11) {
        this.f61603a = z10;
        this.f61604b = i11;
    }

    static int b(String str, int i11, int i12) {
        if (i12 == str.length() || str.charAt(i12) == '\n') {
            return i12;
        }
        for (int i13 = i12 - 1; i11 < i13; i13--) {
            if (str.charAt(i13) == '\n') {
                return i13;
            }
        }
        return i12;
    }

    @Override // e8.c
    public void a(int i11, String str, String str2) {
        int length = str2.length();
        int i12 = 0;
        while (i12 < length) {
            if (str2.charAt(i12) == '\n') {
                i12++;
            } else {
                int iMin = Math.min(this.f61604b + i12, length);
                if (this.f61603a) {
                    int iIndexOf = str2.indexOf(10, i12);
                    if (iIndexOf != -1) {
                        iMin = iIndexOf;
                    }
                } else {
                    iMin = b(str2, i12, iMin);
                }
                c(i11, str, str2.substring(i12, iMin));
                i12 = iMin;
            }
        }
    }

    void c(int i11, String str, String str2) {
        Log.println(i11, str, str2);
    }
}
