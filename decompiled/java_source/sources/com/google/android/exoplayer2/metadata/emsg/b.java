package com.google.android.exoplayer2.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ByteArrayOutputStream f25420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DataOutputStream f25421b;

    public b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f25420a = byteArrayOutputStream;
        this.f25421b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(EventMessage eventMessage) {
        this.f25420a.reset();
        try {
            b(this.f25421b, eventMessage.schemeIdUri);
            String str = eventMessage.value;
            if (str == null) {
                str = "";
            }
            b(this.f25421b, str);
            this.f25421b.writeLong(eventMessage.durationMs);
            this.f25421b.writeLong(eventMessage.f25419id);
            this.f25421b.write(eventMessage.messageData);
            this.f25421b.flush();
            return this.f25420a.toByteArray();
        } catch (IOException e11) {
            throw new RuntimeException(e11);
        }
    }
}
