package com.pgl.ssdk;

import com.pgl.ssdk.ces.out.DungeonFlag;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class k {
    @DungeonFlag
    private static e a(ByteBuffer byteBuffer) throws NoSuchAlgorithmException, a, CertificateException {
        ByteBuffer byteBufferA = f.a(byteBuffer);
        byteBufferA.get(new byte[byteBufferA.remaining()]);
        byteBufferA.flip();
        byteBufferA.position(0);
        f.a(byteBufferA);
        byte[] bArrB = f.b(f.a(byteBufferA));
        try {
            Certificate certificateGenerateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bArrB));
            if (certificateGenerateCertificate instanceof X509Certificate) {
                return new e(String.valueOf(((X509Certificate) certificateGenerateCertificate).getSubjectDN()), bArrB);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<e> a(o oVar, c.a aVar) throws IOException, f.a {
        return b(f.a(oVar, aVar, 1896449818).f40133a);
    }

    public static List<e> b(ByteBuffer byteBuffer) {
        try {
            ByteBuffer byteBufferA = f.a(byteBuffer);
            if (!byteBufferA.hasRemaining()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            while (byteBufferA.hasRemaining()) {
                try {
                    arrayList.add(a(f.a(byteBufferA)));
                } catch (a | BufferUnderflowException unused) {
                    return null;
                } catch (NoSuchAlgorithmException | CertificateException unused2) {
                }
            }
            return arrayList;
        } catch (a unused3) {
            return null;
        }
    }
}
