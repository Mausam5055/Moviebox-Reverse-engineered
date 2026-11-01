package com.apm.insight.l;

import androidx.annotation.NonNull;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends PrintWriter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MessageDigest f19664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Charset f19665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f19666c;

    public static class a {
        public boolean a(String str) {
            return true;
        }
    }

    public e(@NonNull OutputStream outputStream, MessageDigest messageDigest, a aVar) {
        super(outputStream);
        this.f19665b = null;
        this.f19664a = messageDigest;
        this.f19666c = aVar;
        if (messageDigest != null) {
            this.f19665b = Charset.defaultCharset();
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public final void write(int i11) {
        super.write(i11);
        MessageDigest messageDigest = this.f19664a;
        if (messageDigest != null) {
            messageDigest.update((byte) i11);
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public final void write(@NonNull String str, int i11, int i12) {
        super.write(str, i11, i12);
        if (this.f19664a != null) {
            a aVar = this.f19666c;
            if (aVar == null || aVar.a(str)) {
                this.f19664a.update(this.f19665b.encode(CharBuffer.wrap(str, i11, i12 + i11)).array());
            }
        }
    }

    @Override // java.io.PrintWriter, java.io.Writer
    public final void write(@NonNull char[] cArr, int i11, int i12) {
        super.write(cArr, i11, i12);
        MessageDigest messageDigest = this.f19664a;
        if (messageDigest != null) {
            messageDigest.update(this.f19665b.encode(CharBuffer.wrap(cArr)).array());
        }
    }
}
