package z3;

/* JADX INFO: loaded from: classes2.dex */
public interface e extends AutoCloseable {
    boolean A0();

    void a(int i11, double d11);

    void c(int i11, long j11);

    @Override // java.lang.AutoCloseable
    void close();

    void e(int i11, byte[] bArr);

    void g(int i11);

    byte[] getBlob(int i11);

    boolean getBoolean(int i11);

    int getColumnCount();

    String getColumnName(int i11);

    double getDouble(int i11);

    long getLong(int i11);

    boolean isNull(int i11);

    void j(int i11, String str);

    String n0(int i11);

    void reset();
}
