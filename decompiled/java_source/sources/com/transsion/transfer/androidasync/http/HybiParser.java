package com.transsion.transfer.androidasync.http;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.transfer.androidasync.ByteBufferList;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.List;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes6.dex */
abstract class HybiParser {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final List f55281w = Arrays.asList(0, 1, 2, 8, 9, 10);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final List f55282x = Arrays.asList(0, 1, 2);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f55285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f55286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f55287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f55288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f55289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f55290h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f55291i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f55292j;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.transsion.transfer.androidasync.r f55304v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f55283a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f55284b = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f55293k = new byte[0];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte[] f55294l = new byte[0];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f55295m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ByteArrayOutputStream f55296n = new ByteArrayOutputStream();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Inflater f55297o = new Inflater(true);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f55298p = new byte[4096];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    bv.d f55299q = new a();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    bv.d f55300r = new b();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    bv.d f55301s = new c();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    bv.d f55302t = new d();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    bv.d f55303u = new e();

    public static class ProtocolError extends IOException {
        public ProtocolError(String str) {
            super(str);
        }
    }

    class a implements bv.d {
        a() {
        }

        @Override // bv.d
        public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            try {
                HybiParser.this.F(byteBufferList.e());
            } catch (ProtocolError e11) {
                HybiParser.this.H(e11);
                e11.printStackTrace();
            }
            HybiParser.this.C();
        }
    }

    class b implements bv.d {
        b() {
        }

        @Override // bv.d
        public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            HybiParser.this.E(byteBufferList.e());
            HybiParser.this.C();
        }
    }

    class c implements bv.d {
        c() {
        }

        @Override // bv.d
        public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            byte[] bArr = new byte[HybiParser.this.f55290h];
            byteBufferList.h(bArr);
            try {
                HybiParser.this.D(bArr);
            } catch (ProtocolError e11) {
                HybiParser.this.H(e11);
                e11.printStackTrace();
            }
            HybiParser.this.C();
        }
    }

    class d implements bv.d {
        d() {
        }

        @Override // bv.d
        public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            HybiParser.this.f55293k = new byte[4];
            byteBufferList.h(HybiParser.this.f55293k);
            HybiParser.this.f55285c = 4;
            HybiParser.this.C();
        }
    }

    class e implements bv.d {
        e() {
        }

        @Override // bv.d
        public void F(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
            HybiParser hybiParser = HybiParser.this;
            hybiParser.f55294l = new byte[hybiParser.f55291i];
            byteBufferList.h(HybiParser.this.f55294l);
            try {
                HybiParser.this.n();
            } catch (IOException e11) {
                HybiParser.this.H(e11);
                e11.printStackTrace();
            }
            HybiParser.this.f55285c = 0;
            HybiParser.this.C();
        }
    }

    public HybiParser(com.transsion.transfer.androidasync.p pVar) {
        com.transsion.transfer.androidasync.r rVar = new com.transsion.transfer.androidasync.r();
        this.f55304v = rVar;
        pVar.t(rVar);
        C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(byte[] bArr) {
        this.f55291i = u(bArr);
        this.f55285c = this.f55287e ? 3 : 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(byte b11) {
        boolean z10 = (b11 & 128) == 128;
        this.f55287e = z10;
        int i11 = b11 & 127;
        this.f55291i = i11;
        if (i11 >= 0 && i11 <= 125) {
            this.f55285c = z10 ? 3 : 4;
        } else {
            this.f55290h = i11 == 126 ? 2 : 8;
            this.f55285c = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(byte b11) throws ProtocolError {
        boolean z10 = (b11 & 64) == 64;
        boolean z11 = (b11 & 32) == 32;
        boolean z12 = (b11 & 16) == 16;
        if ((!this.f55284b && z10) || z11 || z12) {
            throw new ProtocolError("RSV not zero");
        }
        this.f55286d = (b11 & 128) == 128;
        int i11 = b11 & 15;
        this.f55289g = i11;
        this.f55288f = z10;
        this.f55293k = new byte[0];
        this.f55294l = new byte[0];
        if (!f55281w.contains(Integer.valueOf(i11))) {
            throw new ProtocolError("Bad opcode");
        }
        if (!f55282x.contains(Integer.valueOf(this.f55289g)) && !this.f55286d) {
            throw new ProtocolError("Expected non-final packet");
        }
        this.f55285c = 1;
    }

    private void I() {
        this.f55292j = 0;
        this.f55296n.reset();
    }

    private byte[] M(byte[] bArr, int i11) {
        byte[] bArr2 = new byte[bArr.length - i11];
        System.arraycopy(bArr, i11, bArr2, 0, bArr.length - i11);
        return bArr2;
    }

    private static long l(byte[] bArr, int i11, int i12) {
        if (bArr.length < i12) {
            throw new IllegalArgumentException("length must be less than or equal to b.length");
        }
        long j11 = 0;
        for (int i13 = 0; i13 < i12; i13++) {
            j11 += (long) ((bArr[i13 + i11] & 255) << (((i12 - 1) - i13) * 8));
        }
        return j11;
    }

    private byte[] m(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException(e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() throws IOException {
        int i11 = 0;
        byte[] bArrW = w(this.f55294l, this.f55293k, 0);
        if (this.f55288f) {
            try {
                bArrW = v(bArrW);
            } catch (DataFormatException unused) {
                throw new IOException("Invalid deflated data");
            }
        }
        int i12 = this.f55289g;
        if (i12 == 0) {
            if (this.f55292j == 0) {
                throw new ProtocolError("Mode was not set.");
            }
            this.f55296n.write(bArrW);
            if (this.f55286d) {
                byte[] byteArray = this.f55296n.toByteArray();
                if (this.f55292j == 1) {
                    y(o(byteArray));
                } else {
                    z(byteArray);
                }
                I();
                return;
            }
            return;
        }
        if (i12 == 1) {
            if (this.f55286d) {
                y(o(bArrW));
                return;
            } else {
                this.f55292j = 1;
                this.f55296n.write(bArrW);
                return;
            }
        }
        if (i12 == 2) {
            if (this.f55286d) {
                z(bArrW);
                return;
            } else {
                this.f55292j = 2;
                this.f55296n.write(bArrW);
                return;
            }
        }
        if (i12 == 8) {
            if (bArrW.length >= 2) {
                i11 = (bArrW[1] & 255) + ((bArrW[0] & 255) * 256);
            }
            x(i11, bArrW.length > 2 ? o(M(bArrW, 2)) : null);
        } else if (i12 != 9) {
            if (i12 == 10) {
                B(o(bArrW));
            }
        } else {
            if (bArrW.length > 125) {
                throw new ProtocolError("Ping payload too large");
            }
            String strO = o(bArrW);
            J(q(10, bArrW, -1));
            A(strO);
        }
    }

    private String o(byte[] bArr) {
        try {
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e11) {
            throw new RuntimeException(e11);
        }
    }

    private byte[] p(int i11, String str, int i12) {
        return q(i11, m(str), i12);
    }

    private byte[] q(int i11, byte[] bArr, int i12) {
        return r(i11, bArr, i12, 0, bArr.length);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00dd  */
    private byte[] r(int i11, byte[] bArr, int i12, int i13, int i14) {
        int i15;
        if (this.f55295m) {
            return null;
        }
        int i16 = i12 > 0 ? 2 : 0;
        int i17 = (i14 + i16) - i13;
        if (i17 <= 125) {
            i15 = 2;
        } else {
            i15 = i17 <= 65535 ? 4 : 10;
        }
        boolean z10 = this.f55283a;
        int i18 = (z10 ? 4 : 0) + i15;
        int i19 = z10 ? 128 : 0;
        byte[] bArr2 = new byte[i17 + i18];
        bArr2[0] = (byte) (((byte) i11) | (-128));
        if (i17 > 125) {
            if (i17 <= 65535) {
                bArr2[1] = (byte) (i19 | 126);
                bArr2[2] = (byte) (i17 / 256);
                bArr2[3] = (byte) (i17 & 255);
            } else {
                bArr2[1] = (byte) (i19 | 127);
                long j11 = i17;
                bArr2[2] = (byte) ((j11 / 72057594037927936L) & 255);
                bArr2[3] = (byte) ((j11 / 281474976710656L) & 255);
                bArr2[4] = (byte) ((j11 / 1099511627776L) & 255);
                bArr2[5] = (byte) ((j11 / TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE) & 255);
                bArr2[6] = (byte) ((j11 / 16777216) & 255);
                bArr2[7] = (byte) ((j11 / PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) & 255);
                bArr2[8] = (byte) ((j11 / 256) & 255);
                bArr2[9] = (byte) (i17 & 255);
            }
            if (i12 > 0) {
                bArr2[i18] = (byte) ((i12 / 256) & 255);
                bArr2[i18 + 1] = (byte) (i12 & 255);
            }
            System.arraycopy(bArr, i13, bArr2, i18 + i16, i14 - i13);
            if (this.f55283a) {
                byte[] bArr3 = {(byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d)};
                System.arraycopy(bArr3, 0, bArr2, i15, 4);
                w(bArr2, bArr3, i18);
            }
            return bArr2;
        }
        bArr2[1] = (byte) (i19 | i17);
        if (i12 > 0) {
            bArr2[i18] = (byte) ((i12 / 256) & 255);
            bArr2[i18 + 1] = (byte) (i12 & 255);
        }
        System.arraycopy(bArr, i13, bArr2, i18 + i16, i14 - i13);
        if (this.f55283a) {
            byte[] bArr4 = {(byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d), (byte) Math.floor(Math.random() * 256.0d)};
            System.arraycopy(bArr4, 0, bArr2, i15, 4);
            w(bArr2, bArr4, i18);
        }
        return bArr2;
    }

    private int u(byte[] bArr) throws ProtocolError {
        long jL = l(bArr, 0, bArr.length);
        if (jL >= 0 && jL <= 2147483647L) {
            return (int) jL;
        }
        throw new ProtocolError("Bad integer: " + jL);
    }

    private byte[] v(byte[] bArr) throws DataFormatException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f55297o.setInput(bArr);
        while (!this.f55297o.needsInput()) {
            byteArrayOutputStream.write(this.f55298p, 0, this.f55297o.inflate(this.f55298p));
        }
        this.f55297o.setInput(new byte[]{0, 0, -1, -1});
        while (!this.f55297o.needsInput()) {
            byteArrayOutputStream.write(this.f55298p, 0, this.f55297o.inflate(this.f55298p));
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] w(byte[] bArr, byte[] bArr2, int i11) {
        if (bArr2.length == 0) {
            return bArr;
        }
        for (int i12 = 0; i12 < bArr.length - i11; i12++) {
            int i13 = i11 + i12;
            bArr[i13] = (byte) (bArr[i13] ^ bArr2[i12 % 4]);
        }
        return bArr;
    }

    protected abstract void A(String str);

    protected abstract void B(String str);

    void C() {
        int i11 = this.f55285c;
        if (i11 == 0) {
            this.f55304v.b(1, this.f55299q);
            return;
        }
        if (i11 == 1) {
            this.f55304v.b(1, this.f55300r);
            return;
        }
        if (i11 == 2) {
            this.f55304v.b(this.f55290h, this.f55301s);
        } else if (i11 == 3) {
            this.f55304v.b(4, this.f55302t);
        } else {
            if (i11 != 4) {
                return;
            }
            this.f55304v.b(this.f55291i, this.f55303u);
        }
    }

    public byte[] G(String str) {
        return p(9, str, -1);
    }

    protected abstract void H(Exception exc);

    protected abstract void J(byte[] bArr);

    public void K(boolean z10) {
        this.f55284b = z10;
    }

    public void L(boolean z10) {
        this.f55283a = z10;
    }

    protected void finalize() throws Throwable {
        Inflater inflater = this.f55297o;
        if (inflater != null) {
            try {
                inflater.end();
            } catch (Exception e11) {
                Log.e("HybiParser", "inflater.end failed", e11);
            }
        }
        super.finalize();
    }

    public byte[] s(String str) {
        return p(1, str, -1);
    }

    public byte[] t(byte[] bArr) {
        return q(2, bArr, -1);
    }

    protected abstract void x(int i11, String str);

    protected abstract void y(String str);

    protected abstract void z(byte[] bArr);
}
