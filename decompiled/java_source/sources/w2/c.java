package w2;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteArrayOutputStream f77559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DataOutputStream f77560b;

    public c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f77559a = byteArrayOutputStream;
        this.f77560b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(a aVar) {
        this.f77559a.reset();
        try {
            b(this.f77560b, aVar.f77553a);
            String str = aVar.f77554b;
            if (str == null) {
                str = "";
            }
            b(this.f77560b, str);
            this.f77560b.writeLong(aVar.f77555c);
            this.f77560b.writeLong(aVar.f77556d);
            this.f77560b.write(aVar.f77557e);
            this.f77560b.flush();
            return this.f77559a.toByteArray();
        } catch (IOException e11) {
            throw new RuntimeException(e11);
        }
    }
}
