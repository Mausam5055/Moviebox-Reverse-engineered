package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.u;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes5.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f38012a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f38013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f38014c;

    public k(u uVar, int i11, String str) {
        this.f38012a = uVar;
        this.f38013b = i11;
        this.f38014c = str;
    }

    public static k a(String str) throws IOException {
        u uVar;
        int i11;
        String strSubstring;
        if (str.startsWith("HTTP/1.")) {
            i11 = 9;
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                uVar = u.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                uVar = u.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            uVar = u.HTTP_1_0;
            i11 = 4;
        }
        int i12 = i11 + 3;
        if (str.length() < i12) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i13 = Integer.parseInt(str.substring(i11, i12));
            if (str.length() <= i12) {
                strSubstring = "";
            } else {
                if (str.charAt(i12) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i11 + 4);
            }
            return new k(uVar, i13, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f38012a == u.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb2.append(' ');
        sb2.append(this.f38013b);
        if (this.f38014c != null) {
            sb2.append(' ');
            sb2.append(this.f38014c);
        }
        return sb2.toString();
    }
}
