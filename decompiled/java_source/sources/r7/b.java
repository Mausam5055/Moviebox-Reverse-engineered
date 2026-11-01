package r7;

/* JADX INFO: loaded from: classes4.dex */
public class b implements d, c {
    @Override // r7.c
    public CharSequence a(long j11, int i11, String str, String str2) {
        return Long.toString(j11) + '|' + q7.c.b(i11) + '|' + str + '|' + str2;
    }

    @Override // r7.d
    public CharSequence b(int i11, String str, String str2) {
        return a(System.currentTimeMillis(), i11, str, str2);
    }
}
