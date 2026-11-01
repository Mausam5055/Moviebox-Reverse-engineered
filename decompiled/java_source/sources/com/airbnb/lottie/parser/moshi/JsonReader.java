package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;

/* JADX INFO: loaded from: classes.dex */
public abstract class JsonReader implements Closeable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f17929g = new String[128];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f17930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f17931b = new int[32];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String[] f17932c = new String[32];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int[] f17933d = new int[32];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f17934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f17935f;

    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String[] f17936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Options f17937b;

        private a(String[] strArr, Options options) {
            this.f17936a = strArr;
            this.f17937b = options;
        }

        public static a a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i11 = 0; i11 < strArr.length; i11++) {
                    JsonReader.T(buffer, strArr[i11]);
                    buffer.readByte();
                    byteStringArr[i11] = buffer.readByteString();
                }
                return new a((String[]) strArr.clone(), Options.of(byteStringArr));
            } catch (IOException e11) {
                throw new AssertionError(e11);
            }
        }
    }

    static {
        for (int i11 = 0; i11 <= 31; i11++) {
            f17929g[i11] = String.format("\\u%04x", Integer.valueOf(i11));
        }
        String[] strArr = f17929g;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    JsonReader() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    public static void T(BufferedSink bufferedSink, String str) throws IOException {
        String str2;
        String[] strArr = f17929g;
        bufferedSink.writeByte(34);
        int length = str.length();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt < 128) {
                str2 = strArr[cCharAt];
                if (str2 != null) {
                    if (i11 < i12) {
                        bufferedSink.writeUtf8(str, i11, i12);
                    }
                    bufferedSink.writeUtf8(str2);
                    i11 = i12 + 1;
                }
            } else {
                if (cCharAt == 8232) {
                    str2 = "\\u2028";
                } else if (cCharAt == 8233) {
                    str2 = "\\u2029";
                }
                if (i11 < i12) {
                    bufferedSink.writeUtf8(str, i11, i12);
                }
                bufferedSink.writeUtf8(str2);
                i11 = i12 + 1;
            }
        }
        if (i11 < length) {
            bufferedSink.writeUtf8(str, i11, length);
        }
        bufferedSink.writeByte(34);
    }

    public static JsonReader s(BufferedSource bufferedSource) {
        return new b(bufferedSource);
    }

    final JsonEncodingException U(String str) throws JsonEncodingException {
        throw new JsonEncodingException(str + " at path " + getPath());
    }

    public abstract void d();

    public final String getPath() {
        return com.airbnb.lottie.parser.moshi.a.a(this.f17930a, this.f17931b, this.f17932c, this.f17933d);
    }

    public abstract void h();

    public abstract void k();

    public abstract void l();

    public abstract boolean m();

    public abstract boolean n();

    public abstract double o();

    public abstract int p();

    public abstract String q();

    public abstract String r();

    public abstract Token t();

    final void u(int i11) {
        int i12 = this.f17930a;
        int[] iArr = this.f17931b;
        if (i12 == iArr.length) {
            if (i12 == 256) {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
            this.f17931b = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f17932c;
            this.f17932c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.f17933d;
            this.f17933d = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f17931b;
        int i13 = this.f17930a;
        this.f17930a = i13 + 1;
        iArr3[i13] = i11;
    }

    public abstract int v(a aVar);

    public abstract void w();

    public abstract void x();
}
