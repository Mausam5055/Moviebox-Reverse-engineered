package kotlin.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes7.dex */
public class c extends b {
    public static void c(File file, byte[] array) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            fileOutputStream.write(array);
            Unit unit = Unit.f67061a;
            CloseableKt.a(fileOutputStream, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(fileOutputStream, th2);
                throw th3;
            }
        }
    }

    public static void d(File file, String text, Charset charset) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(text, "text");
        Intrinsics.h(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file, true);
        try {
            l(fileOutputStream, text, charset);
            Unit unit = Unit.f67061a;
            CloseableKt.a(fileOutputStream, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(fileOutputStream, th2);
                throw th3;
            }
        }
    }

    public static final ByteBuffer e(int i11, CharsetEncoder encoder) {
        Intrinsics.h(encoder, "encoder");
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i11 * ((int) Math.ceil(encoder.maxBytesPerChar())));
        Intrinsics.g(byteBufferAllocate, "allocate(...)");
        return byteBufferAllocate;
    }

    public static final CharsetEncoder f(Charset charset) {
        Intrinsics.h(charset, "<this>");
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    public static byte[] g(File file) {
        Intrinsics.h(file, "<this>");
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new OutOfMemoryError("File " + file + " is too big (" + length + " bytes) to fit in memory.");
            }
            int i11 = (int) length;
            byte[] bArrJ = new byte[i11];
            int i12 = i11;
            int i13 = 0;
            while (i12 > 0) {
                int i14 = fileInputStream.read(bArrJ, i13, i12);
                if (i14 < 0) {
                    break;
                }
                i12 -= i14;
                i13 += i14;
            }
            if (i12 > 0) {
                bArrJ = Arrays.copyOf(bArrJ, i13);
                Intrinsics.g(bArrJ, "copyOf(...)");
            } else {
                int i15 = fileInputStream.read();
                if (i15 != -1) {
                    a aVar = new a(8193);
                    aVar.write(i15);
                    ByteStreamsKt.b(fileInputStream, aVar, 0, 2, null);
                    int size = aVar.size() + i11;
                    if (size < 0) {
                        throw new OutOfMemoryError("File " + file + " is too big to fit in memory.");
                    }
                    byte[] bArrD = aVar.d();
                    byte[] bArrCopyOf = Arrays.copyOf(bArrJ, size);
                    Intrinsics.g(bArrCopyOf, "copyOf(...)");
                    bArrJ = ArraysKt.j(bArrD, bArrCopyOf, i11, 0, aVar.size());
                }
            }
            CloseableKt.a(fileInputStream, null);
            return bArrJ;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(fileInputStream, th2);
                throw th3;
            }
        }
    }

    public static final String h(File file, Charset charset) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(charset, "charset");
        InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file), charset);
        try {
            String strE = TextStreamsKt.e(inputStreamReader);
            CloseableKt.a(inputStreamReader, null);
            return strE;
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(inputStreamReader, th2);
                throw th3;
            }
        }
    }

    public static /* synthetic */ String i(File file, Charset charset, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return h(file, charset);
    }

    public static void j(File file, byte[] array) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(array, "array");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(array);
            Unit unit = Unit.f67061a;
            CloseableKt.a(fileOutputStream, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(fileOutputStream, th2);
                throw th3;
            }
        }
    }

    public static void k(File file, String text, Charset charset) {
        Intrinsics.h(file, "<this>");
        Intrinsics.h(text, "text");
        Intrinsics.h(charset, "charset");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            l(fileOutputStream, text, charset);
            Unit unit = Unit.f67061a;
            CloseableKt.a(fileOutputStream, null);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                CloseableKt.a(fileOutputStream, th2);
                throw th3;
            }
        }
    }

    public static final void l(OutputStream outputStream, String text, Charset charset) throws IOException {
        Intrinsics.h(outputStream, "<this>");
        Intrinsics.h(text, "text");
        Intrinsics.h(charset, "charset");
        if (text.length() < 16384) {
            byte[] bytes = text.getBytes(charset);
            Intrinsics.g(bytes, "getBytes(...)");
            outputStream.write(bytes);
            return;
        }
        CharsetEncoder charsetEncoderF = f(charset);
        CharBuffer charBufferAllocate = CharBuffer.allocate(8192);
        Intrinsics.e(charsetEncoderF);
        ByteBuffer byteBufferE = e(8192, charsetEncoderF);
        int i11 = 0;
        int i12 = 0;
        while (i11 < text.length()) {
            int iMin = Math.min(8192 - i12, text.length() - i11);
            int i13 = i11 + iMin;
            char[] cArrArray = charBufferAllocate.array();
            Intrinsics.g(cArrArray, "array(...)");
            text.getChars(i11, i13, cArrArray, i12);
            charBufferAllocate.limit(iMin + i12);
            i12 = 1;
            if (!charsetEncoderF.encode(charBufferAllocate, byteBufferE, i13 == text.length()).isUnderflow()) {
                throw new IllegalStateException("Check failed.");
            }
            outputStream.write(byteBufferE.array(), 0, byteBufferE.position());
            if (charBufferAllocate.position() != charBufferAllocate.limit()) {
                charBufferAllocate.put(0, charBufferAllocate.get());
            } else {
                i12 = 0;
            }
            charBufferAllocate.clear();
            byteBufferE.clear();
            i11 = i13;
        }
    }
}
